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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteC.xcframework.zip", checksum: "00f08c06f9de0044b5b3044bc4a258f2915a5afe72f81305d67f74bb6d63db09"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c985cecc0ca153102c3ac7f0d697da80a1c6d5f49fb04fbbcda321b9bd718a19"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteCMetal.xcframework.zip", checksum: "f06b149f2829f2077ba9e2501a3afc9f31a5b278a1f3b798230a45641e4676c6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
