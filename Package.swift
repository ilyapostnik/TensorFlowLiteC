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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240503/TensorFlowLiteC.xcframework.zip", checksum: "3159a78a56d7a57967bb6da39cdc72613e68612cf57f859d4045bf25f1f10cf1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240503/TensorFlowLiteCCoreML.xcframework.zip", checksum: "113d55069080b1e08baf3525b08099e117afa2616cd16f70d58bfc8b524d645d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240503/TensorFlowLiteCMetal.xcframework.zip", checksum: "891d5fec2a1ceeead15be88891b25793246185e9c82b42fc822fce2d97a6f6cf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
