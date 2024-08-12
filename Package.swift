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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240811/TensorFlowLiteC.xcframework.zip", checksum: "5073fde7ca931f0cdf43ae7e8c717addd0ef9bd2f30bb00128748a6c496b2e59"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240811/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d0a556464f7f0df096616ea258df6b5d15d2445303b0510fea3f0e1f8582b575"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240811/TensorFlowLiteCMetal.xcframework.zip", checksum: "d241435064e0bfa6f153af2b4785c0a286dbe43440c366466f7e7aba056b7bd2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
