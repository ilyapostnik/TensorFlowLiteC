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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240112/TensorFlowLiteC.xcframework.zip", checksum: "773656d0bff587419e25059cb5edff67641e1999d6d3450abf2561f6790239a6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4c4ad1c02670df895f15097ac3023007233719ea517471f27b360bdfead6396e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240112/TensorFlowLiteCMetal.xcframework.zip", checksum: "a38913fc21730885e62769792c8b2746d58efbe1b1b22fa3f05e6d1a9c0fc33d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
