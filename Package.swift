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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240422/TensorFlowLiteC.xcframework.zip", checksum: "02ad83f2bb5b22f4cdbab5c7875a181c5f509c389214d84a15741e0d08a23399"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240422/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fc15c5daef8f65c17b5bef7db28167452f5126c942dd62ad8bd887064e9769c5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240422/TensorFlowLiteCMetal.xcframework.zip", checksum: "556a256c6503ec72806d0dfe06741c0f2f726eff39890647c35fc544430a18ac"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
