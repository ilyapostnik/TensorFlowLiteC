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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240305/TensorFlowLiteC.xcframework.zip", checksum: "0567717186d7822508177fdaffb92856244451cf6d9b7bc06b8d78f9d723e4c2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240305/TensorFlowLiteCCoreML.xcframework.zip", checksum: "511031baefdcab8e89933671218ca6e55abdbe1c1f827313a57509135f8b27de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240305/TensorFlowLiteCMetal.xcframework.zip", checksum: "06bf431819d18c7ab24a06f1f9ad6ddb835446047ab0a75ed08a717f88f4fdfe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
