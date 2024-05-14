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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240513/TensorFlowLiteC.xcframework.zip", checksum: "2c4e94bc600cd9deb610b7f19a8a293a34588aa7af9e26f3b0b8a65ae1078942"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240513/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c57635bc1188b99de6b4d1a5005fac9b26d6aa1a527ad97c47484920ce440f0b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240513/TensorFlowLiteCMetal.xcframework.zip", checksum: "d0c27013e15f883c51cc4282345c2e71c81b1ef69d3511d0cf7c5c5071f2af60"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
