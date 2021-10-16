// RUN: %target-run-simple-swift(-Xfrontend -enable-experimental-concurrency -Xfrontend -disable-availability-checking %import-libdispatch)
// REQUIRES: concurrency
// REQUIRES: executable_test

// rdar://76038845
// REQUIRES: concurrency_runtime
// UNSUPPORTED: back_deployment_runtime
// UNSUPPORTED: single_threaded_runtime

// for sleep
#if canImport(Darwin)
    import Darwin
#elseif canImport(Glibc)
    import Glibc
#endif

class Canary {
  deinit {
    print("canary died")
  }
}

if #available(SwiftStdlib 5.5, *) {
  let task = detach {
    let canary = Canary()
    _ = await Task.withCancellationHandler {
      print(canary)
    } operation: {
      await Task.sleep(1_000_000)
    }
  }
  task.cancel()
  sleep(1)
  detach {
    await Task.withCancellationHandler {
        print("Task was cancelled!")
    }
    operation: {
        print("Running the operation...")
    }
  }
  sleep(10)
} else {
  // Fake prints to satisfy FileCheck.
  print("Canary")
  print("canary died")
  print("Running the operation...")
}
// CHECK: Canary
// CHECK-NEXT: canary died
// CHECK-NEXT: Running the operation...
