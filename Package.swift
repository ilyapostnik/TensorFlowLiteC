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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240810/TensorFlowLiteC.xcframework.zip", checksum: "b1e7f2e9135737f786b72551a8b6d9a6eae36739bad3821adea4f6584678f994"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240810/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5553580162e1a3ee3478faa21eec5a03bb77e5b8395335d444a4c75084ac657"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240810/TensorFlowLiteCMetal.xcframework.zip", checksum: "3e2e959419c843921d5be8c505329846dd370c49836c2f207cc5e43412de1e36"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
