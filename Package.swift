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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteC.xcframework.zip", checksum: "1090d87ee98271c2bb0ad5c9580394d34cd47ffa7208675401a2b40080c9e901"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f44a6cfe44ee364feba89261a5df2cdffb6cfe45641c46fdb4373a9556c6986f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteCMetal.xcframework.zip", checksum: "64f263eda89c0e7bd6458911d097bcb283cd521583062970f3e05b0c238eeeb9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
