load("@rules_jvm_external//:defs.bzl", "artifact")
load("@rules_android//android:rules.bzl", "android_binary")
load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kt_android_library")

MANIFEST = "main/AndroidManifest.xml"

kt_android_library(
    name = "kotlin_sources",
    srcs = glob(["main/java/com/fleepgeek/bullseyesample/*.kt"]),
    custom_package = "com.fleepgeek.bullseyesample",
    manifest = MANIFEST,
    resource_files = glob(["main/res/**"]),
    deps = [
        artifact("androidx.core:core-ktx"),
        artifact("androidx.appcompat:appcompat"),
        artifact("com.google.android.material:material"),
        artifact("androidx.constraintlayout:constraintlayout"),
        artifact("androidx.core:core"),
        artifact("junit:junit:4.13.2"),
        artifact("androidx.test.ext:junit:1.1.3"),
        artifact("androidx.test.espresso:espresso-core:3.4.0"),
        artifact("androidx.lifecycle:lifecycle-runtime"),
        artifact("androidx.lifecycle:lifecycle-viewmodel"),
        artifact("androidx.lifecycle:lifecycle-common"),
        artifact("androidx.databinding:viewbinding")
    ]
)

android_binary(
    name = "yourfirstapp",
    manifest = MANIFEST,
    deps = [":kotlin_sources"]
)