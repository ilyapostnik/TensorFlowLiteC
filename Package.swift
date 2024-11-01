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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteC.xcframework.zip", checksum: "0bb72e9739d2423e5149d401bf43ac4c3f9a368f9c8fa66a111947c33e447833"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f6caaba81d5b2a38aa236613cda59902d0a66bbd22d9aa67bde4a3a59150695f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteCMetal.xcframework.zip", checksum: "81737dc38bec728b8cc2e128fc21d050ad022d114b8ceab1ebbaa00f440d2a13"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
