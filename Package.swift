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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231123/TensorFlowLiteC.xcframework.zip", checksum: "8970dec471a9c2ffdc0daab8215a6755bb7c2eede2719bc16eb5f4080c71b45f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cac6d029f247fba168dff56c6e68e238c038c198383f4ac61972c666267ac701"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231123/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb91805b56fffa6e41ee787941ae4610e8aad31276d2e0afe9df4eba594c33ac"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
