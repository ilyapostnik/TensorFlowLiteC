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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240417/TensorFlowLiteC.xcframework.zip", checksum: "7450ed88608057bf77fe4ac293da635413a6c9b49321695590aabe173e132a7c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240417/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d5694bf41e6eaa2dd24fb1dc3e673d78055bc27b377d5cd523b5ff0f4817cee"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240417/TensorFlowLiteCMetal.xcframework.zip", checksum: "88856dd4a9ea4aa59dbd47add0c4c94753336731fceaa7413080c949cc0973e1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
