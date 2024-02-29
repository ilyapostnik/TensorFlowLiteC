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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240228/TensorFlowLiteC.xcframework.zip", checksum: "0c8e0e1befdd73248d588c8afffc8e9b41341ae462827c20297581abff2cea92"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240228/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d1c9a023bcaf9bec46f7d48364c0a30542c98cb2f4bcca272fc96a8e3a758e68"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240228/TensorFlowLiteCMetal.xcframework.zip", checksum: "5c70590b81a7b876eb44477e73b3bed52d95c001d23d230e06a71e9519aab67b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
