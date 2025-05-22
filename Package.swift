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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteC.xcframework.zip", checksum: "af073b82d2a9774e7541085a35668215f06d11002bfedc0a4f1a475be506d97e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteCCoreML.xcframework.zip", checksum: "45956894ad260404fd582ae695f53dd0151c975503c1afd9fa0a48637951232f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250521/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c6bc59df2a102696ef327d78322a889d6005961f7ab36b1f39e419edda8a63b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
