// RUN: %target-run-simple-swift(-Xfrontend -enable-experimental-concurrency -Xfrontend -disable-availability-checking %import-libdispatch -parse-as-library) | %FileCheck %s --dump-input always
// REQUIRES: executable_test
// REQUIRES: concurrency

// rdar://76038845
// REQUIRES: concurrency_runtime
// UNSUPPORTED: back_deployment_runtime

import _Concurrency
#if canImport(Dispatch)
// FIXME: should not depend on Dispatch
import Dispatch
#endif

@available(SwiftStdlib 5.5, *)
@main struct Main {
  static let pause = 500_000_000 // 500ms
  
  static func main() async {
    await testSleepDuration()
    await testSleepDoesNotBlock()
  }

  static func testSleepDuration() async {
#if canImport(Dispatch)
    let start = DispatchTime.now()

    await Task.sleep(UInt64(pause))

    let stop = DispatchTime.now()

    // assert that at least the specified time passed since calling `sleep`
    assert(stop >= (start + .nanoseconds(pause)))
#endif
  }

  static func testSleepDoesNotBlock() async {
    // FIXME: Should run on main executor
    let task = detach {
      print("Run first")
    }

    await Task.sleep(UInt64(pause))

    print("Run second")

    // CHECK: Run first
    // CHECK: Run second
    await task.get()
  }
}
