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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240411/TensorFlowLiteC.xcframework.zip", checksum: "c4dbdd07338990d1b121cfe3cc41349f9abb5689671c1567c037bb1ba584ac0c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240411/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26c59fca24f00feed6bb1a280a85395abdf24b78eec7dd1465162727dcfde2f1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240411/TensorFlowLiteCMetal.xcframework.zip", checksum: "ff614840230fef844c4110a88d715f04b741d7d141bff6185dfc1c12ef7f92aa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
