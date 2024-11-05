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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteC.xcframework.zip", checksum: "d1f5cd514ce5011225f8d791f403b8ca37a69ab860ef5efc731f6dbc935679fb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "526d22187b68671c0c40aa2bf583cba784cc1cce9f20aee326428321f522adea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteCMetal.xcframework.zip", checksum: "11cbb9a58d126cf533b16e0cfa157148e05bd0345d95ce1ad165724ee6199873"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
