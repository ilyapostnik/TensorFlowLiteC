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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240313/TensorFlowLiteC.xcframework.zip", checksum: "71246ea6e725cd038014239b1dc6a53bcd7b928495ead78789ef02bc1cc7f07c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240313/TensorFlowLiteCCoreML.xcframework.zip", checksum: "053991de472af6ee183bf1a220989ffebf8b8de728c21c392f82c4d9dbc7f7fb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240313/TensorFlowLiteCMetal.xcframework.zip", checksum: "bed112388ea94400443549666a1f34a7c9c68ce2450114494bd910f32f2c347a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
