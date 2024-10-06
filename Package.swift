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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteC.xcframework.zip", checksum: "c6f0b9692085af7352961b87ec6edbd01ff1c0c94ccd904a291b0be00db53d9f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteCCoreML.xcframework.zip", checksum: "09c2c02a5b042432b4dc83737faa6e073b338652c1fb19dd0a249c9610c0472a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteCMetal.xcframework.zip", checksum: "e32a8b6cabcc460a8cb49926b4d5f2e13484dd4b96ba762b4da1b430f93b08e2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
