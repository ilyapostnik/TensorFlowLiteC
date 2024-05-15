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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240514/TensorFlowLiteC.xcframework.zip", checksum: "8243add7a84e427cd953aced60ba8e81385843e54d2f2a39c93c83ba5fb8f283"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240514/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a8bc70f26b69b99e43c120f50cb6ab7011606e957cc18b81b579ea076bd19256"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240514/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0d65c168a86ea37fd4309a8d944d4b2b2005038721dd9ccf3af2262a5f7685c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
