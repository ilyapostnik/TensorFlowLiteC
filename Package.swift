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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231127/TensorFlowLiteC.xcframework.zip", checksum: "fdf41e0df82edbe5e52eef095b78dc5aea7e08fc5998bd91f85d850c63bad0b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7cc9bfe23c1a05a5981cf8e0cb57ff6b9aad81c7a48ad5b2591dec7bf9a1f235"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231127/TensorFlowLiteCMetal.xcframework.zip", checksum: "d87361a5cf2c94eaeb3957b46b93102187ebd7751f05371e37647ce576af4bcf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
