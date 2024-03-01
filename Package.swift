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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240229/TensorFlowLiteC.xcframework.zip", checksum: "e8cdf69afa25a9fc2d75811ab9fb7ff522a7731a0e155b1ef571337840b19dcc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240229/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e87abd726289d252c96ae9d23fea400f01bd38c64fc7c8882d8b791421dec393"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240229/TensorFlowLiteCMetal.xcframework.zip", checksum: "19024f0781412bb10a5e7ac06a297501f6026c007e1b3023979c66c4c6f30e3a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
