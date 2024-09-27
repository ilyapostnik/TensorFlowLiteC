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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteC.xcframework.zip", checksum: "e36e6f1a6dd1e5d818b0eb3a176ce614ae16cf0cd618174e4cf358dd5a43b7da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1f292076d0766f44b2228d1eceb2bbc1c926dbf2f2caead7e2ea349185aa76a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteCMetal.xcframework.zip", checksum: "5cce5282d8bc00eef450d4bb03c09bddbb9bd565849f6616d926523db71c430b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
