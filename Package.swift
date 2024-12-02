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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteC.xcframework.zip", checksum: "650e9abce4faddab3c2385fe565de01e9fda904f237636c77ad041e269667ab0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7e02d610cd72e7e4bf8cc333f1df1be54b7f2678eb066f9cc52a8ff0034d55de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241201/TensorFlowLiteCMetal.xcframework.zip", checksum: "46a8d6a83edf82342d1d996809a261f905a22837efa328119678da143dfe1261"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
