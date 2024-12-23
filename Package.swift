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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteC.xcframework.zip", checksum: "01a139e2f87ec808c094d5c999ea4418191b576950f0f627a90a72342f7b4b6e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f89c87a60fc1017b9893fc96a762c36492964049a65c1fe31212ec972e586085"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteCMetal.xcframework.zip", checksum: "749ccdb0073519b0995172e64921cf17036b69dada3d679ed9a4f3d63757400e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
