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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteC.xcframework.zip", checksum: "f782cb829afe8761042243b4d0ba583d98d88b599279633bc4d513b03e3bd4cd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7379af5025438a58e82a9c36da52e2af5755602fc4738f78115b54ab03b893a6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250614/TensorFlowLiteCMetal.xcframework.zip", checksum: "976d7114ea39ea333dca4f32d979567970fb3a453b8c77366d8f2bd273c2ef7b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
