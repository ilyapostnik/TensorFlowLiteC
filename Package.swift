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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteC.xcframework.zip", checksum: "db1f985e5c625ea3248368d0c8214348be5f100f1581d916e9d86754370ffcab"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b39c2fa685e2c09f08a59164c0da1609633832b87b33b86facec9988b193e737"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteCMetal.xcframework.zip", checksum: "b98dfe654a1a71cbe8b79019ef70221aae9362a0058dff6f85ca4b90ef202763"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
