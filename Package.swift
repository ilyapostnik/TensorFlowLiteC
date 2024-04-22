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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240421/TensorFlowLiteC.xcframework.zip", checksum: "6cac96c9b881b51d148f8632d72f59a65d86473328b9af86fb2406cadb079c51"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240421/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4c591de5b631543202e4d35821913112ecb0f6a333fd028c2f5098669167c163"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240421/TensorFlowLiteCMetal.xcframework.zip", checksum: "078697e2d3f6c7e31e6d33373954a7201b609057a26df0d4725c3fdb3e34aa20"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
