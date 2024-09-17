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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240916/TensorFlowLiteC.xcframework.zip", checksum: "8e735b3ee3d8f1a2583b8fa8532b9f6d3e6aa665a4947bca8ff56eef7ecb77d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240916/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e2894f80e5b1eef38256ab1c454752f2a9435ced110f2f0739e436a61bf0ca4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240916/TensorFlowLiteCMetal.xcframework.zip", checksum: "5e6cccc8f69658e59ecb0b43c895be943bbef53aef08b9586f83b038f17e2269"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
