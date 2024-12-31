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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteC.xcframework.zip", checksum: "ddcfaac169c48808504960374ab6e83138d841c5087576919dfead47bd570de1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e3f064e0f9925fb1d6df9addc5c9536176b94bc93217f21544f68016fc7a1379"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteCMetal.xcframework.zip", checksum: "3d41dd3cbc79418cf175c10b2b6861ae2a8d82aa1d8a43c0d554bee1f8d806fc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
