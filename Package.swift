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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteC.xcframework.zip", checksum: "ff1410c15c270c428beffe00f9942c987c082d66cf2392c5a59899fb121cd50c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d33c423f274c2040710221592d29a1a5f04962bea37deb45bb0aeeabd7e55d90"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250214/TensorFlowLiteCMetal.xcframework.zip", checksum: "6db04d77330a0a3ce524362fe11b9e045c3fbcf36f9883ae2ed6c2fa2d5c95b9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
