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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240309/TensorFlowLiteC.xcframework.zip", checksum: "eef37cdcbbc20557a86c0c1b4d68572edf7b357dee3d9904b4aa3839a0272f3a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240309/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b67c5684a883eeb6e149a7842ee6d1fe803821507b0e5cb3681e9efb50f39dd3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240309/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0d48d3f2c79dae38ac2ca09d75708f2f6255f79f7ee92cc9efcbea66d0f407d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
