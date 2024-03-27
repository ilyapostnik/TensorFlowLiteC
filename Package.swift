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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240326/TensorFlowLiteC.xcframework.zip", checksum: "e2a5f6b108018312ebcc458d0f97a7dd97dd8f1a8112a6d19ac22a6a6106d89e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240326/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f61d880892c88b59606b73a39d323d9388fdc2b58c8862ddc608e84f5dedbe53"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240326/TensorFlowLiteCMetal.xcframework.zip", checksum: "b6ddb05ae67173de8ae383b7ec886fafbf8cb451341eb10091dae8ca7d2692b2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
