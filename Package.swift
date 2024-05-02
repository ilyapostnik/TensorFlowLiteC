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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240501/TensorFlowLiteC.xcframework.zip", checksum: "acb4f56a9ff8b1e0707c33a56542efcf6b81fdbc1e7bf747d265a496d957c170"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240501/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f635453ff6870437f97002182e7f37fe427bdd7cf74dc6d2460477b4e2506a0e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240501/TensorFlowLiteCMetal.xcframework.zip", checksum: "faaf8bfd53bcd51adf5f60ce01b83e77ec041968c19a22a9eb26c4d9c58e5268"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
