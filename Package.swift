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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240910/TensorFlowLiteC.xcframework.zip", checksum: "989a3de8ce9be7007defe2e9c56c3671f607da8167e41c05c2aaeeb6d248a1b3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240910/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4d335dc5c1a5a9bddfe1f7e5cebecd9b1ba39968491924d0e31c3ab89c363b84"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240910/TensorFlowLiteCMetal.xcframework.zip", checksum: "fc0375fabdc61fba0842f43a86d6d13a5596260188b5c260b396001e1c3aacc1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
