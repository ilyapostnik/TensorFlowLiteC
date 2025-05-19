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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteC.xcframework.zip", checksum: "7f64fc7ab57d92925544a87d7143d4aea8bc1635f43cadd09c946da5300fd0eb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c8c554adf5d4ef7b14f94ea10a7dbbe95a590c7a6129890eca67a4852e25fb7f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteCMetal.xcframework.zip", checksum: "66a0120b1bc2ba45d147136e207a3172e8ffaf1dc7904792515d3ec8e3df23d9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
