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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240529/TensorFlowLiteC.xcframework.zip", checksum: "28b23e83e40dcf542ffddbd3ac10ee21802fdee2bf471f30b3e115c18773eced"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240529/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9f203c1c14b014706e35f7dfdc107d691cd498399bd8a9cb3fcc20a8a275eca1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240529/TensorFlowLiteCMetal.xcframework.zip", checksum: "bba22bf521275622b897183d71799df9baffef766210ab1b68c250dfa40ae8d7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
