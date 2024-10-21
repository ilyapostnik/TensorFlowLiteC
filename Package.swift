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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteC.xcframework.zip", checksum: "fbea18795fd6d195d4c9c22158deddeb0a3a856ce2568d90cb83520190ca877f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7cbe393e9f6700244c15b47662db807bee2d73df111974604fc8bd091e9dfa4e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241020/TensorFlowLiteCMetal.xcframework.zip", checksum: "29ddefc78c337db6899ac79ef2b7e3055fb7d6aee5220b803604eb14e5ea5928"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
