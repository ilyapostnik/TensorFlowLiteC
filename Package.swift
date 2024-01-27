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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240126/TensorFlowLiteC.xcframework.zip", checksum: "c45b29be84bab40c82fcc6721371572bf87bb23097c26d1bf564ff8cbaf23f34"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aae3c71c6915f151d09a11c440dce6cc9936dcfce8db0f45d958446f44068c9f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240126/TensorFlowLiteCMetal.xcframework.zip", checksum: "d3e403f14b323a1f46755c5c6abd826d2b1fb94229d5d52ae0d22397a42967c8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
