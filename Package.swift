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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240426/TensorFlowLiteC.xcframework.zip", checksum: "23519e25d6d4eb804796b68df987433c5fdbd61d118171d568a45cddaa285adc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240426/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46641cb83d30d5ed88e80a11044a54008d130c3829dcda1037c7d60fed8d59f1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240426/TensorFlowLiteCMetal.xcframework.zip", checksum: "603dbd8372076b045a81f23c9dfddee494649edf0be8b88b7b1e21dc72375fea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
