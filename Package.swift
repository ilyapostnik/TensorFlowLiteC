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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240420/TensorFlowLiteC.xcframework.zip", checksum: "621dac9b866d62440aec5305012ddbe4140cb34d9aaef862f4d7d8f049593e26"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240420/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cc6fc0e20a622ef83ba734ade7f8df5107769ec1a5b7342cc8db435dbbd6f58c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240420/TensorFlowLiteCMetal.xcframework.zip", checksum: "a2bf13662c138165a0a3a628347d611b9dfb098d35c3656ba8ae297a04aff322"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
