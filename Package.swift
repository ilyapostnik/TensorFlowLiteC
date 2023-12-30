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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231229/TensorFlowLiteC.xcframework.zip", checksum: "478e0b3f82e2178ce837ef45761c5425f8c862dee064b7598e737d582c9a5821"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231229/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cfd70647e3f5847dca3343929e3d7d8b81345dab892f45314a90179e0b85cd8a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231229/TensorFlowLiteCMetal.xcframework.zip", checksum: "1c40ad7972b77d01361d047d300139ca60f1e55bc72d940a0cbf94e929ee4454"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
