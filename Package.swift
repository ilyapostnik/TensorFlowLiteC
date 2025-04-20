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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteC.xcframework.zip", checksum: "3bcfbf0e325556d4f55b5e3b67771e460383044f87128d2f4be38022411750a3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteCCoreML.xcframework.zip", checksum: "43e66389c7062a46eed735fe6d7739f7cfafe2a0382ada2fd0e83d4c75520199"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteCMetal.xcframework.zip", checksum: "a03be217b7a0d0736426379d02e32bdc879ac28bfe404ac63de173bf2fb42f41"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
