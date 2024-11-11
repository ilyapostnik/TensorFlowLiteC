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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteC.xcframework.zip", checksum: "e99bd4c1a48cae7a5930b787be0f6999eb246512d312b07e68bb6f00763b9b5d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "13ba8c76a71fd9cc50b11babbc5639e710cd554c26cf91baabca45dee79920d9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteCMetal.xcframework.zip", checksum: "fe045d6b437ecbe01efdbdb4f5bc611acdbc5930002a8be4cad08478b81ea1cf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
