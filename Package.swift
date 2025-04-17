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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteC.xcframework.zip", checksum: "1a694526e758667bfe4d055c95f56675d189137825397a7d6ab2caca6d61abb4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteCCoreML.xcframework.zip", checksum: "88f515f15c45d1373ee616aa2a7c56a2baaa11bdda891c51d5d7875c22d8dcfc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250416/TensorFlowLiteCMetal.xcframework.zip", checksum: "bc2afe4331e783eb3f57976b1e05c2a82dafa13f853501cbe805bc7d2bd2f77f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
