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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteC.xcframework.zip", checksum: "49dce2fdffa5f8c65a433d32eba23bed314fc12206fa0e204d47ff4e4bf8965b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9743099abdfc270bf4d6ac8a91c0ef3e34b16d25c084df5483ef835ef1667756"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteCMetal.xcframework.zip", checksum: "c340b80d28ff326d6952ceafdc5f7fb86d0ebcb6258c9f74a518eb042a1bb66a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
