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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteC.xcframework.zip", checksum: "74a23f21d5f2778ece26c575f1408d62de84bbc6b433fef8b17738f25c8db59f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d330126d2ac00e8d2a59dc271378b81bb43b4bb92c066eca4d1082cbd49aeca1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteCMetal.xcframework.zip", checksum: "86f8847a2ff93743e9e204d360f47a441764682a0255b43bdad8a375376d90cd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
