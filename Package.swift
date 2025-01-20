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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteC.xcframework.zip", checksum: "f1e9a08e2b82fe924de3a6fbb7c821603fcb73905e90126fcea0d6434067c95d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8bf62847175f8ac3d0d2796643036e6d15c293e36dcac8bf70f52a9c7d1a31b8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteCMetal.xcframework.zip", checksum: "3b374566b15ac1423dc0b78d2155969118f5d91ed60c16e855712f494695c088"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
