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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteC.xcframework.zip", checksum: "0b93d5c45a3df4f0c43fa6c905cabc3525b65bb8dd5826f6641d6e4dff06cfe3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a52d2f8100309e02e964f881530ce90150b0e9a62ea9feb0064a2c92b99908e4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteCMetal.xcframework.zip", checksum: "6cf4d547b56f8369e77c0bff9e662607890d4f5425ebf18d00c8248961fcec71"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
