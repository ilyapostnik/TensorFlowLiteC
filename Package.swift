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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240314/TensorFlowLiteC.xcframework.zip", checksum: "8ce824103ff10044fbdca52791c44b2b3b7a84dc664e8e33c8bbd34518ef8482"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240314/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8fb738a57b24c3eaba729006f6fd9fff36bde1eb9dfacef9f96248a4c6859443"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240314/TensorFlowLiteCMetal.xcframework.zip", checksum: "713c57aef4e391ce4fd2a631c9b71a3b1862b02d1f4e108af2d83c0335cf7e4d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
