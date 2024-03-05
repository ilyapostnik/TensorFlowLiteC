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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240304/TensorFlowLiteC.xcframework.zip", checksum: "23a3d4e7feee3bd4a484002d0d52001c2553cc8592ba1b31898a32ec4b6c8f33"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240304/TensorFlowLiteCCoreML.xcframework.zip", checksum: "580fd419045f5609d23813e45d5594d36ec506fa5a38e535a60e457b024c436c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240304/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef9c00f1533f39b38da085df2086e5b6255c80e8a915d7a98b58b2a3ca999b3e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
