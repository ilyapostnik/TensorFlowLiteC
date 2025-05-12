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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteC.xcframework.zip", checksum: "5846bd7eb7a18c2a3e45ba2a6ffdc1744a46e59baaeed62963e5fc83a992ab38"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a944e4766a350181e4a53a230a3f5f78c8705c31df8229e123023882741488c2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteCMetal.xcframework.zip", checksum: "be308706f93396e2403db0c9a82147655a73f5430054cde9404c55ff60b63bc5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
