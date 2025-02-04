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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteC.xcframework.zip", checksum: "ec5699e48c336edbfec55d41d5fc944867edb9a9bc29a7b6bc30ba93f688262a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "09cdfab85cdde82c981807f4a63436d6711d6c425dd0cd29572aed64088f433c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteCMetal.xcframework.zip", checksum: "3001f207b07b812822e5d5de97093c87f29395e83066dd8fdcf1dd85d9988111"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
