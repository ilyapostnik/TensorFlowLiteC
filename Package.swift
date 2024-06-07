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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240606/TensorFlowLiteC.xcframework.zip", checksum: "ec2f7abde92c7e0e1f13401e1e14e0f0834019850a90b8e7d5a9087b41fdab52"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240606/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b22157d27a33006257534867881b9bf1f335f1a499bf36901f31ea7a65c61d3f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240606/TensorFlowLiteCMetal.xcframework.zip", checksum: "9ad5e88a36866cd5246f99faa35a74741788da21f394c9c75b59f1d3c18758e1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
