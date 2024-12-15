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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteC.xcframework.zip", checksum: "6a0d9e49c09e76d169d2b36c90a18a0d0593a3948f1328f969d4cd28de9506da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b281532aa2552a3ab5cfa268eaad236d66fd21b93407dc97f45e4975cae303ea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteCMetal.xcframework.zip", checksum: "f1f4a95e807848a9402dcdc94247c71dd16379116559d150ebebb2aa3898a08a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
