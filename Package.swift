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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteC.xcframework.zip", checksum: "58f24d287c84e35f836324183b52c1eebdf25827012a6a534cdcbc6f5ddc773f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c3105aaa535e0a1a324528a977f9155a2ad7264935481b1ec99a38c24d0da882"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250524/TensorFlowLiteCMetal.xcframework.zip", checksum: "02b26a15c570a9d8a222c110574a849b62ef4db4a38b31e47f3f42fe6b75d7c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
