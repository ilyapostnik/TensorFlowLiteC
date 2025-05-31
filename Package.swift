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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteC.xcframework.zip", checksum: "3d85dd5ee4b0c0325d59b450cbb006b84382c60123f540564adc8fce3668874a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1d46813a52298017dbb76ddf996687a7c2be713e7b437f4a6912acb6f013270c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteCMetal.xcframework.zip", checksum: "11695ba32f3e33dc2be5eb4f87ee09c6153d47058f668fba867eba0dabaa4156"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
