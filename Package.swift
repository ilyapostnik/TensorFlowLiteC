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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteC.xcframework.zip", checksum: "ad0338cfddcf00cc3ad96239e72ace43d0e4178b5af5bf45422e5d6d36a3dfcf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5bbb2bd30577d0fefae5355f5829b6b4b8fc57bb976675d2c86686d9aff8e268"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteCMetal.xcframework.zip", checksum: "10830df8f960540ab68edb33efa1009ce054efce7c4b01bbfed8d4c41cddca64"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
