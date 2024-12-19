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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteC.xcframework.zip", checksum: "50c7f47ada4b85b4898363a85c0cc8bd829119cbcde20866cfbe41c1bb4f4bb4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "63c2bbd3a730425e37879574409f4d1b142c1828726c6ee2af091b77b2e5bd5c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteCMetal.xcframework.zip", checksum: "98dcbbdbb77cea734762ad9fc1945b619d2ed070e54d400ea5bcfb7d6c2f0637"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
