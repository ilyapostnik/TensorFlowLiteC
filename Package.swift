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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240203/TensorFlowLiteC.xcframework.zip", checksum: "92c95798b2881a406936f90177e1bf44acd1c9cff6c281272af0eba64ee23c4e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "32713caa003212a8f9ec53f4a6a5d9c1786064d1fb7c9ffd269e106b09409522"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240203/TensorFlowLiteCMetal.xcframework.zip", checksum: "2742157f8304e64b1afed13dca3982c83bd0c16bd82cec86dfe31aa1faf1c5eb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
