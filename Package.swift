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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240407/TensorFlowLiteC.xcframework.zip", checksum: "00c0d637271b298949c420d6a1d3363906e247c5b806cd742b4257add72cac9a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240407/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cc93aad3552354eb2c3089cfaafe349a1ab9c5533117cbe9132c8f406089132e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240407/TensorFlowLiteCMetal.xcframework.zip", checksum: "7eafd55eb81c8aee202def5808e08a65803dd9026b83fede02d5004ad6bcce2b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
