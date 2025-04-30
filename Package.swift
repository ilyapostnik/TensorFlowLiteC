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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteC.xcframework.zip", checksum: "1761e765304021b5329ceeba4716a1a0f5a7e1de74b7aaa08d60c0076a963bb1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b8c2342102a45393914777f6ffc1de19f1cbb7aa4a0a7fea44650f042b2f1e05"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteCMetal.xcframework.zip", checksum: "ced06e7d025f2396bf62fc3bf86752518d5b2b1829eb78cfb7ec9c7850219ab7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
