// RUN: %target-run-simple-swift
// REQUIRES: executable_test
// REQUIRES: rdar82364236

import StdlibUnittest
import SwiftPrivateThreadExtras

protocol P {}
class GenericWrapper<T: P> {}

let ConcurrentTypeByNameTests = TestSuite("ConcurrentTypeByName")

// We're testing for a race in looking up types by name, when there's a protocol
// constraint on a generic argument, and that constraint is fulfilled by a
// superclass. This race is more easily exposed when the superclass's metadata
// takes a long time to fill out, so we make it have a ton of properties here.
class Super<T>: P {
  var val0: T?
  var val1: T?
  var val2: T?
  var val3: T?
  var val4: T?
  var val5: T?
  var val6: T?
  var val7: T?
  var val8: T?
  var val9: T?
  var val10: T?
  var val11: T?
  var val12: T?
  var val13: T?
  var val14: T?
  var val15: T?
  var val16: T?
  var val17: T?
  var val18: T?
  var val19: T?
  var val20: T?
  var val21: T?
  var val22: T?
  var val23: T?
  var val24: T?
  var val25: T?
  var val26: T?
  var val27: T?
  var val28: T?
  var val29: T?
  var val30: T?
  var val31: T?
  var val32: T?
  var val33: T?
  var val34: T?
  var val35: T?
  var val36: T?
  var val37: T?
  var val38: T?
  var val39: T?
  var val40: T?
  var val41: T?
  var val42: T?
  var val43: T?
  var val44: T?
  var val45: T?
  var val46: T?
  var val47: T?
  var val48: T?
  var val49: T?
  var val50: T?
  var val51: T?
  var val52: T?
  var val53: T?
  var val54: T?
  var val55: T?
  var val56: T?
  var val57: T?
  var val58: T?
  var val59: T?
  var val60: T?
  var val61: T?
  var val62: T?
  var val63: T?
  var val64: T?
  var val65: T?
  var val66: T?
  var val67: T?
  var val68: T?
  var val69: T?
  var val70: T?
  var val71: T?
  var val72: T?
  var val73: T?
  var val74: T?
  var val75: T?
  var val76: T?
  var val77: T?
  var val78: T?
  var val79: T?
  var val80: T?
  var val81: T?
  var val82: T?
  var val83: T?
  var val84: T?
  var val85: T?
  var val86: T?
  var val87: T?
  var val88: T?
  var val89: T?
  var val90: T?
  var val91: T?
  var val92: T?
  var val93: T?
  var val94: T?
  var val95: T?
  var val96: T?
  var val97: T?
  var val98: T?
  var val99: T?
  var val100: T?
  var val101: T?
  var val102: T?
  var val103: T?
  var val104: T?
  var val105: T?
  var val106: T?
  var val107: T?
  var val108: T?
  var val109: T?
  var val110: T?
  var val111: T?
  var val112: T?
  var val113: T?
  var val114: T?
  var val115: T?
  var val116: T?
  var val117: T?
  var val118: T?
  var val119: T?
  var val120: T?
  var val121: T?
  var val122: T?
  var val123: T?
  var val124: T?
  var val125: T?
  var val126: T?
  var val127: T?
  var val128: T?
  var val129: T?
  var val130: T?
  var val131: T?
  var val132: T?
  var val133: T?
  var val134: T?
  var val135: T?
  var val136: T?
  var val137: T?
  var val138: T?
  var val139: T?
  var val140: T?
  var val141: T?
  var val142: T?
  var val143: T?
  var val144: T?
  var val145: T?
  var val146: T?
  var val147: T?
  var val148: T?
  var val149: T?
  var val150: T?
  var val151: T?
  var val152: T?
  var val153: T?
  var val154: T?
  var val155: T?
  var val156: T?
  var val157: T?
  var val158: T?
  var val159: T?
  var val160: T?
  var val161: T?
  var val162: T?
  var val163: T?
  var val164: T?
  var val165: T?
  var val166: T?
  var val167: T?
  var val168: T?
  var val169: T?
  var val170: T?
  var val171: T?
  var val172: T?
  var val173: T?
  var val174: T?
  var val175: T?
  var val176: T?
  var val177: T?
  var val178: T?
  var val179: T?
  var val180: T?
  var val181: T?
  var val182: T?
  var val183: T?
  var val184: T?
  var val185: T?
  var val186: T?
  var val187: T?
  var val188: T?
  var val189: T?
  var val190: T?
  var val191: T?
  var val192: T?
  var val193: T?
  var val194: T?
  var val195: T?
  var val196: T?
  var val197: T?
  var val198: T?
  var val199: T?
  var val200: T?
  var val201: T?
  var val202: T?
  var val203: T?
  var val204: T?
  var val205: T?
  var val206: T?
  var val207: T?
  var val208: T?
  var val209: T?
  var val210: T?
  var val211: T?
  var val212: T?
  var val213: T?
  var val214: T?
  var val215: T?
  var val216: T?
  var val217: T?
  var val218: T?
  var val219: T?
  var val220: T?
  var val221: T?
  var val222: T?
  var val223: T?
  var val224: T?
  var val225: T?
  var val226: T?
  var val227: T?
  var val228: T?
  var val229: T?
  var val230: T?
  var val231: T?
  var val232: T?
  var val233: T?
  var val234: T?
  var val235: T?
  var val236: T?
  var val237: T?
  var val238: T?
  var val239: T?
  var val240: T?
  var val241: T?
  var val242: T?
  var val243: T?
  var val244: T?
  var val245: T?
  var val246: T?
  var val247: T?
  var val248: T?
  var val249: T?
  var val250: T?
  var val251: T?
  var val252: T?
  var val253: T?
  var val254: T?
  var val255: T?
  var val256: T?
  var val257: T?
  var val258: T?
  var val259: T?
  var val260: T?
  var val261: T?
  var val262: T?
  var val263: T?
  var val264: T?
  var val265: T?
  var val266: T?
  var val267: T?
  var val268: T?
  var val269: T?
  var val270: T?
  var val271: T?
  var val272: T?
  var val273: T?
  var val274: T?
  var val275: T?
  var val276: T?
  var val277: T?
  var val278: T?
  var val279: T?
  var val280: T?
  var val281: T?
  var val282: T?
  var val283: T?
  var val284: T?
  var val285: T?
  var val286: T?
  var val287: T?
  var val288: T?
  var val289: T?
  var val290: T?
  var val291: T?
  var val292: T?
  var val293: T?
  var val294: T?
  var val295: T?
  var val296: T?
  var val297: T?
  var val298: T?
  var val299: T?
  var val300: T?
  var val301: T?
  var val302: T?
  var val303: T?
  var val304: T?
  var val305: T?
  var val306: T?
  var val307: T?
  var val308: T?
  var val309: T?
  var val310: T?
  var val311: T?
  var val312: T?
  var val313: T?
  var val314: T?
  var val315: T?
  var val316: T?
  var val317: T?
  var val318: T?
  var val319: T?
  var val320: T?
  var val321: T?
  var val322: T?
  var val323: T?
  var val324: T?
  var val325: T?
  var val326: T?
  var val327: T?
  var val328: T?
  var val329: T?
  var val330: T?
  var val331: T?
  var val332: T?
  var val333: T?
  var val334: T?
  var val335: T?
  var val336: T?
  var val337: T?
  var val338: T?
  var val339: T?
  var val340: T?
  var val341: T?
  var val342: T?
  var val343: T?
  var val344: T?
  var val345: T?
  var val346: T?
  var val347: T?
  var val348: T?
  var val349: T?
  var val350: T?
  var val351: T?
  var val352: T?
  var val353: T?
  var val354: T?
  var val355: T?
  var val356: T?
  var val357: T?
  var val358: T?
  var val359: T?
  var val360: T?
  var val361: T?
  var val362: T?
  var val363: T?
  var val364: T?
  var val365: T?
  var val366: T?
  var val367: T?
  var val368: T?
  var val369: T?
  var val370: T?
  var val371: T?
  var val372: T?
  var val373: T?
  var val374: T?
  var val375: T?
  var val376: T?
  var val377: T?
  var val378: T?
  var val379: T?
  var val380: T?
  var val381: T?
  var val382: T?
  var val383: T?
  var val384: T?
  var val385: T?
  var val386: T?
  var val387: T?
  var val388: T?
  var val389: T?
  var val390: T?
  var val391: T?
  var val392: T?
  var val393: T?
  var val394: T?
  var val395: T?
  var val396: T?
  var val397: T?
  var val398: T?
  var val399: T?
  var val400: T?
  var val401: T?
  var val402: T?
  var val403: T?
  var val404: T?
  var val405: T?
  var val406: T?
  var val407: T?
  var val408: T?
  var val409: T?
  var val410: T?
  var val411: T?
  var val412: T?
  var val413: T?
  var val414: T?
  var val415: T?
  var val416: T?
  var val417: T?
  var val418: T?
  var val419: T?
  var val420: T?
  var val421: T?
  var val422: T?
  var val423: T?
  var val424: T?
  var val425: T?
  var val426: T?
  var val427: T?
  var val428: T?
  var val429: T?
  var val430: T?
  var val431: T?
  var val432: T?
  var val433: T?
  var val434: T?
  var val435: T?
  var val436: T?
  var val437: T?
  var val438: T?
  var val439: T?
  var val440: T?
  var val441: T?
  var val442: T?
  var val443: T?
  var val444: T?
  var val445: T?
  var val446: T?
  var val447: T?
  var val448: T?
  var val449: T?
  var val450: T?
  var val451: T?
  var val452: T?
  var val453: T?
  var val454: T?
  var val455: T?
  var val456: T?
  var val457: T?
  var val458: T?
  var val459: T?
  var val460: T?
  var val461: T?
  var val462: T?
  var val463: T?
  var val464: T?
  var val465: T?
  var val466: T?
  var val467: T?
  var val468: T?
  var val469: T?
  var val470: T?
  var val471: T?
  var val472: T?
  var val473: T?
  var val474: T?
  var val475: T?
  var val476: T?
  var val477: T?
  var val478: T?
  var val479: T?
  var val480: T?
  var val481: T?
  var val482: T?
  var val483: T?
  var val484: T?
  var val485: T?
  var val486: T?
  var val487: T?
  var val488: T?
  var val489: T?
  var val490: T?
  var val491: T?
  var val492: T?
  var val493: T?
  var val494: T?
  var val495: T?
  var val496: T?
  var val497: T?
  var val498: T?
  var val499: T?
  var val500: T?
  var val501: T?
  var val502: T?
  var val503: T?
  var val504: T?
  var val505: T?
  var val506: T?
  var val507: T?
  var val508: T?
  var val509: T?
  var val510: T?
  var val511: T?
  var val512: T?
  var val513: T?
  var val514: T?
  var val515: T?
  var val516: T?
  var val517: T?
  var val518: T?
  var val519: T?
  var val520: T?
  var val521: T?
  var val522: T?
  var val523: T?
  var val524: T?
  var val525: T?
  var val526: T?
  var val527: T?
  var val528: T?
  var val529: T?
  var val530: T?
  var val531: T?
  var val532: T?
  var val533: T?
  var val534: T?
  var val535: T?
  var val536: T?
  var val537: T?
  var val538: T?
  var val539: T?
  var val540: T?
  var val541: T?
  var val542: T?
  var val543: T?
  var val544: T?
  var val545: T?
  var val546: T?
  var val547: T?
  var val548: T?
  var val549: T?
  var val550: T?
  var val551: T?
  var val552: T?
  var val553: T?
  var val554: T?
  var val555: T?
  var val556: T?
  var val557: T?
  var val558: T?
  var val559: T?
  var val560: T?
  var val561: T?
  var val562: T?
  var val563: T?
  var val564: T?
  var val565: T?
  var val566: T?
  var val567: T?
  var val568: T?
  var val569: T?
  var val570: T?
  var val571: T?
  var val572: T?
  var val573: T?
  var val574: T?
  var val575: T?
  var val576: T?
  var val577: T?
  var val578: T?
  var val579: T?
  var val580: T?
  var val581: T?
  var val582: T?
  var val583: T?
  var val584: T?
  var val585: T?
  var val586: T?
  var val587: T?
  var val588: T?
  var val589: T?
  var val590: T?
  var val591: T?
  var val592: T?
  var val593: T?
  var val594: T?
  var val595: T?
  var val596: T?
  var val597: T?
  var val598: T?
  var val599: T?
  var val600: T?
  var val601: T?
  var val602: T?
  var val603: T?
  var val604: T?
  var val605: T?
  var val606: T?
  var val607: T?
  var val608: T?
  var val609: T?
  var val610: T?
  var val611: T?
  var val612: T?
  var val613: T?
  var val614: T?
  var val615: T?
  var val616: T?
  var val617: T?
  var val618: T?
  var val619: T?
  var val620: T?
  var val621: T?
  var val622: T?
  var val623: T?
  var val624: T?
  var val625: T?
  var val626: T?
  var val627: T?
  var val628: T?
  var val629: T?
  var val630: T?
  var val631: T?
  var val632: T?
  var val633: T?
  var val634: T?
  var val635: T?
  var val636: T?
  var val637: T?
  var val638: T?
  var val639: T?
  var val640: T?
  var val641: T?
  var val642: T?
  var val643: T?
  var val644: T?
  var val645: T?
  var val646: T?
  var val647: T?
  var val648: T?
  var val649: T?
  var val650: T?
  var val651: T?
  var val652: T?
  var val653: T?
  var val654: T?
  var val655: T?
  var val656: T?
  var val657: T?
  var val658: T?
  var val659: T?
  var val660: T?
  var val661: T?
  var val662: T?
  var val663: T?
  var val664: T?
  var val665: T?
  var val666: T?
  var val667: T?
  var val668: T?
  var val669: T?
  var val670: T?
  var val671: T?
  var val672: T?
  var val673: T?
  var val674: T?
  var val675: T?
  var val676: T?
  var val677: T?
  var val678: T?
  var val679: T?
  var val680: T?
  var val681: T?
  var val682: T?
  var val683: T?
  var val684: T?
  var val685: T?
  var val686: T?
  var val687: T?
  var val688: T?
  var val689: T?
  var val690: T?
  var val691: T?
  var val692: T?
  var val693: T?
  var val694: T?
  var val695: T?
  var val696: T?
  var val697: T?
  var val698: T?
  var val699: T?
  var val700: T?
  var val701: T?
  var val702: T?
  var val703: T?
  var val704: T?
  var val705: T?
  var val706: T?
  var val707: T?
  var val708: T?
  var val709: T?
  var val710: T?
  var val711: T?
  var val712: T?
  var val713: T?
  var val714: T?
  var val715: T?
  var val716: T?
  var val717: T?
  var val718: T?
  var val719: T?
  var val720: T?
  var val721: T?
  var val722: T?
  var val723: T?
  var val724: T?
  var val725: T?
  var val726: T?
  var val727: T?
  var val728: T?
  var val729: T?
  var val730: T?
  var val731: T?
  var val732: T?
  var val733: T?
  var val734: T?
  var val735: T?
  var val736: T?
  var val737: T?
  var val738: T?
  var val739: T?
  var val740: T?
  var val741: T?
  var val742: T?
  var val743: T?
  var val744: T?
  var val745: T?
  var val746: T?
  var val747: T?
  var val748: T?
  var val749: T?
  var val750: T?
  var val751: T?
  var val752: T?
  var val753: T?
  var val754: T?
  var val755: T?
  var val756: T?
  var val757: T?
  var val758: T?
  var val759: T?
  var val760: T?
  var val761: T?
  var val762: T?
  var val763: T?
  var val764: T?
  var val765: T?
  var val766: T?
  var val767: T?
  var val768: T?
  var val769: T?
  var val770: T?
  var val771: T?
  var val772: T?
  var val773: T?
  var val774: T?
  var val775: T?
  var val776: T?
  var val777: T?
  var val778: T?
  var val779: T?
  var val780: T?
  var val781: T?
  var val782: T?
  var val783: T?
  var val784: T?
  var val785: T?
  var val786: T?
  var val787: T?
  var val788: T?
  var val789: T?
  var val790: T?
  var val791: T?
  var val792: T?
  var val793: T?
  var val794: T?
  var val795: T?
  var val796: T?
  var val797: T?
  var val798: T?
  var val799: T?
  var val800: T?
  var val801: T?
  var val802: T?
  var val803: T?
  var val804: T?
  var val805: T?
  var val806: T?
  var val807: T?
  var val808: T?
  var val809: T?
  var val810: T?
  var val811: T?
  var val812: T?
  var val813: T?
  var val814: T?
  var val815: T?
  var val816: T?
  var val817: T?
  var val818: T?
  var val819: T?
  var val820: T?
  var val821: T?
  var val822: T?
  var val823: T?
  var val824: T?
  var val825: T?
  var val826: T?
  var val827: T?
  var val828: T?
  var val829: T?
  var val830: T?
  var val831: T?
  var val832: T?
  var val833: T?
  var val834: T?
  var val835: T?
  var val836: T?
  var val837: T?
  var val838: T?
  var val839: T?
  var val840: T?
  var val841: T?
  var val842: T?
  var val843: T?
  var val844: T?
  var val845: T?
  var val846: T?
  var val847: T?
  var val848: T?
  var val849: T?
  var val850: T?
  var val851: T?
  var val852: T?
  var val853: T?
  var val854: T?
  var val855: T?
  var val856: T?
  var val857: T?
  var val858: T?
  var val859: T?
  var val860: T?
  var val861: T?
  var val862: T?
  var val863: T?
  var val864: T?
  var val865: T?
  var val866: T?
  var val867: T?
  var val868: T?
  var val869: T?
  var val870: T?
  var val871: T?
  var val872: T?
  var val873: T?
  var val874: T?
  var val875: T?
  var val876: T?
  var val877: T?
  var val878: T?
  var val879: T?
  var val880: T?
  var val881: T?
  var val882: T?
  var val883: T?
  var val884: T?
  var val885: T?
  var val886: T?
  var val887: T?
  var val888: T?
  var val889: T?
  var val890: T?
  var val891: T?
  var val892: T?
  var val893: T?
  var val894: T?
  var val895: T?
  var val896: T?
  var val897: T?
  var val898: T?
  var val899: T?
  var val900: T?
  var val901: T?
  var val902: T?
  var val903: T?
  var val904: T?
  var val905: T?
  var val906: T?
  var val907: T?
  var val908: T?
  var val909: T?
  var val910: T?
  var val911: T?
  var val912: T?
  var val913: T?
  var val914: T?
  var val915: T?
  var val916: T?
  var val917: T?
  var val918: T?
  var val919: T?
  var val920: T?
  var val921: T?
  var val922: T?
  var val923: T?
  var val924: T?
  var val925: T?
  var val926: T?
  var val927: T?
  var val928: T?
  var val929: T?
  var val930: T?
  var val931: T?
  var val932: T?
  var val933: T?
  var val934: T?
  var val935: T?
  var val936: T?
  var val937: T?
  var val938: T?
  var val939: T?
  var val940: T?
  var val941: T?
  var val942: T?
  var val943: T?
  var val944: T?
  var val945: T?
  var val946: T?
  var val947: T?
  var val948: T?
  var val949: T?
  var val950: T?
  var val951: T?
  var val952: T?
  var val953: T?
  var val954: T?
  var val955: T?
  var val956: T?
  var val957: T?
  var val958: T?
  var val959: T?
  var val960: T?
  var val961: T?
  var val962: T?
  var val963: T?
  var val964: T?
  var val965: T?
  var val966: T?
  var val967: T?
  var val968: T?
  var val969: T?
  var val970: T?
  var val971: T?
  var val972: T?
  var val973: T?
  var val974: T?
  var val975: T?
  var val976: T?
  var val977: T?
  var val978: T?
  var val979: T?
  var val980: T?
  var val981: T?
  var val982: T?
  var val983: T?
  var val984: T?
  var val985: T?
  var val986: T?
  var val987: T?
  var val988: T?
  var val989: T?
  var val990: T?
  var val991: T?
  var val992: T?
  var val993: T?
  var val994: T?
  var val995: T?
  var val996: T?
  var val997: T?
  var val998: T?
  var val999: T?
  var val1000: T?
  var val1001: T?
  var val1002: T?
  var val1003: T?
  var val1004: T?
  var val1005: T?
  var val1006: T?
  var val1007: T?
  var val1008: T?
  var val1009: T?
  var val1010: T?
  var val1011: T?
  var val1012: T?
  var val1013: T?
  var val1014: T?
  var val1015: T?
  var val1016: T?
  var val1017: T?
  var val1018: T?
  var val1019: T?
  var val1020: T?
  var val1021: T?
  var val1022: T?
  var val1023: T?
}
class Sub: Super<Int> {}

ConcurrentTypeByNameTests.test("concurrent _typeByName") {
  if #available(SwiftStdlib 5.5, *) {
    func printTypeByName() {
      print(_typeByName("4main14GenericWrapperCyAA3SubCG")! as Any)
    }

    let (createRet1, tid1) = _stdlib_thread_create_block(printTypeByName, ())
    let (createRet2, tid2) = _stdlib_thread_create_block(printTypeByName, ())
    expectEqual(0, createRet1)
    expectEqual(0, createRet2)
    _ = _stdlib_thread_join(tid1!, Void.self)
    _ = _stdlib_thread_join(tid2!, Void.self)
  }
}

runAllTests()
