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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteC.xcframework.zip", checksum: "0f821518cc98bd774a425ea951659f4c2c60f7ae805b13a74f004b3188e9c896"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf121c181938041b8cfed636d509f9edb638c29857c9d1bb5b6584310e61fd88"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250330/TensorFlowLiteCMetal.xcframework.zip", checksum: "842090aec7573e031b51d8752b8682546f71456ddf4c78a7b107d0b58093cc02"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
