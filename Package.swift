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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240108/TensorFlowLiteC.xcframework.zip", checksum: "c6ebf9b12b5e93e2a7a4186c7736a038deba40dd3334cdf7ac843bda215137cb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b35cde1a43607c47c023439d14f6897e27a5fc154e9e7f570836acf176887fa2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240108/TensorFlowLiteCMetal.xcframework.zip", checksum: "b002e8410d55fd620b57039b9d8de72077d30b743925ac80709ce3ef6efc8f58"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
