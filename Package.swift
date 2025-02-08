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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteC.xcframework.zip", checksum: "fefd077eb8f04c5276aea3c96427af3b2b4bf090f52cd6a79905d2d4d1722fbb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "37558785a30c36a4657faa7586237f9c905a90e236f27e57467ab71a6605f3eb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteCMetal.xcframework.zip", checksum: "b3a4cd5991c7cb8196a9c4a4b12c4f0041b1c79c6e7d3df063f1ea1ede3ad475"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
