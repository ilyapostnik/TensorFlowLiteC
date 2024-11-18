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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteC.xcframework.zip", checksum: "2c28f0d1ba0868578baaaa55bf6d16a4702c6e576a9684a37bb7f50a9da25b49"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2174a0c1ee5bc59a2bf177d01d5446d5393aa14d37c83b7e4f3905d967b34d35"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteCMetal.xcframework.zip", checksum: "4f051e104939f198e11f6302378ef75ecbb3544fc3b889919f7dfa9dee4fdbc3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
