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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240227/TensorFlowLiteC.xcframework.zip", checksum: "8b9fd58d50d7b4eb807088fceff49dcbe3dead4a7190ba69dba5397f7b7e29f0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4a1014d1210b0fae1d2cfd0e1ac3982ef488801dfa9d7f1f4ad78cc2181ffdc6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240227/TensorFlowLiteCMetal.xcframework.zip", checksum: "b336cd992622e327e1b0ee5128247913ff17a5f3342be9fa6bdae0cc92e793da"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
