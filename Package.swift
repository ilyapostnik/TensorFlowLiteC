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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteC.xcframework.zip", checksum: "6275a527ac7f14e02600aeb7c75520ba26d3ab1070e68a925da0fe06e4f8c002"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteCCoreML.xcframework.zip", checksum: "80b53071cac9564d58f03050f20d9c0e76a177b626ae342bb9c7a452bec151ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250319/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d7e1aa654c21e4b6b625581347825d02d5c6813af7397ca002f220b5b17ef7a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
