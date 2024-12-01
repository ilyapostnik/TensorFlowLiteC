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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteC.xcframework.zip", checksum: "a5ecabcfcd928a0424dcab6b826aa5bb5264d13f0a413e6812330f9df4e272e9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "95570a81ca5fbba8bb3d21eeae4a3f7d47d473e00186dc2657f4d45d3c0ba081"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteCMetal.xcframework.zip", checksum: "98afa4126ba0b983edd10586fbbf6e646c28a8aa17f79fcd6afaeec3b6436aed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
