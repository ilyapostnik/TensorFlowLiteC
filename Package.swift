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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240510/TensorFlowLiteC.xcframework.zip", checksum: "3131fefcab7085bdfa5c0cc12f8f87cca167ea4fd4c95a5bd72ec7db50959f5b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240510/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ab037bcf17690e1b7a93439fd91567cc4fc4538cbd0d95c4a46cf3255bd2db5b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240510/TensorFlowLiteCMetal.xcframework.zip", checksum: "2356f81712af8727fb98e56ad9e3065329803212f7c87ccaf1f0cd2b5cd3bd7b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
