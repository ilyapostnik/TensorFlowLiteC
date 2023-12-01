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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231130/TensorFlowLiteC.xcframework.zip", checksum: "f475136e722367732b44f1e0f7e9022aeb8b38a7336f56044100aed0e54db729"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b108de95158cf9e29532bdab48bd37f5732e7610e2a1b5ca5290cac8773ca986"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231130/TensorFlowLiteCMetal.xcframework.zip", checksum: "1ab013ba7e8efbd6a40a26b8fe9ca65b79a18cb0c889584f0c58fa8c709f7892"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
