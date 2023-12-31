; ModuleID = 'obj\Release\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [148 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 6
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 25
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 38
	i64 464346026994987652, ; 3: System.Reactive.dll => 0x671b04057e67284 => 19
	i64 515298607468333944, ; 4: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics => 0x726b55a73674b78 => 67
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 71
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 32
	i64 733635950719068722, ; 7: Plugin.FirebaseAuth => 0xa2e66029d10ea32 => 10
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 30
	i64 996343623809489702, ; 9: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 50
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 72
	i64 1028705939911351305, ; 11: ReactiveProperty.Core.dll => 0xe46b29a1ec01c09 => 12
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 52
	i64 1274338068859211160, ; 13: Xamarin.Grpc.Api => 0x11af5bb8ce1c4d98 => 60
	i64 1305330500145730299, ; 14: Xamarin.Io.OpenCensus.OpenCensusApi.dll => 0x121d772c87ab52fb => 66
	i64 1392315331768750440, ; 15: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 44
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1474586420366808421, ; 17: Xamarin.Grpc.Android.dll => 0x1476c88960941565 => 59
	i64 1491290866305144020, ; 18: Xamarin.Google.AutoValue.Annotations.dll => 0x14b2212446e714d4 => 53
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 22
	i64 1795316252682057001, ; 20: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 23
	i64 1836611346387731153, ; 21: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 38
	i64 1956817255800234857, ; 22: Xamarin.Grpc.Android => 0x1b2802ed2e53e369 => 59
	i64 1981742497975770890, ; 23: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 35
	i64 1986553961460820075, ; 24: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 41
	i64 1990714127648872464, ; 25: Xamarin.Grpc.Core.dll => 0x1ba06ff3abdcd810 => 62
	i64 2040001226662520565, ; 26: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 73
	i64 2262844636196693701, ; 27: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 30
	i64 2287887973817120656, ; 28: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 69
	i64 2288995334025183009, ; 29: EatIt => 0x1fc42520f118ff21 => 3
	i64 2329709569556905518, ; 30: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 34
	i64 2343783402604882194, ; 31: Xamarin.Grpc.Stub.dll => 0x2086ca9636b86912 => 65
	i64 2470498323731680442, ; 32: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 26
	i64 2541510239043724284, ; 33: ReactiveProperty => 0x23454218cf3823fc => 13
	i64 2547086958574651984, ; 34: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 21
	i64 2592350477072141967, ; 35: System.Xml.dll => 0x23f9e10627330e8f => 20
	i64 2624866290265602282, ; 36: mscorlib.dll => 0x246d65fbde2db8ea => 7
	i64 2801558180824670388, ; 37: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 9
	i64 2837534762945916002, ; 38: ReactiveProperty.Core => 0x2760f2d53f36ac62 => 12
	i64 2960931600190307745, ; 39: Xamarin.Forms.Core => 0x2917579a49927da1 => 48
	i64 3017704767998173186, ; 40: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 52
	i64 3171992396844006720, ; 41: Square.OkIO => 0x2c052e476c207d40 => 15
	i64 3289520064315143713, ; 42: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 33
	i64 3364695309916733813, ; 43: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 45
	i64 3411255996856937470, ; 44: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 57
	i64 3522470458906976663, ; 45: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 39
	i64 3531994851595924923, ; 46: System.Numerics => 0x31042a9aade235bb => 18
	i64 3609787854626478660, ; 47: Plugin.CurrentActivity => 0x32188aeda587da44 => 9
	i64 3727469159507183293, ; 48: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 37
	i64 3805590351893720893, ; 49: Plugin.FirebaseStorage => 0x34d02c431d476f3d => 11
	i64 4045730230152541805, ; 50: Xamarin.Grpc.Protobuf.Lite.dll => 0x38255235894d366d => 64
	i64 4247996603072512073, ; 51: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 58
	i64 4525561845656915374, ; 52: System.ServiceModel.Internals => 0x3ece06856b710dae => 70
	i64 4794310189461587505, ; 53: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 21
	i64 4795410492532947900, ; 54: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 39
	i64 4977709562956556791, ; 55: Xamarin.Io.OpenCensus.OpenCensusApi => 0x45146079771729f7 => 66
	i64 5142919913060024034, ; 56: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 49
	i64 5203618020066742981, ; 57: Xamarin.Essentials => 0x4836f704f0e652c5 => 42
	i64 5290215063822704973, ; 58: Xamarin.Grpc.Stub => 0x496a9e926092a14d => 65
	i64 5427880336170504416, ; 59: Plugin.FirebaseAuth.dll => 0x4b53b46858c550e0 => 10
	i64 5507995362134886206, ; 60: System.Core.dll => 0x4c705499688c873e => 16
	i64 5837276141656118154, ; 61: Plugin.CloudFirestore => 0x51022bb93f46938a => 8
	i64 6085203216496545422, ; 62: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 50
	i64 6086316965293125504, ; 63: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6135981624229292808, ; 64: Xamarin.Grpc.Api.dll => 0x552762c70482eb08 => 60
	i64 6401687960814735282, ; 65: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 34
	i64 6403742896930319886, ; 66: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 43
	i64 6548213210057960872, ; 67: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 29
	i64 6659513131007730089, ; 68: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 32
	i64 6830730639540541024, ; 69: Plugin.CloudFirestore.dll => 0x5ecba1536e30d660 => 8
	i64 7482377913622462223, ; 70: Xamarin.Protobuf.Lite => 0x67d6bf11b0b1ff0f => 68
	i64 7602111570124318452, ; 71: System.Reactive => 0x698020320025a6f4 => 19
	i64 7635363394907363464, ; 72: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 48
	i64 7637365915383206639, ; 73: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 42
	i64 7654504624184590948, ; 74: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7756332380610150586, ; 75: Xamarin.Google.AutoValue.Annotations => 0x6ba407349220c0ba => 53
	i64 7836164640616011524, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 22
	i64 7991572870742010042, ; 77: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 46
	i64 8076806894754251516, ; 78: Square.OkHttp => 0x70169513f940c2fc => 14
	i64 8083354569033831015, ; 79: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 33
	i64 8167236081217502503, ; 80: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8318905602908530212, ; 81: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 69
	i64 8609060182490045521, ; 82: Square.OkIO.dll => 0x7779869f8b475c51 => 15
	i64 8626175481042262068, ; 83: Java.Interop => 0x77b654e585b55834 => 5
	i64 9113579748781016974, ; 84: Xamarin.Firebase.Storage.dll => 0x7e79f07ee649478e => 47
	i64 9226675035665529780, ; 85: Xamarin.Protobuf.Lite.dll => 0x800bbc0f56cefbb4 => 68
	i64 9324707631942237306, ; 86: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 23
	i64 9662334977499516867, ; 87: System.Numerics.dll => 0x8617827802b0cfc3 => 18
	i64 9678050649315576968, ; 88: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 26
	i64 9808709177481450983, ; 89: Mono.Android.dll => 0x881f890734e555e7 => 6
	i64 9998632235833408227, ; 90: Mono.Security => 0x8ac2470b209ebae3 => 72
	i64 10038780035334861115, ; 91: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 92: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 29
	i64 10430153318873392755, ; 93: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 27
	i64 10950904922014548635, ; 94: ReactiveProperty.dll => 0x97f96e0195c1029b => 13
	i64 10966933586012635777, ; 95: Xamarin.Grpc.OkHttp.dll => 0x98325ffdbd958281 => 63
	i64 11023048688141570732, ; 96: System.Core => 0x98f9bc61168392ac => 16
	i64 11037814507248023548, ; 97: System.Xml => 0x992e31d0412bf7fc => 20
	i64 11122995063473561350, ; 98: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 41
	i64 11162124722117608902, ; 99: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 40
	i64 11340910727871153756, ; 100: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 28
	i64 11496466075493495264, ; 101: Xamarin.Grpc.Context.dll => 0x9f8ba6fc1a1e71e0 => 61
	i64 11529969570048099689, ; 102: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 40
	i64 11543422055205009205, ; 103: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 46
	i64 11902137738784770347, ; 104: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics.dll => 0xa52ce3369409892b => 67
	i64 12115137270583717647, ; 105: EatIt.dll => 0xa8219d28aa3cef0f => 3
	i64 12451044538927396471, ; 106: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 31
	i64 12466513435562512481, ; 107: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 36
	i64 12538491095302438457, ; 108: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 24
	i64 12700543734426720211, ; 109: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 25
	i64 12740980283613343379, ; 110: EatIt.Android.dll => 0xb0d10e1037076e93 => 0
	i64 12963446364377008305, ; 111: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 71
	i64 13084382143907087733, ; 112: Xamarin.Grpc.Context => 0xb595103c610bc575 => 61
	i64 13370592475155966277, ; 113: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13402939433517888790, ; 114: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 55
	i64 13454009404024712428, ; 115: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 56
	i64 13572454107664307259, ; 116: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 37
	i64 13609095008681508810, ; 117: Xamarin.Grpc.Protobuf.Lite => 0xbcdd37ce6b00bfca => 64
	i64 13689508124566831556, ; 118: Square.OkHttp.dll => 0xbdfae71bf2a141c4 => 14
	i64 13761131323945450492, ; 119: Xamarin.Firebase.Storage => 0xbef95c078f44fbfc => 47
	i64 13865727802090930648, ; 120: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 54
	i64 13959074834287824816, ; 121: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 31
	i64 13967638549803255703, ; 122: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 49
	i64 13975254687929967048, ; 123: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 54
	i64 14124974489674258913, ; 124: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 24
	i64 14165531176311179688, ; 125: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 43
	i64 14382082037123372364, ; 126: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 44
	i64 14671188939680189912, ; 127: Xamarin.Grpc.Core => 0xcb9a889bfe470dd8 => 62
	i64 14789919016435397935, ; 128: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 45
	i64 14792063746108907174, ; 129: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 56
	i64 14852515768018889994, ; 130: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 28
	i64 15370334346939861994, ; 131: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 27
	i64 15609085926864131306, ; 132: System.dll => 0xd89e9cf3334914ea => 17
	i64 15810740023422282496, ; 133: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 51
	i64 15930129725311349754, ; 134: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 58
	i64 15963349826457351533, ; 135: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 73
	i64 16154507427712707110, ; 136: System => 0xe03056ea4e39aa26 => 17
	i64 16303230644352379770, ; 137: Xamarin.Grpc.OkHttp => 0xe240b5e48fe2eb7a => 63
	i64 16579050217386591297, ; 138: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 55
	i64 16833383113903931215, ; 139: mscorlib => 0xe99c30c1484d7f4f => 7
	i64 17334808277409262987, ; 140: EatIt.Android => 0xf0919c48d87aed8b => 0
	i64 17704177640604968747, ; 141: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 36
	i64 17710060891934109755, ; 142: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 35
	i64 17805132529253836614, ; 143: Plugin.FirebaseStorage.dll => 0xf71889b320ed6746 => 11
	i64 17882897186074144999, ; 144: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17892495832318972303, ; 145: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 51
	i64 17986907704309214542, ; 146: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 57
	i64 18129453464017766560 ; 147: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 70
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [148 x i32] [
	i32 6, i32 25, i32 38, i32 19, i32 67, i32 71, i32 32, i32 10, ; 0..7
	i32 30, i32 50, i32 72, i32 12, i32 52, i32 60, i32 66, i32 44, ; 8..15
	i32 2, i32 59, i32 53, i32 22, i32 23, i32 38, i32 59, i32 35, ; 16..23
	i32 41, i32 62, i32 73, i32 30, i32 69, i32 3, i32 34, i32 65, ; 24..31
	i32 26, i32 13, i32 21, i32 20, i32 7, i32 9, i32 12, i32 48, ; 32..39
	i32 52, i32 15, i32 33, i32 45, i32 57, i32 39, i32 18, i32 9, ; 40..47
	i32 37, i32 11, i32 64, i32 58, i32 70, i32 21, i32 39, i32 66, ; 48..55
	i32 49, i32 42, i32 65, i32 10, i32 16, i32 8, i32 50, i32 4, ; 56..63
	i32 60, i32 34, i32 43, i32 29, i32 32, i32 8, i32 68, i32 19, ; 64..71
	i32 48, i32 42, i32 1, i32 53, i32 22, i32 46, i32 14, i32 33, ; 72..79
	i32 5, i32 69, i32 15, i32 5, i32 47, i32 68, i32 23, i32 18, ; 80..87
	i32 26, i32 6, i32 72, i32 1, i32 29, i32 27, i32 13, i32 63, ; 88..95
	i32 16, i32 20, i32 41, i32 40, i32 28, i32 61, i32 40, i32 46, ; 96..103
	i32 67, i32 3, i32 31, i32 36, i32 24, i32 25, i32 0, i32 71, ; 104..111
	i32 61, i32 2, i32 55, i32 56, i32 37, i32 64, i32 14, i32 47, ; 112..119
	i32 54, i32 31, i32 49, i32 54, i32 24, i32 43, i32 44, i32 62, ; 120..127
	i32 45, i32 56, i32 28, i32 27, i32 17, i32 51, i32 58, i32 73, ; 128..135
	i32 17, i32 63, i32 55, i32 7, i32 0, i32 36, i32 35, i32 11, ; 136..143
	i32 4, i32 51, i32 57, i32 70 ; 144..147
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
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
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
