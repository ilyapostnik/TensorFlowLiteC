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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240508/TensorFlowLiteC.xcframework.zip", checksum: "8520ebea1654f1843bc426116b3a58c427cd3244477d73b75b37364543d5b505"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240508/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e6d65d2c9514bde8c4e52e54aefa0fa6080105ee04e5f239de79e06ad8ad5f95"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240508/TensorFlowLiteCMetal.xcframework.zip", checksum: "49520e24d1a6e6a28afa95b1c96ec833c563d1b3baa1758f7e2b2c8815e767cd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
