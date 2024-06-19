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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240618/TensorFlowLiteC.xcframework.zip", checksum: "c713895ece08f40262fc5013dfa364fa4bd03bf72f63deb460d37f2c855a414c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240618/TensorFlowLiteCCoreML.xcframework.zip", checksum: "796640013809c115eb41cf78a207a9e64369a0e8f02ccab412b6310185770333"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240618/TensorFlowLiteCMetal.xcframework.zip", checksum: "415184494d9b721f60151259bd2f489a3e7153e8333535bedfccb20ff2238783"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
