; ModuleID = 'obj\Debug\120\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [246 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 46
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 8
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 36
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 68
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 69
	i64 464346026994987652, ; 5: System.Reactive.dll => 0x671b04057e67284 => 22
	i64 515298607468333944, ; 6: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics => 0x726b55a73674b78 => 108
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 55
	i64 687654259221141486, ; 8: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 97
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 116
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 49
	i64 733635950719068722, ; 11: Plugin.FirebaseAuth => 0xa2e66029d10ea32 => 12
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 45
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 114
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 90
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 121
	i64 1028705939911351305, ; 16: ReactiveProperty.Core.dll => 0xe46b29a1ec01c09 => 14
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 92
	i64 1274338068859211160, ; 18: Xamarin.Grpc.Api => 0x11af5bb8ce1c4d98 => 101
	i64 1305330500145730299, ; 19: Xamarin.Io.OpenCensus.OpenCensusApi.dll => 0x121d772c87ab52fb => 107
	i64 1315114680217950157, ; 20: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 31
	i64 1368633735297491523, ; 21: Xamarin.Firebase.Database.Collection.dll => 0x12fe5d218405e243 => 84
	i64 1392315331768750440, ; 22: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 81
	i64 1425944114962822056, ; 23: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1465843056802068477, ; 24: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 83
	i64 1474586420366808421, ; 25: Xamarin.Grpc.Android.dll => 0x1476c88960941565 => 100
	i64 1491290866305144020, ; 26: Xamarin.Google.AutoValue.Annotations.dll => 0x14b2212446e714d4 => 93
	i64 1624659445732251991, ; 27: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 29
	i64 1628611045998245443, ; 28: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 57
	i64 1636321030536304333, ; 29: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 50
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 30
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 68
	i64 1875917498431009007, ; 32: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 27
	i64 1956817255800234857, ; 33: Xamarin.Grpc.Android => 0x1b2802ed2e53e369 => 100
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 56
	i64 1986553961460820075, ; 35: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 78
	i64 1990714127648872464, ; 36: Xamarin.Grpc.Core.dll => 0x1ba06ff3abdcd810 => 103
	i64 2040001226662520565, ; 37: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 122
	i64 2136356949452311481, ; 38: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 61
	i64 2165725771938924357, ; 39: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 34
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 45
	i64 2284400282711631002, ; 41: System.Web.Services => 0x1fb3d1f42fd4249a => 120
	i64 2287887973817120656, ; 42: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 110
	i64 2288995334025183009, ; 43: EatIt => 0x1fc42520f118ff21 => 5
	i64 2329709569556905518, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 53
	i64 2343783402604882194, ; 45: Xamarin.Grpc.Stub.dll => 0x2086ca9636b86912 => 106
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 40
	i64 2479423007379663237, ; 47: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 73
	i64 2497223385847772520, ; 48: System.Runtime => 0x22a7eb7046413568 => 23
	i64 2541510239043724284, ; 49: ReactiveProperty => 0x23454218cf3823fc => 15
	i64 2547086958574651984, ; 50: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 26
	i64 2592350477072141967, ; 51: System.Xml.dll => 0x23f9e10627330e8f => 24
	i64 2624866290265602282, ; 52: mscorlib.dll => 0x246d65fbde2db8ea => 9
	i64 2694427813909235223, ; 53: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 65
	i64 2801558180824670388, ; 54: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 11
	i64 2837534762945916002, ; 55: ReactiveProperty.Core => 0x2760f2d53f36ac62 => 14
	i64 2951672403965468947, ; 56: Xamarin.Firebase.Database.Collection => 0x28f67269abaf6113 => 84
	i64 2960931600190307745, ; 57: Xamarin.Forms.Core => 0x2917579a49927da1 => 88
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 92
	i64 3171992396844006720, ; 59: Square.OkIO => 0x2c052e476c207d40 => 17
	i64 3289520064315143713, ; 60: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 52
	i64 3303437397778967116, ; 61: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 28
	i64 3311221304742556517, ; 62: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 21
	i64 3364695309916733813, ; 63: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 82
	i64 3411255996856937470, ; 64: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 98
	i64 3493805808809882663, ; 65: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 71
	i64 3522470458906976663, ; 66: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 70
	i64 3531994851595924923, ; 67: System.Numerics => 0x31042a9aade235bb => 20
	i64 3571415421602489686, ; 68: System.Runtime.dll => 0x319037675df7e556 => 23
	i64 3609787854626478660, ; 69: Plugin.CurrentActivity => 0x32188aeda587da44 => 11
	i64 3716579019761409177, ; 70: netstandard.dll => 0x3393f0ed5c8c5c99 => 112
	i64 3727469159507183293, ; 71: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 67
	i64 3772598417116884899, ; 72: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 46
	i64 3805590351893720893, ; 73: Plugin.FirebaseStorage => 0x34d02c431d476f3d => 13
	i64 4045730230152541805, ; 74: Xamarin.Grpc.Protobuf.Lite.dll => 0x38255235894d366d => 105
	i64 4247996603072512073, ; 75: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 99
	i64 4525561845656915374, ; 76: System.ServiceModel.Internals => 0x3ece06856b710dae => 111
	i64 4636684751163556186, ; 77: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 75
	i64 4702770163853758138, ; 78: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 83
	i64 4743821336939966868, ; 79: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 1
	i64 4782108999019072045, ; 80: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 33
	i64 4794310189461587505, ; 81: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 26
	i64 4795410492532947900, ; 82: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 70
	i64 4977709562956556791, ; 83: Xamarin.Io.OpenCensus.OpenCensusApi => 0x45146079771729f7 => 107
	i64 5142919913060024034, ; 84: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 89
	i64 5203618020066742981, ; 85: Xamarin.Essentials => 0x4836f704f0e652c5 => 79
	i64 5205316157927637098, ; 86: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 59
	i64 5290215063822704973, ; 87: Xamarin.Grpc.Stub => 0x496a9e926092a14d => 106
	i64 5348796042099802469, ; 88: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 60
	i64 5376510917114486089, ; 89: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 73
	i64 5408338804355907810, ; 90: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 72
	i64 5427880336170504416, ; 91: Plugin.FirebaseAuth.dll => 0x4b53b46858c550e0 => 12
	i64 5451019430259338467, ; 92: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 39
	i64 5507995362134886206, ; 93: System.Core.dll => 0x4c705499688c873e => 18
	i64 5692067934154308417, ; 94: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 77
	i64 5757522595884336624, ; 95: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 37
	i64 5814345312393086621, ; 96: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 65
	i64 5837276141656118154, ; 97: Plugin.CloudFirestore => 0x51022bb93f46938a => 10
	i64 5896680224035167651, ; 98: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 54
	i64 6085203216496545422, ; 99: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 90
	i64 6086316965293125504, ; 100: FormsViewGroup.dll => 0x5476f10882baef80 => 6
	i64 6135981624229292808, ; 101: Xamarin.Grpc.Api.dll => 0x552762c70482eb08 => 101
	i64 6319713645133255417, ; 102: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 55
	i64 6401687960814735282, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 53
	i64 6403742896930319886, ; 104: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 80
	i64 6504860066809920875, ; 105: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 34
	i64 6548213210057960872, ; 106: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 43
	i64 6591024623626361694, ; 107: System.Web.Services.dll => 0x5b7805f9751a1b5e => 120
	i64 6659513131007730089, ; 108: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 49
	i64 6830730639540541024, ; 109: Plugin.CloudFirestore.dll => 0x5ecba1536e30d660 => 10
	i64 6876862101832370452, ; 110: System.Xml.Linq => 0x5f6f85a57d108914 => 25
	i64 6894844156784520562, ; 111: System.Numerics.Vectors => 0x5faf683aead1ad72 => 21
	i64 7036436454368433159, ; 112: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 51
	i64 7103753931438454322, ; 113: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 48
	i64 7141577505875122296, ; 114: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 2
	i64 7482377913622462223, ; 115: Xamarin.Protobuf.Lite => 0x67d6bf11b0b1ff0f => 109
	i64 7488575175965059935, ; 116: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 25
	i64 7602111570124318452, ; 117: System.Reactive => 0x698020320025a6f4 => 22
	i64 7635363394907363464, ; 118: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 88
	i64 7637365915383206639, ; 119: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 79
	i64 7654504624184590948, ; 120: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7756332380610150586, ; 121: Xamarin.Google.AutoValue.Annotations => 0x6ba407349220c0ba => 93
	i64 7820441508502274321, ; 122: System.Data => 0x6c87ca1e14ff8111 => 113
	i64 7836164640616011524, ; 123: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 29
	i64 7991572870742010042, ; 124: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 85
	i64 8044118961405839122, ; 125: System.ComponentModel.Composition => 0x6fa2739369944712 => 119
	i64 8076806894754251516, ; 126: Square.OkHttp => 0x70169513f940c2fc => 16
	i64 8083354569033831015, ; 127: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 52
	i64 8103644804370223335, ; 128: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 115
	i64 8167236081217502503, ; 129: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 7
	i64 8318905602908530212, ; 130: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 110
	i64 8398329775253868912, ; 131: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 38
	i64 8400357532724379117, ; 132: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 64
	i64 8601935802264776013, ; 133: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 72
	i64 8609060182490045521, ; 134: Square.OkIO.dll => 0x7779869f8b475c51 => 17
	i64 8626175481042262068, ; 135: Java.Interop => 0x77b654e585b55834 => 7
	i64 8639588376636138208, ; 136: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 63
	i64 8684531736582871431, ; 137: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 118
	i64 9113579748781016974, ; 138: Xamarin.Firebase.Storage.dll => 0x7e79f07ee649478e => 87
	i64 9226675035665529780, ; 139: Xamarin.Protobuf.Lite.dll => 0x800bbc0f56cefbb4 => 109
	i64 9312692141327339315, ; 140: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 77
	i64 9324707631942237306, ; 141: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 30
	i64 9662334977499516867, ; 142: System.Numerics.dll => 0x8617827802b0cfc3 => 20
	i64 9678050649315576968, ; 143: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 40
	i64 9711637524876806384, ; 144: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 60
	i64 9808709177481450983, ; 145: Mono.Android.dll => 0x881f890734e555e7 => 8
	i64 9825649861376906464, ; 146: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 37
	i64 9834056768316610435, ; 147: System.Transactions.dll => 0x8879968718899783 => 114
	i64 9875200773399460291, ; 148: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 97
	i64 9998632235833408227, ; 149: Mono.Security => 0x8ac2470b209ebae3 => 121
	i64 10038780035334861115, ; 150: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10229024438826829339, ; 151: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 43
	i64 10376576884623852283, ; 152: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 71
	i64 10430153318873392755, ; 153: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 41
	i64 10847732767863316357, ; 154: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 31
	i64 10857315922431607327, ; 155: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x96acef4e92ba821f => 86
	i64 10950904922014548635, ; 156: ReactiveProperty.dll => 0x97f96e0195c1029b => 15
	i64 10966933586012635777, ; 157: Xamarin.Grpc.OkHttp.dll => 0x98325ffdbd958281 => 104
	i64 11023048688141570732, ; 158: System.Core => 0x98f9bc61168392ac => 18
	i64 11037814507248023548, ; 159: System.Xml => 0x992e31d0412bf7fc => 24
	i64 11122995063473561350, ; 160: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 78
	i64 11162124722117608902, ; 161: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 76
	i64 11340910727871153756, ; 162: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 42
	i64 11392833485892708388, ; 163: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 66
	i64 11496466075493495264, ; 164: Xamarin.Grpc.Context.dll => 0x9f8ba6fc1a1e71e0 => 102
	i64 11529969570048099689, ; 165: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 76
	i64 11543422055205009205, ; 166: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 85
	i64 11578238080964724296, ; 167: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 51
	i64 11580057168383206117, ; 168: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 27
	i64 11597940890313164233, ; 169: netstandard => 0xa0f429ca8d1805c9 => 112
	i64 11672361001936329215, ; 170: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 48
	i64 11902137738784770347, ; 171: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics.dll => 0xa52ce3369409892b => 108
	i64 12115137270583717647, ; 172: EatIt.dll => 0xa8219d28aa3cef0f => 5
	i64 12137774235383566651, ; 173: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 74
	i64 12451044538927396471, ; 174: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 47
	i64 12466513435562512481, ; 175: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 58
	i64 12487638416075308985, ; 176: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 44
	i64 12538491095302438457, ; 177: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 35
	i64 12550732019250633519, ; 178: System.IO.Compression => 0xae2d28465e8e1b2f => 117
	i64 12700543734426720211, ; 179: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 36
	i64 12740980283613343379, ; 180: EatIt.Android.dll => 0xb0d10e1037076e93 => 0
	i64 12963446364377008305, ; 181: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 116
	i64 13084382143907087733, ; 182: Xamarin.Grpc.Context => 0xb595103c610bc575 => 102
	i64 13370592475155966277, ; 183: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13401370062847626945, ; 184: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 74
	i64 13402939433517888790, ; 185: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 95
	i64 13404347523447273790, ; 186: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 38
	i64 13454009404024712428, ; 187: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 96
	i64 13491513212026656886, ; 188: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 32
	i64 13572454107664307259, ; 189: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 67
	i64 13609095008681508810, ; 190: Xamarin.Grpc.Protobuf.Lite => 0xbcdd37ce6b00bfca => 105
	i64 13647894001087880694, ; 191: System.Data.dll => 0xbd670f48cb071df6 => 113
	i64 13689508124566831556, ; 192: Square.OkHttp.dll => 0xbdfae71bf2a141c4 => 16
	i64 13761131323945450492, ; 193: Xamarin.Firebase.Storage => 0xbef95c078f44fbfc => 87
	i64 13865727802090930648, ; 194: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 94
	i64 13959074834287824816, ; 195: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 47
	i64 13967638549803255703, ; 196: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 89
	i64 13975254687929967048, ; 197: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 94
	i64 14124974489674258913, ; 198: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 35
	i64 14165531176311179688, ; 199: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 80
	i64 14172845254133543601, ; 200: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 61
	i64 14261073672896646636, ; 201: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 66
	i64 14382082037123372364, ; 202: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 81
	i64 14486659737292545672, ; 203: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 54
	i64 14644440854989303794, ; 204: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 59
	i64 14671188939680189912, ; 205: Xamarin.Grpc.Core => 0xcb9a889bfe470dd8 => 103
	i64 14789919016435397935, ; 206: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 82
	i64 14792063746108907174, ; 207: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 96
	i64 14852515768018889994, ; 208: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 42
	i64 14987728460634540364, ; 209: System.IO.Compression.dll => 0xcfff1ba06622494c => 117
	i64 14988210264188246988, ; 210: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 44
	i64 15370334346939861994, ; 211: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 41
	i64 15582737692548360875, ; 212: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 57
	i64 15609085926864131306, ; 213: System.dll => 0xd89e9cf3334914ea => 19
	i64 15777549416145007739, ; 214: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 69
	i64 15788897513097211459, ; 215: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xdb1d6ea28f352e43 => 86
	i64 15810740023422282496, ; 216: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 91
	i64 15930129725311349754, ; 217: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 99
	i64 15963349826457351533, ; 218: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 122
	i64 16154507427712707110, ; 219: System => 0xe03056ea4e39aa26 => 19
	i64 16303230644352379770, ; 220: Xamarin.Grpc.OkHttp => 0xe240b5e48fe2eb7a => 104
	i64 16565028646146589191, ; 221: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 119
	i64 16579050217386591297, ; 222: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 95
	i64 16621146507174665210, ; 223: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 39
	i64 16677317093839702854, ; 224: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 64
	i64 16822611501064131242, ; 225: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 115
	i64 16833383113903931215, ; 226: mscorlib => 0xe99c30c1484d7f4f => 9
	i64 16866861824412579935, ; 227: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 2
	i64 17024911836938395553, ; 228: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 28
	i64 17031351772568316411, ; 229: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 62
	i64 17037200463775726619, ; 230: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 50
	i64 17187273293601214786, ; 231: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 1
	i64 17334808277409262987, ; 232: EatIt.Android => 0xf0919c48d87aed8b => 0
	i64 17544493274320527064, ; 233: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 33
	i64 17704177640604968747, ; 234: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 58
	i64 17710060891934109755, ; 235: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 56
	i64 17805132529253836614, ; 236: Plugin.FirebaseStorage.dll => 0xf71889b320ed6746 => 13
	i64 17882897186074144999, ; 237: FormsViewGroup => 0xf82cd03e3ac830e7 => 6
	i64 17892495832318972303, ; 238: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 91
	i64 17928294245072900555, ; 239: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 118
	i64 17986907704309214542, ; 240: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 98
	i64 18116111925905154859, ; 241: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 32
	i64 18121036031235206392, ; 242: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 62
	i64 18129453464017766560, ; 243: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 111
	i64 18305135509493619199, ; 244: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 63
	i64 18380184030268848184 ; 245: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 75
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [246 x i32] [
	i32 46, i32 8, i32 36, i32 68, i32 69, i32 22, i32 108, i32 55, ; 0..7
	i32 97, i32 116, i32 49, i32 12, i32 45, i32 114, i32 90, i32 121, ; 8..15
	i32 14, i32 92, i32 101, i32 107, i32 31, i32 84, i32 81, i32 4, ; 16..23
	i32 83, i32 100, i32 93, i32 29, i32 57, i32 50, i32 30, i32 68, ; 24..31
	i32 27, i32 100, i32 56, i32 78, i32 103, i32 122, i32 61, i32 34, ; 32..39
	i32 45, i32 120, i32 110, i32 5, i32 53, i32 106, i32 40, i32 73, ; 40..47
	i32 23, i32 15, i32 26, i32 24, i32 9, i32 65, i32 11, i32 14, ; 48..55
	i32 84, i32 88, i32 92, i32 17, i32 52, i32 28, i32 21, i32 82, ; 56..63
	i32 98, i32 71, i32 70, i32 20, i32 23, i32 11, i32 112, i32 67, ; 64..71
	i32 46, i32 13, i32 105, i32 99, i32 111, i32 75, i32 83, i32 1, ; 72..79
	i32 33, i32 26, i32 70, i32 107, i32 89, i32 79, i32 59, i32 106, ; 80..87
	i32 60, i32 73, i32 72, i32 12, i32 39, i32 18, i32 77, i32 37, ; 88..95
	i32 65, i32 10, i32 54, i32 90, i32 6, i32 101, i32 55, i32 53, ; 96..103
	i32 80, i32 34, i32 43, i32 120, i32 49, i32 10, i32 25, i32 21, ; 104..111
	i32 51, i32 48, i32 2, i32 109, i32 25, i32 22, i32 88, i32 79, ; 112..119
	i32 3, i32 93, i32 113, i32 29, i32 85, i32 119, i32 16, i32 52, ; 120..127
	i32 115, i32 7, i32 110, i32 38, i32 64, i32 72, i32 17, i32 7, ; 128..135
	i32 63, i32 118, i32 87, i32 109, i32 77, i32 30, i32 20, i32 40, ; 136..143
	i32 60, i32 8, i32 37, i32 114, i32 97, i32 121, i32 3, i32 43, ; 144..151
	i32 71, i32 41, i32 31, i32 86, i32 15, i32 104, i32 18, i32 24, ; 152..159
	i32 78, i32 76, i32 42, i32 66, i32 102, i32 76, i32 85, i32 51, ; 160..167
	i32 27, i32 112, i32 48, i32 108, i32 5, i32 74, i32 47, i32 58, ; 168..175
	i32 44, i32 35, i32 117, i32 36, i32 0, i32 116, i32 102, i32 4, ; 176..183
	i32 74, i32 95, i32 38, i32 96, i32 32, i32 67, i32 105, i32 113, ; 184..191
	i32 16, i32 87, i32 94, i32 47, i32 89, i32 94, i32 35, i32 80, ; 192..199
	i32 61, i32 66, i32 81, i32 54, i32 59, i32 103, i32 82, i32 96, ; 200..207
	i32 42, i32 117, i32 44, i32 41, i32 57, i32 19, i32 69, i32 86, ; 208..215
	i32 91, i32 99, i32 122, i32 19, i32 104, i32 119, i32 95, i32 39, ; 216..223
	i32 64, i32 115, i32 9, i32 2, i32 28, i32 62, i32 50, i32 1, ; 224..231
	i32 0, i32 33, i32 58, i32 56, i32 13, i32 6, i32 91, i32 118, ; 232..239
	i32 98, i32 32, i32 62, i32 111, i32 63, i32 75 ; 240..245
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
