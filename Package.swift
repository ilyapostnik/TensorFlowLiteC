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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240302/TensorFlowLiteC.xcframework.zip", checksum: "9d431e49f19ad71c961d1987ec3263e8fc0e90c3b4fc236a8f8fd7b2da530741"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240302/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b639cfc43100e65e01eeb27228579150eacf2e0ecdcf0002f0bef192befda42f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240302/TensorFlowLiteCMetal.xcframework.zip", checksum: "d370a1b50e3a0392f907d0c016b2fbf157dc98bb97b5dc3787135d558d36df62"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
