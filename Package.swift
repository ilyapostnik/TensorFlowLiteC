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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240130/TensorFlowLiteC.xcframework.zip", checksum: "de30520adca6f828afb661a91ba889eb05d284eb45b1d476db5957cca65628e3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "80727725e2fcb79eb5b26a2a85ac6476f403c3f7f7d4eafe66c23cf4e7ba6d08"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240130/TensorFlowLiteCMetal.xcframework.zip", checksum: "88bdf2e7908d0c6c527dabec48c84a9de4ffedd4fcab831c2d95316b9273e2d4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
