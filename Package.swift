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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240528/TensorFlowLiteC.xcframework.zip", checksum: "d519e0d32d0ca0abad114f0b20acaeb5a3e1933a15e6ae4d21370ef474973257"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240528/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d63cc4409a464dbf28ff15054799d0c5ec3f22b83ec97f2ab0940423027f6857"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240528/TensorFlowLiteCMetal.xcframework.zip", checksum: "f489fee04e2f5cf3d59159505db8ae10466208f8c8642fd706c531655523fb73"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
