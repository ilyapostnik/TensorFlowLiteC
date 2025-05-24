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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteC.xcframework.zip", checksum: "820623053e4af32b5e840871c5bd44adc02789a90c94c2aae9e2610d4012f785"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteCCoreML.xcframework.zip", checksum: "35a1ee783734dc8656600fa782aea0a06c190be0ee060715da89b661c2eae20a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250523/TensorFlowLiteCMetal.xcframework.zip", checksum: "06bbab324ac6ba24e28e5f657cfa84d9a1a2498c40f48718f67f3a664bb1ee6f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
