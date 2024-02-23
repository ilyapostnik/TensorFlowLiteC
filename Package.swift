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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240222/TensorFlowLiteC.xcframework.zip", checksum: "ec8d4d7d3cf1696abfc0f882ccb0ca255359883f1a89fd1230cbd13a2912dd16"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9f6bc49a98c8d67fa32c13851dd0ed2d9b9dfc19d298eb8d465889492c4f6f7e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240222/TensorFlowLiteCMetal.xcframework.zip", checksum: "983a5cde913f41ebd17efab25eeb2cc194d53b1d34093e5591f51ffe491d079e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
