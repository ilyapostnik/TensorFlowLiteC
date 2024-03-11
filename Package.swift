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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240310/TensorFlowLiteC.xcframework.zip", checksum: "b348399b1db87e402639af82ec07bfefd4bf5a8bcd3be8a94b90d956bc03b00d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240310/TensorFlowLiteCCoreML.xcframework.zip", checksum: "832b3686babf0e4708cef310e5b8f596dc6bca7fed70c6fd4b0368816568d733"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240310/TensorFlowLiteCMetal.xcframework.zip", checksum: "1616b2cf37659d682ab383f91c89582af931d8d0d2896a92ed93e42ffb98098e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
