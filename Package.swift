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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240412/TensorFlowLiteC.xcframework.zip", checksum: "fd3eb11a43016e967797216a75c7f719cd524b0b011e1541dc0a03d4dbd9b7b0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240412/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c80f523c99d45be3233478d4eeb771b1f4c8ff85c94cd7020cc29b9c2e50f0f3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240412/TensorFlowLiteCMetal.xcframework.zip", checksum: "45df5d3dd348bb50aea189844713672800a7aeb853169e6b37576665beb9df02"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
