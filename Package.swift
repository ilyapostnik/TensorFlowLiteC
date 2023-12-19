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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231218/TensorFlowLiteC.xcframework.zip", checksum: "882ee090ec2d59ea432dc191c92d67da4c122c4d63142ec81400f499504598aa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "627525319d46a1167c8af4408b2942fc2511e684bb7f1fcf6481559c4cd494a8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231218/TensorFlowLiteCMetal.xcframework.zip", checksum: "a67c7e15e2ca1b25e9c4b4c80bc31e59242bcd6323923c09ec4be29062d363be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
