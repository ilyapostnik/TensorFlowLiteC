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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240922/TensorFlowLiteC.xcframework.zip", checksum: "9cd3ef14af5926cf463508b620085af04d7c6f649bebf455e993fa64d538ce31"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240922/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f21aab394374a6370976f40945586c0f8749417c8be68315634571b9c05c04f7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240922/TensorFlowLiteCMetal.xcframework.zip", checksum: "050b5147591be1775071792191a37f97ec544cbaa072b0b7f1288110ae3741a4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
