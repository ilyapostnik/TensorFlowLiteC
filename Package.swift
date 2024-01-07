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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240106/TensorFlowLiteC.xcframework.zip", checksum: "c3247289649ce75e4ad37673050e82d815eed09c0605ce2368acd1b8b13f00ef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3cf12dd5d6dc36842fc6bb471c8c33c94818535ff4d2e9e0052bfa2a9414de63"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240106/TensorFlowLiteCMetal.xcframework.zip", checksum: "2dd5bccfce9236f3d3de9a2c3cb8c4878d6071772e45a46a9eef233707d57c53"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
