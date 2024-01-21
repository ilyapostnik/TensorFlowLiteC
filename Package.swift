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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240120/TensorFlowLiteC.xcframework.zip", checksum: "1e2e2170ea8b79b29eeb9ff8cbc61d3cfd8c733e57ca7e40c61521ebdbed2a26"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b82d4438feea8b07ee4973ae8a9aa9d560f9e3cf7abdb9f1f904c71e58c2a969"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240120/TensorFlowLiteCMetal.xcframework.zip", checksum: "75fe26321690f2ed15b7e2927ac7ba34a84fddc89a865677fdfa44ab21a420a5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
