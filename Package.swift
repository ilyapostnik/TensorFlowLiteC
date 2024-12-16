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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteC.xcframework.zip", checksum: "f4136b0315a44681b4f8374874854e5f85b113d730f8b7587c015168cb2e8772"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5fdfcb786e3159c56a615d8358ba35b53b8288906c4ede2b6a533721c24e2992"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241215/TensorFlowLiteCMetal.xcframework.zip", checksum: "d18c2146c1a5eb76ffe7af0fb19014654c3e4ae56b84607470e85b2d65810405"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
