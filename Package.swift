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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240216/TensorFlowLiteC.xcframework.zip", checksum: "74f92e3b65811bd4fcb41aa8c01587e27635ca14b8d42ff076031cc36d4ae4c9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ade03f7231e3ab9684923c1d6222c934e6867a421557e4f450eb89caafdfbce5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240216/TensorFlowLiteCMetal.xcframework.zip", checksum: "443c8b5687216ccfc9bd5132edd69ec8197ce55f13c14748a188c6555516bece"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
