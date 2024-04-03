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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240402/TensorFlowLiteC.xcframework.zip", checksum: "cb484ab7cbdb48badcf57209cf0b1d6aab7fe00d005f000100121284c8a0dd97"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240402/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f00befda9f4530f58005e121dddc7a2466cee5c8fa6345385cce17e06f4854bf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240402/TensorFlowLiteCMetal.xcframework.zip", checksum: "204b9c0fbaaaae2ab8e4e625780027116caa34f1258826114b0a31b614fd4220"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
