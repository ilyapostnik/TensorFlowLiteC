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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240201/TensorFlowLiteC.xcframework.zip", checksum: "1b645e2dd9a1a99cbb35fc6d158dd5246b01c4a16cf6e096b7259c89d85071bd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ab4c5d6e601ab08c32105300fe30c8ef391de1ebc03023cc830d31d77df7f4f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240201/TensorFlowLiteCMetal.xcframework.zip", checksum: "371b3e4c7cf5d223c8ec8f163984befc9205be58b8d05d040fadde193a3a0aea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
