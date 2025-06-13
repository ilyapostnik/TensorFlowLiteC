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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteC.xcframework.zip", checksum: "1166258b22bb9d79180238590418a31b554e25c9d2b82ca2fb176da94957d54d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteCCoreML.xcframework.zip", checksum: "760355de06621eaab51852442c2a0ff66e0db6ccd838e9a074fe6e8a03e5a47b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteCMetal.xcframework.zip", checksum: "62ac043dfd343f0e4b9e8627fccfc2567f3d65e7a1dda256d7beaccb37a36dec"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
