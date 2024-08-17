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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240816/TensorFlowLiteC.xcframework.zip", checksum: "a61a049d5c66af62497c26e07e057965fa32c9f0704a4589e92fbd8b3b95de14"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240816/TensorFlowLiteCCoreML.xcframework.zip", checksum: "81e47029a2a84773f016e0b8dd6593c6a058b732ffe02965a93f18702664dec2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240816/TensorFlowLiteCMetal.xcframework.zip", checksum: "b28014a70bcbbc3675fbf1cd27f4b4aaa078c1e6e14cbaf480aa93d065a3bde6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
