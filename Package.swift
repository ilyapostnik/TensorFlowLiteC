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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteC.xcframework.zip", checksum: "06bcae136dc1bde92730fc6c0036662d23c28f11b0561cd7120247d844077853"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "da3166674b44c6dd27e24f43ef170c4f50d6093e0ba805639132fac1dcc957c2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250124/TensorFlowLiteCMetal.xcframework.zip", checksum: "a42d94641168e6a708c940ae2d801b28b1418e0129f411226f1f7a69cb7f759e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
