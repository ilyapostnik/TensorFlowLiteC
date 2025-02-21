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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteC.xcframework.zip", checksum: "e9a443a994fe1f6ce1bb02598939e45db67fdfb0c227f496cab7a7423ef48790"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "623661d3ee7aab7b6d0b998f5e5bcae98884b3742ed857b3b692c458b12f91db"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250220/TensorFlowLiteCMetal.xcframework.zip", checksum: "88e7353d3591ef06161dc7e5399f639eb5bda2ae646efd5ced46c68cfdfc6200"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
