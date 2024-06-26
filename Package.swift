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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240625/TensorFlowLiteC.xcframework.zip", checksum: "96829895f16ee5966c864e627885bd315242b0d744c420cc0210e434155ce456"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240625/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1e31e980f09a810c107b7a6952d65331f795c30935ad1732e01a417160a929f6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240625/TensorFlowLiteCMetal.xcframework.zip", checksum: "f70241602f664b95e29ea4b5a4a03c57a1a796db7a89da32ad8f5b88a8bb5c80"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
