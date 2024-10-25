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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteC.xcframework.zip", checksum: "7b7a32223b16adfe160dd66e999573e2263db4933c0df530bc1dbc3f57871455"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e0f2c5adc23e4291b3426ae756b5c3c787c175e46d3666d7071854ba246de104"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteCMetal.xcframework.zip", checksum: "611ae2c755b8740d9b03c3886522db78715bc8424609e9007b4715b9c5ce5097"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
