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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240211/TensorFlowLiteC.xcframework.zip", checksum: "933dd87e49b1812a368d0b3e8ddf446a73c3138375670b0934ee65085a682229"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9ca2da9677a0366f58bc7c42c5f633221bd72700263d8cd0f79da0f897b58f97"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240211/TensorFlowLiteCMetal.xcframework.zip", checksum: "65e4175cde3204b6bee4eb5d83e66c4db89e7291a294c0367889b84e50c82442"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
