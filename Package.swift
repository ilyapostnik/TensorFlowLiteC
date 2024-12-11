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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteC.xcframework.zip", checksum: "4b4ca022bc4ca9c167f95ed98960c45cbb7fc75d6106b9d9d7e9abd2710b21f5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "556ac2159bcd5b5067c163c4fa7ffbfb57480c144382414e8d2a104bb297a4f3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteCMetal.xcframework.zip", checksum: "1548e8f5afbd63e8e58682ad0324065294b4ce0ed7ce52652509044fcd2fd6dc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
