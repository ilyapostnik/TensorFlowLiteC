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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteC.xcframework.zip", checksum: "b4fb8acde677c3aa10a48789aded4b3aace87ad9ab69cdd98a198cf72a9a6b65"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3dd0d0097e2054a105597c4aaae706562c6cd3cd12e6626a8a2dce7717a217d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteCMetal.xcframework.zip", checksum: "6fd06d4730f85dada50d8c129d3bea3c337dbeb9236fd29fcbc64085106b1e21"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
