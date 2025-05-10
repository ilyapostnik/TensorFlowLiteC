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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteC.xcframework.zip", checksum: "a06abf51901b2b43680790f26f1fcb9699c0d4ad7c7ce5d7f7aaba122991ed18"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b06c32931020b914966f5cf72dff1047ba31439a69527dc0ee94a7ec063d4b90"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250509/TensorFlowLiteCMetal.xcframework.zip", checksum: "688964a3f889e04452d3137fee99ff3ce2256645cac62cc7c179bee9327b5965"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
