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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240607/TensorFlowLiteC.xcframework.zip", checksum: "1ce52bc1c04bc0a5e41e1d94ba77c4d74e7fde01b21c5ed63bb877dbe54ed474"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240607/TensorFlowLiteCCoreML.xcframework.zip", checksum: "64abe0f65033e518ca07f822540be7c586b5e6d4f705f69795795d59e7710e91"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240607/TensorFlowLiteCMetal.xcframework.zip", checksum: "ca2ea31b927bf4b382cb594c70b45773b4005b1ca2cacd5e4bf2d5703cab0015"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
