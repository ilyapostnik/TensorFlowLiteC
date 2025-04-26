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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteC.xcframework.zip", checksum: "0883da0821be5bd27a6d22fe90c67d027de405896cf76725ba28b8d6b861495d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7b5e52f9209494d831d9068ab43a7ac211339f8af13a728da6013d45b89cd8de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteCMetal.xcframework.zip", checksum: "160bb9ec38873087831eb4aac8e057a6f822f3d2af73985d454500839215192b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
