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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240214/TensorFlowLiteC.xcframework.zip", checksum: "de288ad1931f7664209053324ecaf609d546e919c45e90c0825ccdd55479935e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "658d65978113d802a4d4bf15fb7c0c6aead98f82a5c88e41169b993b41b19015"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240214/TensorFlowLiteCMetal.xcframework.zip", checksum: "4cbf4bc91c238b1532183980c6d1d647c19be443e0b84e67f3b59adf7a835231"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
