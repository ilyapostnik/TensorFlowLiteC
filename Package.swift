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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240602/TensorFlowLiteC.xcframework.zip", checksum: "7667c07865e900f27dad591f2a5b6d83cf50d973438406cb0a9579ee0a91ede9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240602/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3e8a0749be975ba39ead37d62a084f9b7b8c1fdadae1c388f87c5427ac7b1bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240602/TensorFlowLiteCMetal.xcframework.zip", checksum: "18fc1f1fba4624c92ec3a7fcb8d4bfa06a816d66cb43b292dbb0ff17cdf974d0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
