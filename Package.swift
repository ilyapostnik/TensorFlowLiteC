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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240325/TensorFlowLiteC.xcframework.zip", checksum: "ae7c6ab48e25b9f8e69877b03d00e66e98e5cb3e7bbc7d0de2cfbd8b5826959b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240325/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f5bf4ca4ebbb3caca5bbcc0ffbf2cc65ef2a4df3be76503d44262cc11af153a4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240325/TensorFlowLiteCMetal.xcframework.zip", checksum: "08b5dfa30cc8ca10250e15f5072710739361b380492d360a136015be6f19c669"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
