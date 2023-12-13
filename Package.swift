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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231212/TensorFlowLiteC.xcframework.zip", checksum: "341671e350e8ad58868d1335a7a857ff1b888e2057d7eed61d3e51ece2d6a64b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b065bc7635e5ccdcab5bf96144f5bc1caddcbf7ad99613eab782706cc5c9b300"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231212/TensorFlowLiteCMetal.xcframework.zip", checksum: "dec27bbf4c0a7945e5bca7eec32736d08904b92684149c7d9cd5d85df171ad22"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
