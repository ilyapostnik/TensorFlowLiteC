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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteC.xcframework.zip", checksum: "4f492f4a266358043a320e8da099765359ad4dd7c6628f4ee648b9d2123b68d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a7e8f0155ce0c7ee6f5c9555e40342fbc5b9f9952d9423a9ff8e5d69878ac6c2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteCMetal.xcframework.zip", checksum: "1d1370f2cd5605ebfcb09925292f5dd80b6ca3d25e39a4584017a89f40b740ed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
