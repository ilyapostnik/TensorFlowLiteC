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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteC.xcframework.zip", checksum: "9b01bd02939aa1b4ca9738e2e9e655a49dae67699788951a731eb3f915a1b01e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1f4166e992d471b6478eca93ba566c9eb5a26cbac7d6b757df756928db90c32b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteCMetal.xcframework.zip", checksum: "83ae80ef21805b6a99b57cfbb1420565f3979683e7eda384a929c43f70d982bc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
