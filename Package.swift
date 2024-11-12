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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteC.xcframework.zip", checksum: "6721419af995197a7895e7b56041d7f6d2dec3c8ec646da54feac19d2feaa9bc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "92594396e405166c52b144ed1ae837bddeafc7b2801ae8f5a8ef8c5fb4cb78df"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241111/TensorFlowLiteCMetal.xcframework.zip", checksum: "e1ae0d193b6426b2012c81f7db8665d4d7f8c39430a685a99c6f96f3a9e2e203"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
