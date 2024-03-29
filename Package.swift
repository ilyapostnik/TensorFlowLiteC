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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240328/TensorFlowLiteC.xcframework.zip", checksum: "6075e50be02a0057dc55f289e213069d0e11bd9db933f356d005cc275b3b6be8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "55625a679ff94b0dc2cabd22e05c1c6696a4bf64a229df7e627d7c63a3a6666c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240328/TensorFlowLiteCMetal.xcframework.zip", checksum: "763639a4eb6eb4bb94f0ed7223b529c05ee567e911460d9e8a4892824d0c4b12"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
