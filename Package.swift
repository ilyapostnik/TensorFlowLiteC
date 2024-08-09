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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240808/TensorFlowLiteC.xcframework.zip", checksum: "e1369e85ebfcf2308ca137b255e57b80549916b527a078e0d7429eabacdff494"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240808/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bfd697b0e8c2ede85edaa5fccdaf5d5268eb5a18966a07f9df8a03c1bc9539d0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240808/TensorFlowLiteCMetal.xcframework.zip", checksum: "81f8aa95e90ad77c73de5daa49cd717ed40e89009cdd2c75e50055203fd87066"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
