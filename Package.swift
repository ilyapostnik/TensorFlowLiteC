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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240207/TensorFlowLiteC.xcframework.zip", checksum: "67e4d6f7518979a33c5660b290f0c34d238e318ba7b1226420e8ae76c03c5e9f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0349df956483a4066314dd1fde19d95d2b57fc18a91e37f5661c9d17e1d3cf40"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240207/TensorFlowLiteCMetal.xcframework.zip", checksum: "be6588e2f73b08d2fa815ae0d6e39b2a6c8c3acd413cfc4b93479ad7a751573e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
