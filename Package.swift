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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteC.xcframework.zip", checksum: "2ff5cdee85a80ef511b4f3b947ef12aac69d31aa0290eb7da2f15962852001f3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a6f9e9f7897e2423d93dd73272e6a2b0d26d99b7205327cf97adce0c57f5d792"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250411/TensorFlowLiteCMetal.xcframework.zip", checksum: "c0abdcf535432b21648d672ba7a8c35efc3f1a862707773f123704829be70463"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
