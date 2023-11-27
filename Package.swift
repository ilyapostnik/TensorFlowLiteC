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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231126/TensorFlowLiteC.xcframework.zip", checksum: "4198d24a7e1707e530d4234473ea7ffc6a47ea9615f5f87cb00af1c7ff9de94d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "47f74bc7889438a24379f2d536a5dd2b61431bca8dab2add362f8b4b2ea01a05"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231126/TensorFlowLiteCMetal.xcframework.zip", checksum: "29778e88d14e05c8c6beb422a850334c208de408672672c201f3b1ece032d348"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
