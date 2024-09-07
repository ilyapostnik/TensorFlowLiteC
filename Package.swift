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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240906/TensorFlowLiteC.xcframework.zip", checksum: "f9d2b5d5d1fb2f0b019e4b7c5f38f2d0b9771da97b0b98ee494fafd45b99597a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240906/TensorFlowLiteCCoreML.xcframework.zip", checksum: "03df9aeab708dfbe3f2608004bba4784f0739b94e3a0665ea2ff43d5871e722c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240906/TensorFlowLiteCMetal.xcframework.zip", checksum: "3404a3e0af656a1b9f06f2a81c62c1b60e7e28600d3583d5d89f0a14f4b76439"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
