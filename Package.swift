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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240221/TensorFlowLiteC.xcframework.zip", checksum: "62207ba47db16346a7e39311fca169d2b641394adc6a090d97c17220c92f7c72"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9a93faaabb366ac0e86327379ab41e30bdceffedc0eac9bb5e28f8176c4effde"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240221/TensorFlowLiteCMetal.xcframework.zip", checksum: "3494d757126f2b815a65f744de2fcab63d3700809c16bb7a96af9e384a304ff3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
