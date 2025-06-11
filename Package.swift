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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteC.xcframework.zip", checksum: "3ffb2cb07f43efe030effe0f5c74ae98451660c028e84fc23b19b3b6ce61aecf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3e8fb90207b3475e9d677dbf93e6147892e01303bf4686eda10abe0d77f0e6d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteCMetal.xcframework.zip", checksum: "a7eb3140beaaed88928cc6728b7566d009317ad27135d89c87bd375c0dc73296"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
