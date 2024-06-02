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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240601/TensorFlowLiteC.xcframework.zip", checksum: "65a607d038460eac4c44c88e527eca2dc01fa1b7e8f8bc4532911d710b5c658d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240601/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5c1d2208ffe1f4a3dc4ee5797ff64bd0baeb4c5c812be71f00dfede21a6f364f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240601/TensorFlowLiteCMetal.xcframework.zip", checksum: "43fdfc8279c5fe8f1d0ba6fe50351a326a33c0667cd5e8a59a9911a888648964"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
