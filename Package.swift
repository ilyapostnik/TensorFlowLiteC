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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240425/TensorFlowLiteC.xcframework.zip", checksum: "d4f9baa1e491c392014f437964c5bce6f03869b82c4aee20aca2f7306576ce51"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240425/TensorFlowLiteCCoreML.xcframework.zip", checksum: "702e97082c287997d9e141f7f9ea2989f17b89a8809de8d2a34068155d6d6bbd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240425/TensorFlowLiteCMetal.xcframework.zip", checksum: "94c254468e907509c4f1056a3c0cbfc54547d46efa6d91f5b8faa5ec802f0869"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
