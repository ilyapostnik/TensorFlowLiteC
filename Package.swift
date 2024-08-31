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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240830/TensorFlowLiteC.xcframework.zip", checksum: "c03ecfbe2abac5c7fd46e6d543bf5f3ebd94800d0dd229f792f9cc70c05862d0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240830/TensorFlowLiteCCoreML.xcframework.zip", checksum: "154f253f9c392d89eda9ac7167a1191ad0d4b7041823b41aeb8c80eb9647a8fc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240830/TensorFlowLiteCMetal.xcframework.zip", checksum: "a2e0825434b171531362329670149e90c6504ce00ed18efa7b2d3b007f230ce1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
