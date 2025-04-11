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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteC.xcframework.zip", checksum: "e534570e3aa119a8bc1b2595f5205087d5fdc6759207dca4694dd09f1968fb6f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteCCoreML.xcframework.zip", checksum: "96de5c7d4253fe50065d4259c38e6573e160bea161904bb18ede65eab9c44bea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteCMetal.xcframework.zip", checksum: "0f9186d81a779b37578df502ed24db6b0688090da20a17d87db3180a2d16397b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
