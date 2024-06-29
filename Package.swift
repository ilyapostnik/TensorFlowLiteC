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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240628/TensorFlowLiteC.xcframework.zip", checksum: "abf8a51fd40547123eaabaa1e55618b1f6b8ae8cc6ec69f18b29d52a9b03ee28"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240628/TensorFlowLiteCCoreML.xcframework.zip", checksum: "86fcb1b1c914e997682f8c344831f35131ae3aba5abd5911fec7389abee7ddae"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240628/TensorFlowLiteCMetal.xcframework.zip", checksum: "f7b23c734e62ff9069f0f60b8b60f88b5020bfe320b61553e24628ae396f1d50"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
