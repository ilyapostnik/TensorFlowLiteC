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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240123/TensorFlowLiteC.xcframework.zip", checksum: "71640d6b1399346200e20edf9aa0c9301c4628f53a23fed16e28b7d36118b61c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c59194b39e8628a06684063fc59d3a833985f47ed8aa409c777c805b5fde2a49"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240123/TensorFlowLiteCMetal.xcframework.zip", checksum: "de4a2bcc06249f903990e34c71bd0c21cf81d484e284c61dc2aae2fcbd015a6a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
