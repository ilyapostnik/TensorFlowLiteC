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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240107/TensorFlowLiteC.xcframework.zip", checksum: "68806b535bc5a2c49d22745ca98281e4da0f719e3749f84aab0aee72379c0e57"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240107/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d9054276ab424194624aad97d618e1efda96090b82f1019a5c765b129415970d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240107/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb6f7ae10cdbd85fd144d7ac3465614ae91cc7096fe2fc325e64b3b1b5426c5d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
