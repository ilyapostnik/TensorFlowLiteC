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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteC.xcframework.zip", checksum: "8d44ea52be963e6daf8f8c36c7be5c16a7890f0e51834f0782998baae74e315e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cd474c404814c0aa26daa69c1d80ec43b00beebc2cf053a1040803c8dede4b9d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250318/TensorFlowLiteCMetal.xcframework.zip", checksum: "649c28802e53879506d6c7155192effdb12e1dfd7d29a4372563044b914af80e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
