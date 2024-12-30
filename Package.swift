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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteC.xcframework.zip", checksum: "c509b63a8e572777cd7e6c3e177f8cbf48c1bb489a797b3a2d2e1c6456d6d4d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteCCoreML.xcframework.zip", checksum: "281db5a276a6f4be44a51dfc99ca50d3cdfd6174814d85bfb6e0f6d77c6b4615"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteCMetal.xcframework.zip", checksum: "a18f571c8f0f813e2ca35c9950fc4ab88dc1dcfd092cbf272c840048785513d0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
