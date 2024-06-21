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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240620/TensorFlowLiteC.xcframework.zip", checksum: "2c5a38f357898a5ac67758f6cfa10d0f543c3723e5a787514e2cdd61aba659d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240620/TensorFlowLiteCCoreML.xcframework.zip", checksum: "319465c4de71baa56b45256613197efaa786884cba59972a9ce0f6d67f2dd34c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240620/TensorFlowLiteCMetal.xcframework.zip", checksum: "44f2b7a198ca1ad52bae31a5446a7d5be65237afcf5a1b8cddd89de6ae406182"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
