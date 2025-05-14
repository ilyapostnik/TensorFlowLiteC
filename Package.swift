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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteC.xcframework.zip", checksum: "7cd703a29a8c2bdc69d728930182b607ce31abcb16de3989313580ca7cb144ce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteCCoreML.xcframework.zip", checksum: "75c95af29aa2b9e4d793ad8706c3f3b2d35e9c72ba9462bedbdd13996c09982a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250513/TensorFlowLiteCMetal.xcframework.zip", checksum: "4713ec13859ef74f0397a92b55d0b197a8ed6bcde504e111ef9ec3f59cf13257"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
