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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240205/TensorFlowLiteC.xcframework.zip", checksum: "de46eb09b4dda0405c572635f8f5eca913e4a93646d5b764281dd99f446a4ee7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a22cb2bb57f49d110477742dd6583ae379e8d87681507e55322ead6ea5173c34"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240205/TensorFlowLiteCMetal.xcframework.zip", checksum: "d82f2e5f554dc46e88199d07151c8a388796bd5e8ca733b5e6e44b8aeb86a787"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
