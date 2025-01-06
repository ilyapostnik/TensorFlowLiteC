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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteC.xcframework.zip", checksum: "d43e7be371def2be200bc52c7f614e75018f314f4641e9e6ae56081b9bacb888"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4043752bee4ae0e2d0615ef8770bf370f0da833c0920e95ce299c2b8460bc149"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteCMetal.xcframework.zip", checksum: "c73d99064593714c5576f32a6737bde053daea09d8575ba0e863c78be96ab209"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
