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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240125/TensorFlowLiteC.xcframework.zip", checksum: "2ae33034c442afee2c8a508c90727afa00edcb7f01b3eb63b904c7f799a2d19a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c8fb4a151a47afe516ed58fc1e8275a706d2ff2571cebe08dc6daf0084f467b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240125/TensorFlowLiteCMetal.xcframework.zip", checksum: "3e842608a027ea6ed24e4c02b90aa03ec3e6f42b3a267b79d406d3a82215b5f8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
