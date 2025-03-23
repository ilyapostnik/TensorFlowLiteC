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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteC.xcframework.zip", checksum: "5ebbda499928a13a36b58c33415f76dda95b191e8266b47eaa357af59b145c3b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b150d65f60bb4d1303e6cfb2bd9abe7d4bc10718e0c1edc62b50460bc5eb6b55"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteCMetal.xcframework.zip", checksum: "29f3480d160f648283f4c393d70521cc9c5b36cf756a90a90c62c12db39d90d8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
