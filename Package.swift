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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteC.xcframework.zip", checksum: "bec8ff8227890f3805c2f1f18d80261a7294aa27089db33cc27ab7f09d64f805"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteCCoreML.xcframework.zip", checksum: "47fda8db7a3285d70cb018e41c05d88a12ea4d1edc7d00ac12f7a4e4af2fbe36"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteCMetal.xcframework.zip", checksum: "78b54b42a9c7f2f0c8818c79513889d04be785599e0c17f73e22a95c6b6dca93"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
