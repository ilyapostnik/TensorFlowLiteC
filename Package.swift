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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231124/TensorFlowLiteC.xcframework.zip", checksum: "6cbdfe05d07902350ccee3860abcd047c4112dd7defe7436c5feb9f20ed5f3a2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d8fdbed9079af040d155c5c89bc9d55efc8b5f761c782b73884f9572852f2c4f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231124/TensorFlowLiteCMetal.xcframework.zip", checksum: "e5dd91fd633037062023bd4f74b449a02dbada01a2e2626c106a7c8cf6d62734"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
