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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteC.xcframework.zip", checksum: "6ffc3b05d12e2532e36eeb86fe38ad40a2bd9127babe3e33730292f61abee5be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e669bbeded3693d2f6adc6446fce6488974953224834f32b0bd622190a6dd630"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteCMetal.xcframework.zip", checksum: "3af7675faeb51b3391c8d1fa96e096de9b481f047757d8db6b5562ea531a864d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
