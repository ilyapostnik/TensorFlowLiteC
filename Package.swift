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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231208/TensorFlowLiteC.xcframework.zip", checksum: "de731cb83b2257b0ed71a130eebeafe4cfe5aeb131d9d652dc2ce8d1db2443b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6d50cd346e1931651ec00a706cf006db3930939d8fdc6b5e1c84bb969a122d2f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231208/TensorFlowLiteCMetal.xcframework.zip", checksum: "718a667e96e8175101f759374f156f3b5dd2beed0a0a2cc2538b1bc9ef2bd13d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
