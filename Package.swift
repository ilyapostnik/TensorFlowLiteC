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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteC.xcframework.zip", checksum: "8e76f0eef6dd4d6fd51eda08ee1e1533ebf3873ccf642274cd9b8a51ecd93d82"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ae37c309117a9a256bde55879ce7986aaeeca0edbcdff6551fc5db2f2f91ba2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteCMetal.xcframework.zip", checksum: "9572d465e19d642753cf991ff2d3a0eb9f65d5e0beac9d30c04982e7de337dc6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
