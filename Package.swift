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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231207/TensorFlowLiteC.xcframework.zip", checksum: "15d5a8272ad7ac05f6ebef6ec09c68ea92113b494132bda61b34a35677163d1c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d1a8eb65985bc6c4dee2b62e076505d0cd634afbea6ab33114558ded07f94e51"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231207/TensorFlowLiteCMetal.xcframework.zip", checksum: "f81542e1a311a57a6c7a69b6b62e113a854cd48d5d1c0466ef1381273045783c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
