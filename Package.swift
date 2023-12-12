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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231211/TensorFlowLiteC.xcframework.zip", checksum: "d3976d3a3f89d8c453938f8191b9833db9d232cb9ba43efc17c5b2e1ffad47d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6e5ba9e53133de0700ffe7bbf408501656abbb737b255dcafe700e7012a3a9bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231211/TensorFlowLiteCMetal.xcframework.zip", checksum: "0299db9b475763669e2ecd1997bab789182f51daec49320007a59f346085726f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
