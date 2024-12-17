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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteC.xcframework.zip", checksum: "d30db13bf8f4b8e908a9697d35f510e2103a34f9a62ad1819492216309dedf75"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "084bc83e565b2ca3f287c299916acdf14658754f528bc36631be2ad241f624be"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteCMetal.xcframework.zip", checksum: "9f92824db66e891d446ebb54243332ad9fba48d692d2c3d16d5ccbe3a21d52b1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
