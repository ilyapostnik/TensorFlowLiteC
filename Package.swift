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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteC.xcframework.zip", checksum: "fa9719b34dd7fa990748a7f2628d2461408e19ea1088a49c9d708bdd9e49d7ec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0f4863db23254d7b457e43e395edb91eee942c2f4b756e143b892f83e84e849b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteCMetal.xcframework.zip", checksum: "e512b612d48fc0255ac8ad3880692246df0139df04e34bb21685c35d15013c16"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
