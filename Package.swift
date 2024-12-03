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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteC.xcframework.zip", checksum: "92393f2662c036058ae8d13e42623974df4da589c7105b1608a68b7b21ddd318"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1e6df32e50d6e5a66f931639735b36259f5f7bc7c60a01967ac1c643c3ba0391"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteCMetal.xcframework.zip", checksum: "e4768b5d87962b7040704bd4e3f393b0cf4a17d6f9fabe6d0c0ad33324149fc4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
