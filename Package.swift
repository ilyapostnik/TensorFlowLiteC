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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240202/TensorFlowLiteC.xcframework.zip", checksum: "e17ab4ad40d4c7ba7e45eb855bcfac663eeb187984417a6efe3699d4e256acc7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1d26181101f7d6666bc148fe90faa625691c6b66857f6d6b032064598b8bdecb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240202/TensorFlowLiteCMetal.xcframework.zip", checksum: "a106c893972a03ae3d7a695be75990cbb1dbcf20be25f3bfa6e88695c83bf99c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
