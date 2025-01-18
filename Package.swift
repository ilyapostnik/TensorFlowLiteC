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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteC.xcframework.zip", checksum: "b9b15f28bed5b9e6ceff99a647f73526767342ede537cd358ed1b910819a1d87"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "25a1b6e66bc37b3eb6f74217fff1bd164dd826e0822f2b39133eea532e033c35"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteCMetal.xcframework.zip", checksum: "940de62f255220e76325f98efc59b27ee28c0f9a659b79f2b13d40c01f62f970"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
