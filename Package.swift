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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240705/TensorFlowLiteC.xcframework.zip", checksum: "cdb4787a3262220ec278775f2fa33be4168f094d8fccf24cb0d276119128c99b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240705/TensorFlowLiteCCoreML.xcframework.zip", checksum: "79f7fd38d6906f4347a8919d3b4f240982045eef4093903cf83d137f68a5e917"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240705/TensorFlowLiteCMetal.xcframework.zip", checksum: "d9be7fcd22cc1025ac85afd4c664efb57259135dfbe4c0b92c51cd51c030a2d3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
