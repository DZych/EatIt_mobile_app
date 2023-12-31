; ModuleID = 'obj\Debug\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [246 x i32] [
	i32 6657927, ; 0: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 105
	i32 9414545, ; 1: Xamarin.Grpc.Android => 0x8fa791 => 100
	i32 32687329, ; 2: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 55
	i32 34715100, ; 3: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 96
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 88
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 69
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 69
	i32 159306688, ; 7: System.ComponentModel.Annotations => 0x97ed3c0 => 1
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 36
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 70
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 34
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 50
	i32 232815796, ; 12: System.Web.Services => 0xde07cb4 => 120
	i32 261689757, ; 13: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 39
	i32 266337479, ; 14: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 95
	i32 271099684, ; 15: Xamarin.Grpc.OkHttp => 0x1028a724 => 104
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 54
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 48
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 26
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 20
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 52
	i32 419244643, ; 21: Plugin.FirebaseAuth.dll => 0x18fd2a63 => 12
	i32 441335492, ; 22: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 38
	i32 442521989, ; 23: Xamarin.Essentials => 0x1a605985 => 79
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 47
	i32 453011810, ; 25: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 84
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 27: System.dll => 0x1bff388e => 19
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 48
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 59
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 114
	i32 530500437, ; 31: EatIt.dll => 0x1f9ecb55 => 5
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 118
	i32 610194910, ; 33: System.Reactive.dll => 0x245ed5de => 22
	i32 612086048, ; 34: ReactiveProperty.Core => 0x247bb120 => 14
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 43
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 75
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 31
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 25
	i32 705536411, ; 39: Plugin.FirebaseStorage => 0x2a0da19b => 13
	i32 712915335, ; 40: Xamarin.Grpc.Api => 0x2a7e3987 => 101
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 117
	i32 782533833, ; 42: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 93
	i32 786276537, ; 43: ReactiveProperty.Core.dll => 0x2edda0b9 => 14
	i32 809851609, ; 44: System.Drawing.Common.dll => 0x30455ad9 => 116
	i32 843511501, ; 45: Xamarin.AndroidX.Print => 0x3246f6cd => 66
	i32 884236112, ; 46: Plugin.CloudFirestore.dll => 0x34b45f50 => 10
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 96
	i32 957807352, ; 48: Plugin.CurrentActivity => 0x3916faf8 => 11
	i32 961995525, ; 49: Square.OkIO.dll => 0x3956e305 => 17
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 52
	i32 974778368, ; 51: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 68
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 30
	i32 1042160112, ; 54: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 90
	i32 1050026713, ; 55: Xamarin.Io.OpenCensus.OpenCensusApi.dll => 0x3e9622d9 => 107
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 56
	i32 1061503568, ; 57: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 93
	i32 1098259244, ; 58: System => 0x41761b2c => 19
	i32 1110581358, ; 59: Xamarin.Firebase.Auth => 0x4232206e => 80
	i32 1135578391, ; 60: ReactiveProperty.dll => 0x43af8d17 => 15
	i32 1159499262, ; 61: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 106
	i32 1175144683, ; 62: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 73
	i32 1178241025, ; 63: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 63
	i32 1204270330, ; 64: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 31
	i32 1208648034, ; 65: Square.OkHttp => 0x480a8162 => 16
	i32 1230765884, ; 66: Xamarin.Grpc.Stub => 0x495bff3c => 106
	i32 1244346141, ; 67: Xamarin.Protobuf.Lite => 0x4a2b371d => 109
	i32 1263886435, ; 68: Xamarin.Google.Guava.dll => 0x4b556063 => 94
	i32 1267360935, ; 69: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 74
	i32 1273391546, ; 70: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics => 0x4be669ba => 108
	i32 1293217323, ; 71: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 45
	i32 1333047053, ; 72: Xamarin.Firebase.Common => 0x4f74af0d => 82
	i32 1365406463, ; 73: System.ServiceModel.Internals.dll => 0x516272ff => 111
	i32 1376866003, ; 74: Xamarin.AndroidX.SavedState => 0x52114ed3 => 68
	i32 1395857551, ; 75: Xamarin.AndroidX.Media.dll => 0x5333188f => 60
	i32 1406073936, ; 76: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 40
	i32 1406299041, ; 77: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 95
	i32 1411702249, ; 78: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 81
	i32 1460219004, ; 79: Xamarin.Forms.Xaml => 0x57092c7c => 91
	i32 1462112819, ; 80: System.IO.Compression.dll => 0x57261233 => 117
	i32 1469204771, ; 81: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 29
	i32 1544135863, ; 82: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 101
	i32 1582372066, ; 83: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 44
	i32 1592978981, ; 84: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 85: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 58
	i32 1624863272, ; 86: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 77
	i32 1636350590, ; 87: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 42
	i32 1639515021, ; 88: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 89: System.Runtime => 0x62c6282e => 23
	i32 1658241508, ; 90: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 71
	i32 1658251792, ; 91: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 92
	i32 1664238415, ; 92: Xamarin.Firebase.Database.Collection => 0x6332434f => 84
	i32 1670060433, ; 93: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 39
	i32 1729485958, ; 94: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 35
	i32 1766324549, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 70
	i32 1776026572, ; 96: System.Core.dll => 0x69dc03cc => 18
	i32 1785684415, ; 97: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics.dll => 0x6a6f61bf => 108
	i32 1788241197, ; 98: Xamarin.AndroidX.Fragment => 0x6a96652d => 47
	i32 1808609942, ; 99: Xamarin.AndroidX.Loader => 0x6bcd3296 => 58
	i32 1813201214, ; 100: Xamarin.Google.Android.Material => 0x6c13413e => 92
	i32 1818569960, ; 101: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 64
	i32 1867746548, ; 102: Xamarin.Essentials.dll => 0x6f538cf4 => 79
	i32 1875053220, ; 103: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 81
	i32 1878053835, ; 104: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 91
	i32 1885316902, ; 105: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 32
	i32 1904755420, ; 106: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 2
	i32 1908813208, ; 107: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 98
	i32 1919157823, ; 108: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 61
	i32 2019465201, ; 109: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 56
	i32 2055257422, ; 110: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 53
	i32 2079903147, ; 111: System.Runtime.dll => 0x7bf8cdab => 23
	i32 2083657273, ; 112: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x7c321639 => 86
	i32 2090596640, ; 113: System.Numerics.Vectors => 0x7c9bf920 => 21
	i32 2097448633, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 49
	i32 2120648178, ; 115: EatIt.Android => 0x7e6685f2 => 0
	i32 2126786730, ; 116: Xamarin.Forms.Platform.Android => 0x7ec430aa => 89
	i32 2129483829, ; 117: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 97
	i32 2195564014, ; 118: Xamarin.Grpc.Context => 0x82dda5ee => 102
	i32 2201231467, ; 119: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 120: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 73
	i32 2244775296, ; 121: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 59
	i32 2256548716, ; 122: Xamarin.AndroidX.MultiDex => 0x8680336c => 61
	i32 2261435625, ; 123: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 51
	i32 2279755925, ; 124: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 67
	i32 2305348475, ; 125: Xamarin.Firebase.Storage.dll => 0x8968d37b => 87
	i32 2307769286, ; 126: Square.OkHttp.dll => 0x898dc3c6 => 16
	i32 2315684594, ; 127: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 27
	i32 2382033717, ; 128: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 80
	i32 2409053734, ; 129: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 65
	i32 2435904999, ; 130: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 110
	i32 2465532216, ; 131: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 38
	i32 2471841756, ; 132: netstandard.dll => 0x93554fdc => 112
	i32 2475788418, ; 133: Java.Interop.dll => 0x93918882 => 7
	i32 2501346920, ; 134: System.Data.DataSetExtensions => 0x95178668 => 115
	i32 2505896520, ; 135: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 55
	i32 2581819634, ; 136: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 74
	i32 2591433303, ; 137: Xamarin.Grpc.Core.dll => 0x9a762257 => 103
	i32 2620871830, ; 138: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 42
	i32 2624644809, ; 139: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 46
	i32 2633051222, ; 140: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 54
	i32 2640452924, ; 141: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 105
	i32 2701096212, ; 142: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 71
	i32 2715831284, ; 143: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xa1e04bf4 => 86
	i32 2732626843, ; 144: Xamarin.AndroidX.Activity => 0xa2e0939b => 26
	i32 2737747696, ; 145: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 29
	i32 2752363754, ; 146: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 85
	i32 2765177807, ; 147: EatIt => 0xa4d143cf => 5
	i32 2766581644, ; 148: Xamarin.Forms.Core => 0xa4e6af8c => 88
	i32 2778768386, ; 149: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 76
	i32 2804607052, ; 150: Xamarin.Firebase.Components.dll => 0xa72ae84c => 83
	i32 2806986428, ; 151: Plugin.CurrentActivity.dll => 0xa74f36bc => 11
	i32 2810250172, ; 152: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 40
	i32 2819470561, ; 153: System.Xml.dll => 0xa80db4e1 => 24
	i32 2847418871, ; 154: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 97
	i32 2853208004, ; 155: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 76
	i32 2855708567, ; 156: Xamarin.AndroidX.Transition => 0xaa36a797 => 72
	i32 2856624150, ; 157: Xamarin.Grpc.Core => 0xaa44a016 => 103
	i32 2885620179, ; 158: Plugin.CloudFirestore => 0xabff11d3 => 10
	i32 2903344695, ; 159: System.ComponentModel.Composition => 0xad0d8637 => 119
	i32 2905242038, ; 160: mscorlib.dll => 0xad2a79b6 => 9
	i32 2916838712, ; 161: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 77
	i32 2919462931, ; 162: System.Numerics.Vectors.dll => 0xae037813 => 21
	i32 2921128767, ; 163: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 28
	i32 2943219317, ; 164: Square.OkIO => 0xaf6df675 => 17
	i32 2960379616, ; 165: Xamarin.Google.Guava => 0xb073cee0 => 94
	i32 2978675010, ; 166: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 45
	i32 3024354802, ; 167: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 50
	i32 3044182254, ; 168: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 169: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 62
	i32 3058099980, ; 170: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 99
	i32 3071899978, ; 171: Xamarin.Firebase.Common.dll => 0xb719794a => 82
	i32 3111772706, ; 172: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3124832203, ; 173: System.Threading.Tasks.Extensions => 0xba4127cb => 122
	i32 3204380047, ; 174: System.Data.dll => 0xbefef58f => 113
	i32 3211777861, ; 175: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 44
	i32 3230466174, ; 176: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 98
	i32 3247949154, ; 177: Mono.Security => 0xc197c562 => 121
	i32 3258312781, ; 178: Xamarin.AndroidX.CardView => 0xc235e84d => 35
	i32 3265893370, ; 179: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 122
	i32 3267021929, ; 180: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 33
	i32 3280506390, ; 181: System.ComponentModel.Annotations.dll => 0xc3888e16 => 1
	i32 3317135071, ; 182: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 43
	i32 3317144872, ; 183: System.Data => 0xc5b79d28 => 113
	i32 3340431453, ; 184: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 32
	i32 3346324047, ; 185: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 63
	i32 3353484488, ; 186: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 49
	i32 3353544232, ; 187: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 78
	i32 3362522851, ; 188: Xamarin.AndroidX.Core => 0xc86c06e3 => 41
	i32 3366347497, ; 189: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 190: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 67
	i32 3404865022, ; 191: System.ServiceModel.Internals => 0xcaf21dfe => 111
	i32 3407215217, ; 192: Xamarin.CommunityToolkit => 0xcb15fa71 => 78
	i32 3429136800, ; 193: System.Xml => 0xcc6479a0 => 24
	i32 3430777524, ; 194: netstandard => 0xcc7d82b4 => 112
	i32 3437748879, ; 195: Xamarin.Firebase.Storage => 0xcce7e28f => 87
	i32 3441283291, ; 196: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 46
	i32 3473879593, ; 197: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 104
	i32 3476120550, ; 198: Mono.Android => 0xcf3163e6 => 8
	i32 3476446909, ; 199: EatIt.Android.dll => 0xcf365ebd => 0
	i32 3486566296, ; 200: System.Transactions => 0xcfd0c798 => 114
	i32 3493954962, ; 201: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 37
	i32 3501239056, ; 202: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 33
	i32 3509114376, ; 203: System.Xml.Linq => 0xd128d608 => 25
	i32 3536029504, ; 204: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 89
	i32 3567349600, ; 205: System.ComponentModel.Composition.dll => 0xd4a16f60 => 119
	i32 3597794883, ; 206: Xamarin.Firebase.Firestore => 0xd671fe43 => 85
	i32 3618140916, ; 207: Xamarin.AndroidX.Preference => 0xd7a872f4 => 65
	i32 3627220390, ; 208: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 66
	i32 3632359727, ; 209: Xamarin.Forms.Platform => 0xd881692f => 90
	i32 3633644679, ; 210: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 28
	i32 3641597786, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 53
	i32 3645089577, ; 212: System.ComponentModel.DataAnnotations => 0xd943a729 => 110
	i32 3672681054, ; 213: Mono.Android.dll => 0xdae8aa5e => 8
	i32 3676310014, ; 214: System.Web.Services.dll => 0xdb2009fe => 120
	i32 3682565725, ; 215: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 34
	i32 3684561358, ; 216: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 37
	i32 3684933406, ; 217: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 2
	i32 3689375977, ; 218: System.Drawing.Common => 0xdbe768e9 => 116
	i32 3718780102, ; 219: Xamarin.AndroidX.Annotation => 0xdda814c6 => 27
	i32 3724971120, ; 220: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 62
	i32 3731644420, ; 221: System.Reactive => 0xde6c6004 => 22
	i32 3758932259, ; 222: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 51
	i32 3771698872, ; 223: Xamarin.Io.OpenCensus.OpenCensusApi => 0xe0cf8eb8 => 107
	i32 3786282454, ; 224: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 36
	i32 3822602673, ; 225: Xamarin.AndroidX.Media => 0xe3d849b1 => 60
	i32 3829621856, ; 226: System.Numerics.dll => 0xe4436460 => 20
	i32 3885922214, ; 227: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 72
	i32 3896760992, ; 228: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 41
	i32 3920810846, ; 229: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 118
	i32 3921031405, ; 230: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 75
	i32 3931092270, ; 231: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 64
	i32 3943739589, ; 232: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 102
	i32 3945713374, ; 233: System.Data.DataSetExtensions.dll => 0xeb2ecede => 115
	i32 3955647286, ; 234: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 30
	i32 3968844647, ; 235: Xamarin.Protobuf.Lite.dll => 0xec8fc367 => 109
	i32 3970018735, ; 236: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 99
	i32 3994573371, ; 237: Plugin.FirebaseStorage.dll => 0xee185a3b => 13
	i32 4105002889, ; 238: Mono.Security.dll => 0xf4ad5f89 => 121
	i32 4151237749, ; 239: System.Core => 0xf76edc75 => 18
	i32 4182413190, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 57
	i32 4200179444, ; 241: Plugin.FirebaseAuth => 0xfa59a6f4 => 12
	i32 4202326934, ; 242: ReactiveProperty => 0xfa7a6b96 => 15
	i32 4223148364, ; 243: Xamarin.Grpc.Android.dll => 0xfbb8214c => 100
	i32 4284549794, ; 244: Xamarin.Firebase.Components => 0xff610aa2 => 83
	i32 4292120959 ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 57
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [246 x i32] [
	i32 105, i32 100, i32 55, i32 96, i32 88, i32 69, i32 69, i32 1, ; 0..7
	i32 36, i32 70, i32 34, i32 50, i32 120, i32 39, i32 95, i32 104, ; 8..15
	i32 54, i32 48, i32 26, i32 20, i32 52, i32 12, i32 38, i32 79, ; 16..23
	i32 47, i32 84, i32 9, i32 19, i32 48, i32 59, i32 114, i32 5, ; 24..31
	i32 118, i32 22, i32 14, i32 43, i32 75, i32 31, i32 25, i32 13, ; 32..39
	i32 101, i32 117, i32 93, i32 14, i32 116, i32 66, i32 10, i32 96, ; 40..47
	i32 11, i32 17, i32 52, i32 6, i32 68, i32 30, i32 90, i32 107, ; 48..55
	i32 56, i32 93, i32 19, i32 80, i32 15, i32 106, i32 73, i32 63, ; 56..63
	i32 31, i32 16, i32 106, i32 109, i32 94, i32 74, i32 108, i32 45, ; 64..71
	i32 82, i32 111, i32 68, i32 60, i32 40, i32 95, i32 81, i32 91, ; 72..79
	i32 117, i32 29, i32 101, i32 44, i32 4, i32 58, i32 77, i32 42, ; 80..87
	i32 3, i32 23, i32 71, i32 92, i32 84, i32 39, i32 35, i32 70, ; 88..95
	i32 18, i32 108, i32 47, i32 58, i32 92, i32 64, i32 79, i32 81, ; 96..103
	i32 91, i32 32, i32 2, i32 98, i32 61, i32 56, i32 53, i32 23, ; 104..111
	i32 86, i32 21, i32 49, i32 0, i32 89, i32 97, i32 102, i32 3, ; 112..119
	i32 73, i32 59, i32 61, i32 51, i32 67, i32 87, i32 16, i32 27, ; 120..127
	i32 80, i32 65, i32 110, i32 38, i32 112, i32 7, i32 115, i32 55, ; 128..135
	i32 74, i32 103, i32 42, i32 46, i32 54, i32 105, i32 71, i32 86, ; 136..143
	i32 26, i32 29, i32 85, i32 5, i32 88, i32 76, i32 83, i32 11, ; 144..151
	i32 40, i32 24, i32 97, i32 76, i32 72, i32 103, i32 10, i32 119, ; 152..159
	i32 9, i32 77, i32 21, i32 28, i32 17, i32 94, i32 45, i32 50, ; 160..167
	i32 6, i32 62, i32 99, i32 82, i32 4, i32 122, i32 113, i32 44, ; 168..175
	i32 98, i32 121, i32 35, i32 122, i32 33, i32 1, i32 43, i32 113, ; 176..183
	i32 32, i32 63, i32 49, i32 78, i32 41, i32 7, i32 67, i32 111, ; 184..191
	i32 78, i32 24, i32 112, i32 87, i32 46, i32 104, i32 8, i32 0, ; 192..199
	i32 114, i32 37, i32 33, i32 25, i32 89, i32 119, i32 85, i32 65, ; 200..207
	i32 66, i32 90, i32 28, i32 53, i32 110, i32 8, i32 120, i32 34, ; 208..215
	i32 37, i32 2, i32 116, i32 27, i32 62, i32 22, i32 51, i32 107, ; 216..223
	i32 36, i32 60, i32 20, i32 72, i32 41, i32 118, i32 75, i32 64, ; 224..231
	i32 102, i32 115, i32 30, i32 109, i32 99, i32 13, i32 121, i32 18, ; 232..239
	i32 57, i32 12, i32 15, i32 100, i32 83, i32 57 ; 240..245
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
