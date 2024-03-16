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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240315/TensorFlowLiteC.xcframework.zip", checksum: "563c5e089c27d80907f31875b52f79f9abb203aef5af4425722d4a8f5760e221"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240315/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3bbcbc24a296542be16e74c7ede7d74b668eda386fdef8f2898d661b82b25f19"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240315/TensorFlowLiteCMetal.xcframework.zip", checksum: "3bb8672aaf3e387b18528ffca61907ef7e5d8cab37f264e46c1012f3f70d903a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
