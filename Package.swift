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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240111/TensorFlowLiteC.xcframework.zip", checksum: "dceaaf7360b58b02e7cf3a5131e1a5d0d6805e379a5210089f136c6656f04376"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a0d7b658a604522a8dec939c3d071769a830c4687311ee21bbc3f36c8d0d4b55"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240111/TensorFlowLiteCMetal.xcframework.zip", checksum: "b2a994ef7ff5894e25d565a73a0986a61762f89cb274c400ab26f5eb36b5b474"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
