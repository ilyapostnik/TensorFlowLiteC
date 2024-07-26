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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240725/TensorFlowLiteC.xcframework.zip", checksum: "f67cb902abd7b920f0eb1c36568e9ca811a8d372f94ce4dc83b400486c2b61dc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240725/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6cc2320f4652c543c9590c8a1e9801c4f603bff53e10ad9bc64a22faf0c90ea1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240725/TensorFlowLiteCMetal.xcframework.zip", checksum: "0400d72aa05a1e2c306c027ec46ceec930b3524fe20ae92c734e03ebf6a56061"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
