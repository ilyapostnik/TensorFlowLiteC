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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteC.xcframework.zip", checksum: "d68829211431feff1e6334b5f146de0b9de78b3e6ab9f4ae42025f8bb3f7a833"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3fb646839885cdd68389664513ab42f8960540d7bc68c176d0d9a6c998ee397d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteCMetal.xcframework.zip", checksum: "bfd6dfe3db2b58902fd8175aee7f7e14f800dd040eef25042381e2c4f5f71b71"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
