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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteC.xcframework.zip", checksum: "87bb89f844e0b2a4f43006ab7a6988a01d75294cbef03bbb14a577f99f02ff73"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "092b9bd2dfefaa4a466f4a1332fdb1b868ded0347ccb30ba27591a5b3fd34c9d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteCMetal.xcframework.zip", checksum: "a1b0767eb67d344566fd97e96bfe052e88aadf7ea398f86a4365b04293970e0a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
