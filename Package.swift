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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteC.xcframework.zip", checksum: "0b24f2d302128906c526ffd8802d95b85711d3261555295005013203c772f421"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "24741e3094052ea281853d998fc0dc89254f402b136b19392747e57177aec2ed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteCMetal.xcframework.zip", checksum: "4462f1a5014c21086e40bfafd5d19596e2b711b0d3794f0719b49ec7e4117f39"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
