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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231219/TensorFlowLiteC.xcframework.zip", checksum: "81d3b1385e74db08e662cec3f563671c01392008507e6034944d7446b7fcaea6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1584eeb301cd9f3b9065328b6ae93bd99cbaa7ab60c138b4a07cf156278c88e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231219/TensorFlowLiteCMetal.xcframework.zip", checksum: "898db1178273eb999a1a6a22a52d515a21edfb7ca52f87e51d7cb77c557a8d25"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
