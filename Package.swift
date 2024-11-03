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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteC.xcframework.zip", checksum: "334e6914b15ba9c48db6d9ba78e3068d9d0f7f1af862c66e04bd9570707f7d7d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8945de0e6380d0f7d2c3c37e0c57a20a2acaf6c263c5a4fd8978bbe96326b260"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteCMetal.xcframework.zip", checksum: "5b18a48487840a962fdb194f5a7303d0345eb73e5db69f0bcbe18e9f703978f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
