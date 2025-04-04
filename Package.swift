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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteC.xcframework.zip", checksum: "e3df880fec8c56c91e5d2380cbf63137e62bfd11c0f51b4273f71d288f974348"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteCCoreML.xcframework.zip", checksum: "73852abfdf5941776d45d724322486304d5628884eb26cc5da3584ca3042f7e6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteCMetal.xcframework.zip", checksum: "5563875cebc00f0e45b5747f89ac6c3c1fde82159f84b2b0f74d84279f76b178"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
