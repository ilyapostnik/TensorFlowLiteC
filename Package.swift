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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240424/TensorFlowLiteC.xcframework.zip", checksum: "174cbb83e64ec2cc81ae4049b96e23ee14c86bcc1a9314830060b9e1527a00f8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240424/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1100d23722015587588a24c025360a3774384edcb138d587f9b8d7dcc98fb0d3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240424/TensorFlowLiteCMetal.xcframework.zip", checksum: "20963715acd8ea66beaa5a063ba61d3859f98af6a1d6f3bc2174ed8d494dc4bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
