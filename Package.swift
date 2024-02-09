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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240208/TensorFlowLiteC.xcframework.zip", checksum: "1872bfeac0fd66bed8330b02a52035f3d57e412535174810e77ce164b511e1d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f2b5bc404b4d1a0e049e1bb3d9ffc9ff42315bd5d0fb6745035f23eb978b0d5c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240208/TensorFlowLiteCMetal.xcframework.zip", checksum: "0659dfdf8a0713bd902fd49fa0d6feb101723a76b9059c720ab603738e4b72a5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
