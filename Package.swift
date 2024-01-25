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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240124/TensorFlowLiteC.xcframework.zip", checksum: "b1a5c38ea877f9fe335f8ffd9206636a5be0406274f71ff52efaaa4c3baaaee9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d0966e7f8338b0e7eae1fc85d327e37a381f87045ca30fdb63cc8e6430a66f59"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240124/TensorFlowLiteCMetal.xcframework.zip", checksum: "897f0fc714f4e56c5585af595d9ca8259e4666b5fa2067b51972b31f45792214"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
