// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240530/TensorFlowLiteC.xcframework.zip", checksum: "b134d0e398aae10a4288d7a1c71e9933507709087f385040a718a9850cacc839"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240530/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9addad0d9afe30730365a1052a70d137921ca1bb8601efc9fd89cf0f31bb2684"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240530/TensorFlowLiteCMetal.xcframework.zip", checksum: "f1943486dee53d156427b7ea800f15bf9c461ecac7ef4b42dff4ecf5161547ea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
