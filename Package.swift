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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteC.xcframework.zip", checksum: "4fc4bee7ca7dd8cab0a9e2c8fae5ac89c46c1bc44744f245609e17851b3896a4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c826cc6caab0e4e9db1529e43833aa225c451036b3c34bc58f72bdb9d8b504d9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteCMetal.xcframework.zip", checksum: "abcdef2a43d6385104e5d3cd246fc627ef175b25c6ec185aca1e9186a9568f20"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
