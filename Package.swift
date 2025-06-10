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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteC.xcframework.zip", checksum: "ce46444bb0a142b9fb7cb4df04984d9f8f1b7e2d97bc597e2a50f1722c012dca"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4be0c60d7fcff74badc418bafff3db0ed72ae20d65cbc84d077bab41ff35a346"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteCMetal.xcframework.zip", checksum: "01f6c53533649ffdfd2549788152b363f77b30fd43ccf3338a6b2c8eeceb5176"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
