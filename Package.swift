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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240220/TensorFlowLiteC.xcframework.zip", checksum: "da1a25057dd55e6889d611295fc26755e2530e1abefd2a986f1ffdc9f29dcd6b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "645c42f702f4ce62e64db3d3f66e717922f2592a5f5f9a12d0b5b26ed65f1a67"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240220/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ad14a7b7b888660cbb97ae4c421762b2bf089e114f0102836a18caefefc83fa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
