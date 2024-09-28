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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteC.xcframework.zip", checksum: "2cbd1ef920f662375197947ad324e72183b540c3f6e4529d1b460b707b208f20"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c324b5487ffe13a6695f525463ac04d8288a2644b23754cc50f50ddb146e66ca"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteCMetal.xcframework.zip", checksum: "4e5d8a6b1364d5926aa56ea981390cd81771ffd9d2a8a4d4ecbf4d60d9e23a33"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
