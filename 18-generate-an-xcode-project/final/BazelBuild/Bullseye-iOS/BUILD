load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application", "ios_unit_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@com_github_buildbuddy_io_rules_xcodeproj//xcodeproj:xcodeproj.bzl", "xcodeproj")

swift_library(
    name = "tests",
    srcs = glob(["BullseyeTests/*.swift"]),
    visibility = ["//visibility:private"],
    deps = [":sources"],
    module_name = "BullseyeTests"
)

swift_library(
    name = "sources",
    srcs = glob(["Bullseye/Sources/*.swift"]),
    visibility = ["//visibility:private"],
    module_name = "Bullseye"
)

ios_unit_test(
    name = "iostests",
    deps = [":tests"],
    minimum_os_version = "14.0",
    test_host = ":yourfirstapp",
    platform_type = "ios",
    visibility = ["//visibility:public"]
)

ios_application(
    name = "yourfirstapp",
    deps = [":sources"],
    bundle_id = "com.example.bullseye",
    families = [
        "iphone",
        "ipad"
    ],
    infoplists = ["Bullseye/App/Info.plist"],
    resources = glob(["Bullseye/App/Assets.xcassets/**"]),
    minimum_os_version = "14.0",
    visibility = ["//visibility:public"]
)

xcodeproj(
    name = "xcodeproj",
    project_name = "Bullseye",
    targets = [":yourfirstapp"]
)