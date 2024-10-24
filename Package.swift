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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteC.xcframework.zip", checksum: "57371e324363305cfd47d3b8bfadf19b33e2c6d9b27accb4d3c9ef18ceb43849"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteCCoreML.xcframework.zip", checksum: "af2e1ed614ee66d741621d4b5c9cc661633419873d3b5d54205b81f3fb1c99e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteCMetal.xcframework.zip", checksum: "804d25649920e166a05f2f7e09a34fd82d5dcdf5432e054bc17669bd0c23ecbb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
