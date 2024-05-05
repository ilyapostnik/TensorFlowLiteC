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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240504/TensorFlowLiteC.xcframework.zip", checksum: "908f213d71e15a88cc5e8c72d8e40f73fcd19abc1821be8f18cbd3d79fe35eea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240504/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c7e47e560cef965d66391fda1f27af61d4a7824a5d346c628d2c9eb877bce59f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240504/TensorFlowLiteCMetal.xcframework.zip", checksum: "f29e76bdb0512d108438f1536d5432a94e6e2cce8249501d85f302bc02ff227f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
