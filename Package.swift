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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240608/TensorFlowLiteC.xcframework.zip", checksum: "00bba560421534d9ad14344e82ed6813ec902587141009128beab28510d7971d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240608/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a3b8eea105fd258ac68b4c8cc5c640af6d3e52c898b90a9bf18b3e9b7eb7b492"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240608/TensorFlowLiteCMetal.xcframework.zip", checksum: "c5b54be9ede06dccaab7725d599b06b0d8ac7e5ae518e0a12e966581659b66c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
