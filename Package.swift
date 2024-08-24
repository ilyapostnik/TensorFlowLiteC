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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240823/TensorFlowLiteC.xcframework.zip", checksum: "79d13c0c47f69de653c1fdd0040454e80ab29be189949b612dace32377f5f930"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240823/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6fd2e9c55bb7549bc10db441ed09e400d2a2371627f8e1ffae1cbab272abd8d3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240823/TensorFlowLiteCMetal.xcframework.zip", checksum: "a1be2c6cf7f4f37aae54d57db3fd9b2ae4404c7715e7de4cdccf9554212a179b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
