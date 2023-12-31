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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231230/TensorFlowLiteC.xcframework.zip", checksum: "660b17ceec5f1817902ebf06aad1ee3dd6c82491025d718236c3a4a448147917"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231230/TensorFlowLiteCCoreML.xcframework.zip", checksum: "802dd98297fca9ff956d51f13cfc9bfc3d2d4468f6fa5aed0d55607c04e6b089"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231230/TensorFlowLiteCMetal.xcframework.zip", checksum: "02fcadd7ea45f51944abd1655f0ae9bdb6ba3e01c75d79bfa563a61be85e393f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
