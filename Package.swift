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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteC.xcframework.zip", checksum: "ad76765059ce51634a1deecdaaa9ea57fb9d754f2ab61a324fa7cdf293ee3b3d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b0d213bf94e85d3089f39e56a738272339a48d3df2f7036e4f0c02831a2029ae"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241224/TensorFlowLiteCMetal.xcframework.zip", checksum: "59912b1ee7648f68e7a659a628011fd33d5f59d7dbfedae96b29e2e6ac92207d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
