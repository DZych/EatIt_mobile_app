; ModuleID = 'obj\Release\120\android\marshal_methods.x86.ll'
source_filename = "obj\Release\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [148 x i32] [
	i32 6657927, ; 0: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 64
	i32 9414545, ; 1: Xamarin.Grpc.Android => 0x8fa791 => 59
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 56
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 48
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 25
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 39
	i32 266337479, ; 6: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 55
	i32 271099684, ; 7: Xamarin.Grpc.OkHttp => 0x1028a724 => 63
	i32 318968648, ; 8: Xamarin.AndroidX.Activity.dll => 0x13031348 => 21
	i32 321597661, ; 9: System.Numerics => 0x132b30dd => 18
	i32 342366114, ; 10: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 33
	i32 419244643, ; 11: Plugin.FirebaseAuth.dll => 0x18fd2a63 => 10
	i32 442521989, ; 12: Xamarin.Essentials => 0x1a605985 => 42
	i32 450948140, ; 13: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 31
	i32 465846621, ; 14: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 15: System.dll => 0x1bff388e => 17
	i32 530500437, ; 16: EatIt.dll => 0x1f9ecb55 => 3
	i32 610194910, ; 17: System.Reactive.dll => 0x245ed5de => 19
	i32 612086048, ; 18: ReactiveProperty.Core => 0x247bb120 => 12
	i32 627609679, ; 19: Xamarin.AndroidX.CustomView => 0x2568904f => 29
	i32 705536411, ; 20: Plugin.FirebaseStorage => 0x2a0da19b => 11
	i32 712915335, ; 21: Xamarin.Grpc.Api => 0x2a7e3987 => 60
	i32 782533833, ; 22: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 53
	i32 786276537, ; 23: ReactiveProperty.Core.dll => 0x2edda0b9 => 12
	i32 809851609, ; 24: System.Drawing.Common.dll => 0x30455ad9 => 71
	i32 884236112, ; 25: Plugin.CloudFirestore.dll => 0x34b45f50 => 8
	i32 928116545, ; 26: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 56
	i32 957807352, ; 27: Plugin.CurrentActivity => 0x3916faf8 => 9
	i32 961995525, ; 28: Square.OkIO.dll => 0x3956e305 => 15
	i32 967690846, ; 29: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 33
	i32 974778368, ; 30: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 31: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 38
	i32 1035644815, ; 32: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 23
	i32 1042160112, ; 33: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 50
	i32 1050026713, ; 34: Xamarin.Io.OpenCensus.OpenCensusApi.dll => 0x3e9622d9 => 66
	i32 1052210849, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 35
	i32 1061503568, ; 36: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 53
	i32 1098259244, ; 37: System => 0x41761b2c => 17
	i32 1110581358, ; 38: Xamarin.Firebase.Auth => 0x4232206e => 43
	i32 1135578391, ; 39: ReactiveProperty.dll => 0x43af8d17 => 13
	i32 1159499262, ; 40: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 65
	i32 1208648034, ; 41: Square.OkHttp => 0x480a8162 => 14
	i32 1230765884, ; 42: Xamarin.Grpc.Stub => 0x495bff3c => 65
	i32 1244346141, ; 43: Xamarin.Protobuf.Lite => 0x4a2b371d => 68
	i32 1263886435, ; 44: Xamarin.Google.Guava.dll => 0x4b556063 => 54
	i32 1273391546, ; 45: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics => 0x4be669ba => 67
	i32 1293217323, ; 46: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 30
	i32 1333047053, ; 47: Xamarin.Firebase.Common => 0x4f74af0d => 45
	i32 1365406463, ; 48: System.ServiceModel.Internals.dll => 0x516272ff => 70
	i32 1376866003, ; 49: Xamarin.AndroidX.SavedState => 0x52114ed3 => 38
	i32 1406073936, ; 50: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 26
	i32 1406299041, ; 51: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 55
	i32 1411702249, ; 52: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 44
	i32 1460219004, ; 53: Xamarin.Forms.Xaml => 0x57092c7c => 51
	i32 1469204771, ; 54: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 22
	i32 1544135863, ; 55: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 60
	i32 1592978981, ; 56: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 57: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 36
	i32 1636350590, ; 58: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 28
	i32 1639515021, ; 59: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 60: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 52
	i32 1729485958, ; 61: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 24
	i32 1766324549, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 39
	i32 1776026572, ; 63: System.Core.dll => 0x69dc03cc => 16
	i32 1785684415, ; 64: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics.dll => 0x6a6f61bf => 67
	i32 1788241197, ; 65: Xamarin.AndroidX.Fragment => 0x6a96652d => 31
	i32 1808609942, ; 66: Xamarin.AndroidX.Loader => 0x6bcd3296 => 36
	i32 1813201214, ; 67: Xamarin.Google.Android.Material => 0x6c13413e => 52
	i32 1867746548, ; 68: Xamarin.Essentials.dll => 0x6f538cf4 => 42
	i32 1875053220, ; 69: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 44
	i32 1878053835, ; 70: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 51
	i32 1908813208, ; 71: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 57
	i32 2019465201, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 35
	i32 2055257422, ; 73: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 34
	i32 2097448633, ; 74: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 32
	i32 2120648178, ; 75: EatIt.Android => 0x7e6685f2 => 0
	i32 2126786730, ; 76: Xamarin.Forms.Platform.Android => 0x7ec430aa => 49
	i32 2195564014, ; 77: Xamarin.Grpc.Context => 0x82dda5ee => 61
	i32 2201231467, ; 78: System.Net.Http => 0x8334206b => 1
	i32 2279755925, ; 79: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 37
	i32 2305348475, ; 80: Xamarin.Firebase.Storage.dll => 0x8968d37b => 47
	i32 2307769286, ; 81: Square.OkHttp.dll => 0x898dc3c6 => 14
	i32 2382033717, ; 82: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 43
	i32 2435904999, ; 83: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 69
	i32 2475788418, ; 84: Java.Interop.dll => 0x93918882 => 5
	i32 2591433303, ; 85: Xamarin.Grpc.Core.dll => 0x9a762257 => 62
	i32 2620871830, ; 86: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 28
	i32 2640452924, ; 87: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 64
	i32 2732626843, ; 88: Xamarin.AndroidX.Activity => 0xa2e0939b => 21
	i32 2737747696, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 22
	i32 2752363754, ; 90: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 46
	i32 2765177807, ; 91: EatIt => 0xa4d143cf => 3
	i32 2766581644, ; 92: Xamarin.Forms.Core => 0xa4e6af8c => 48
	i32 2778768386, ; 93: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 40
	i32 2806986428, ; 94: Plugin.CurrentActivity.dll => 0xa74f36bc => 9
	i32 2810250172, ; 95: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 26
	i32 2819470561, ; 96: System.Xml.dll => 0xa80db4e1 => 20
	i32 2853208004, ; 97: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 40
	i32 2856624150, ; 98: Xamarin.Grpc.Core => 0xaa44a016 => 62
	i32 2885620179, ; 99: Plugin.CloudFirestore => 0xabff11d3 => 8
	i32 2905242038, ; 100: mscorlib.dll => 0xad2a79b6 => 7
	i32 2943219317, ; 101: Square.OkIO => 0xaf6df675 => 15
	i32 2960379616, ; 102: Xamarin.Google.Guava => 0xb073cee0 => 54
	i32 2978675010, ; 103: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 30
	i32 3044182254, ; 104: FormsViewGroup => 0xb57288ee => 4
	i32 3058099980, ; 105: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 58
	i32 3071899978, ; 106: Xamarin.Firebase.Common.dll => 0xb719794a => 45
	i32 3111772706, ; 107: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3124832203, ; 108: System.Threading.Tasks.Extensions => 0xba4127cb => 73
	i32 3230466174, ; 109: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 57
	i32 3247949154, ; 110: Mono.Security => 0xc197c562 => 72
	i32 3258312781, ; 111: Xamarin.AndroidX.CardView => 0xc235e84d => 24
	i32 3265893370, ; 112: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 73
	i32 3317135071, ; 113: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 29
	i32 3353484488, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 32
	i32 3353544232, ; 115: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 41
	i32 3362522851, ; 116: Xamarin.AndroidX.Core => 0xc86c06e3 => 27
	i32 3366347497, ; 117: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 118: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 37
	i32 3404865022, ; 119: System.ServiceModel.Internals => 0xcaf21dfe => 70
	i32 3407215217, ; 120: Xamarin.CommunityToolkit => 0xcb15fa71 => 41
	i32 3429136800, ; 121: System.Xml => 0xcc6479a0 => 20
	i32 3437748879, ; 122: Xamarin.Firebase.Storage => 0xcce7e28f => 47
	i32 3473879593, ; 123: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 63
	i32 3476120550, ; 124: Mono.Android => 0xcf3163e6 => 6
	i32 3476446909, ; 125: EatIt.Android.dll => 0xcf365ebd => 0
	i32 3536029504, ; 126: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 49
	i32 3597794883, ; 127: Xamarin.Firebase.Firestore => 0xd671fe43 => 46
	i32 3632359727, ; 128: Xamarin.Forms.Platform => 0xd881692f => 50
	i32 3641597786, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 34
	i32 3645089577, ; 130: System.ComponentModel.DataAnnotations => 0xd943a729 => 69
	i32 3672681054, ; 131: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3689375977, ; 132: System.Drawing.Common => 0xdbe768e9 => 71
	i32 3731644420, ; 133: System.Reactive => 0xde6c6004 => 19
	i32 3771698872, ; 134: Xamarin.Io.OpenCensus.OpenCensusApi => 0xe0cf8eb8 => 66
	i32 3786282454, ; 135: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 25
	i32 3829621856, ; 136: System.Numerics.dll => 0xe4436460 => 18
	i32 3896760992, ; 137: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 27
	i32 3943739589, ; 138: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 61
	i32 3955647286, ; 139: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 23
	i32 3968844647, ; 140: Xamarin.Protobuf.Lite.dll => 0xec8fc367 => 68
	i32 3970018735, ; 141: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 58
	i32 3994573371, ; 142: Plugin.FirebaseStorage.dll => 0xee185a3b => 11
	i32 4105002889, ; 143: Mono.Security.dll => 0xf4ad5f89 => 72
	i32 4151237749, ; 144: System.Core => 0xf76edc75 => 16
	i32 4200179444, ; 145: Plugin.FirebaseAuth => 0xfa59a6f4 => 10
	i32 4202326934, ; 146: ReactiveProperty => 0xfa7a6b96 => 13
	i32 4223148364 ; 147: Xamarin.Grpc.Android.dll => 0xfbb8214c => 59
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [148 x i32] [
	i32 64, i32 59, i32 56, i32 48, i32 25, i32 39, i32 55, i32 63, ; 0..7
	i32 21, i32 18, i32 33, i32 10, i32 42, i32 31, i32 7, i32 17, ; 8..15
	i32 3, i32 19, i32 12, i32 29, i32 11, i32 60, i32 53, i32 12, ; 16..23
	i32 71, i32 8, i32 56, i32 9, i32 15, i32 33, i32 4, i32 38, ; 24..31
	i32 23, i32 50, i32 66, i32 35, i32 53, i32 17, i32 43, i32 13, ; 32..39
	i32 65, i32 14, i32 65, i32 68, i32 54, i32 67, i32 30, i32 45, ; 40..47
	i32 70, i32 38, i32 26, i32 55, i32 44, i32 51, i32 22, i32 60, ; 48..55
	i32 2, i32 36, i32 28, i32 1, i32 52, i32 24, i32 39, i32 16, ; 56..63
	i32 67, i32 31, i32 36, i32 52, i32 42, i32 44, i32 51, i32 57, ; 64..71
	i32 35, i32 34, i32 32, i32 0, i32 49, i32 61, i32 1, i32 37, ; 72..79
	i32 47, i32 14, i32 43, i32 69, i32 5, i32 62, i32 28, i32 64, ; 80..87
	i32 21, i32 22, i32 46, i32 3, i32 48, i32 40, i32 9, i32 26, ; 88..95
	i32 20, i32 40, i32 62, i32 8, i32 7, i32 15, i32 54, i32 30, ; 96..103
	i32 4, i32 58, i32 45, i32 2, i32 73, i32 57, i32 72, i32 24, ; 104..111
	i32 73, i32 29, i32 32, i32 41, i32 27, i32 5, i32 37, i32 70, ; 112..119
	i32 41, i32 20, i32 47, i32 63, i32 6, i32 0, i32 49, i32 46, ; 120..127
	i32 50, i32 34, i32 69, i32 6, i32 71, i32 19, i32 66, i32 25, ; 128..135
	i32 18, i32 27, i32 61, i32 23, i32 68, i32 58, i32 11, i32 72, ; 136..143
	i32 16, i32 10, i32 13, i32 59 ; 144..147
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
