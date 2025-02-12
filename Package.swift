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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteC.xcframework.zip", checksum: "a15e8505399fd7532579b64b30efe96de9fb2236723cb6d55d488be44fce5491"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d5a768b9b11f23beeecbcbc6f4a7eafdba3333a33e5af2ec0501f33e921d1e0d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250211/TensorFlowLiteCMetal.xcframework.zip", checksum: "c12760761e60fac8cc98bd71c426fd03e492389b96e473a59a7803222a9ead69"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
