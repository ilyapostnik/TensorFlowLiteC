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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240406/TensorFlowLiteC.xcframework.zip", checksum: "d6896bc0608672cf3f222567b96d78f66d2999643b650777f8c38edefdfd1a65"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240406/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7b6ab6b3b9230e27f0ac85cfe9bf6713b78ba0ff03d8a433d3032058eb942fb9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240406/TensorFlowLiteCMetal.xcframework.zip", checksum: "8b7a505950d0bfbd64d5f571d08078f42b3f74a2665a8f449730cafba85aa127"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
