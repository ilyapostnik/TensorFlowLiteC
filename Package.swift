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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteC.xcframework.zip", checksum: "229eca2a01e3bf1e24ab5fa3ab718eed3b55a99b7a961551553d06bad45d3cfd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteCCoreML.xcframework.zip", checksum: "523a91e0d1da77a757ee1a2a8f4bdbb1536546ce6f9a9db1cf0acd2f911437d3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteCMetal.xcframework.zip", checksum: "41181a99463dc185a578758baf596b0330d442cdaa13aecacf1efdb647006110"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
