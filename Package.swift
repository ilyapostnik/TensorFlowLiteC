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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteC.xcframework.zip", checksum: "aa5798423b601eaaf7d7975884f779cd4127243611071d996d95f12df1b71b26"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7233bb95e0fc00d94623e4939531ea6dad8b9e577f59e3f3836fc32ab0f16e93"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteCMetal.xcframework.zip", checksum: "636474c8b3f8563e62b6379d9772b224e0856450ef4adf95ee207aa7bff86976"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
