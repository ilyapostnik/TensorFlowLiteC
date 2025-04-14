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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteC.xcframework.zip", checksum: "84260834d9c02ed3b2bffd27bc539c70590ec52d6f8681582989e2565e67b89e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a10ffd3aebb93353ac071bd6f792a7f601365a596576c4268ebbc7a5503d7da3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250413/TensorFlowLiteCMetal.xcframework.zip", checksum: "e51111f81cd85dc9858325662c2e95bc2cc4350e0548d27d6f80dd489899ea82"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
