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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240703/TensorFlowLiteC.xcframework.zip", checksum: "4139ea4af3c7dde211ab1001fe281423b641bdcf79a1d4a530efabd120f31557"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240703/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8ba93aa250c72fe732ccd6a6eba702ed86e2052d47f04b783da98a61597f6477"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240703/TensorFlowLiteCMetal.xcframework.zip", checksum: "cdb8beee8ffced3f77465d17db24d8c045659b7c9dc6076a5416d6f460c59c4c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
