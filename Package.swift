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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteC.xcframework.zip", checksum: "6a6c3af5e0bb4524d4925d6853829d2ccd7c1f9027f19755adb83964e7f3d758"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d41740be7a155834a87c5e470554170dcd4f7e4454a07354754a7c8eaf64e30e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteCMetal.xcframework.zip", checksum: "6878badbfb1bfa126ba36a294b71cca74fc9553ad991c7fc4244c55048903906"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
