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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240605/TensorFlowLiteC.xcframework.zip", checksum: "46105024217de3813f44bc87febafc3466a3cba11f026d5ec41e88c9d35aaf8e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240605/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1d18bde7affc0d3cb3942988a508f1e691ed9c816ded408e1249a31155002a16"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240605/TensorFlowLiteCMetal.xcframework.zip", checksum: "f03017308d93e143c2343e07ef0132adb75a0d269152af1f067d01d3826c8ea5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
