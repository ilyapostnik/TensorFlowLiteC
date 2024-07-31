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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240730/TensorFlowLiteC.xcframework.zip", checksum: "22c963cc51bcd002a8f42e795535b5f8ac9c5b2ccf0a0ea5ea0011f5f544dd32"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240730/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a93666b8fe3724e234696d58a84bb94dde153f5d58df5ba5b87bbf93cfab4845"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240730/TensorFlowLiteCMetal.xcframework.zip", checksum: "d334a894dab405cadd9c2cd23588f130a5f9460cda4d69552890c73a6436ce42"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
