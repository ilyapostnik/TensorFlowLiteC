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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240731/TensorFlowLiteC.xcframework.zip", checksum: "1c91e7c6e85fcc6877a0280122e107e9b5ed95ca400d9b48a04b2c32210a11dd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240731/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14002636cbb5f12314d63c495f290d7619b0425cf0ccd716772a6e09de96d8a5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240731/TensorFlowLiteCMetal.xcframework.zip", checksum: "b022418bf5eb542c5c11c04f5a63d25884cafd02a46658309f9a73d60d34c1a1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
