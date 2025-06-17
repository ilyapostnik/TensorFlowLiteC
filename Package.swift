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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteC.xcframework.zip", checksum: "31e8498b4a17364c8e550ade024153531ea094b79eb30f9f1408fe3658d48bf1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5cdbf8b1eff6f27ce753521676c5f8b8488f911739b08b6f16dad71a93981a3c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteCMetal.xcframework.zip", checksum: "df98b21484e51388ebe90cfd6da7d30f1ca9b9a262a99b2f2af7b68a3b84b613"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
