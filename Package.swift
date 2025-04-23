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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteC.xcframework.zip", checksum: "c02c6a2d854b2b03fe3fba038529787b7bf670a7a1ac70ccd864e5cc9ae14574"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteCCoreML.xcframework.zip", checksum: "afc7726fcdf481e0799262362c7109ae60d010ee61d96f4852d0ed63d3abe8d5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteCMetal.xcframework.zip", checksum: "3a4008ea6da55b751ae6cdf8f42feb70bfee1d2dcb99abf9a40cb45e06d73450"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
