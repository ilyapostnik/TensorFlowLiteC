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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteC.xcframework.zip", checksum: "303468d3c8507e1ff82d6d7caeb1deff64886aadcfbc33715ad38bab50de0424"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteCCoreML.xcframework.zip", checksum: "880d2a2b856a68ffedff0687814422b332f1e42558200ffe99c22652c61b0a10"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241013/TensorFlowLiteCMetal.xcframework.zip", checksum: "36e10c41034cabdd01994ec364f679d1f9a9f045423186e7b48b0b614e7d4cab"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
