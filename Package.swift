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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240104/TensorFlowLiteC.xcframework.zip", checksum: "77a6f3ad80562e76990cc89951100f09326537efa8d4f3f812efbef153eb8dee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6af1a7cc8b3080420f42c7f7645fa48f53670286edf70ea2dbaddece5b11423c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240104/TensorFlowLiteCMetal.xcframework.zip", checksum: "40301c40373e7f5f924e4241490d197656ee7b0286533710c2610b8fe2106afd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
