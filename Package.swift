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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteC.xcframework.zip", checksum: "cf03f8111f05038f49f7d55b35fdcfa5f95e51d4c07da69744ad3d6209dc9644"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c57bc4eee8b745e36a45916c9b85e1bfb4bcc354903ec7f4acafda3e4abc97c7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteCMetal.xcframework.zip", checksum: "948d3b9f0e5388a26577cc1ae65bfedd1cf03516c0e12161e6c89dfb8ae36ad7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
