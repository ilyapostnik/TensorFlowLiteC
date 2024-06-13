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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240612/TensorFlowLiteC.xcframework.zip", checksum: "12e603029b9d3e0890d23a4c3521157d7b41601063674c4558338633d171ac8b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240612/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46093d348f33c0113f6e89086cbca848f1c143d9357a434533d3739e3881c2d0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240612/TensorFlowLiteCMetal.xcframework.zip", checksum: "a7f7727d2b5016326c8bf88f40ea95b7b3eda60b6de66f27eacb372aad50c7d5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
