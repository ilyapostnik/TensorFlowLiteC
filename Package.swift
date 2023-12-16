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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231215/TensorFlowLiteC.xcframework.zip", checksum: "3c2ce82daa92c8f7c0f5642f89d4da798d6adcb52c61ca736aab0bfa987b6591"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fd35f98245f1f7b9eb05992aebc849d3621ab2d54710510460909db1dea3c68f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231215/TensorFlowLiteCMetal.xcframework.zip", checksum: "7e39361ae4cc58856069e39f0cd8825df29f44e739d952775a90639f5b1b43f6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
