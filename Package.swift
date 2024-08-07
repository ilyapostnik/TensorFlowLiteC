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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240806/TensorFlowLiteC.xcframework.zip", checksum: "ec40bd83040fddcb83cf4d6b520a99c3fd1274995789e184bf238316083b346f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240806/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ca42a8ddb6e4801cccd5e15c761b0a914f876527a65d9d299a5f5e922f8b4927"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240806/TensorFlowLiteCMetal.xcframework.zip", checksum: "c100bb3088ae62f73d2567f18767e5960597fb7b6106b76e659dcc86aec75dee"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
