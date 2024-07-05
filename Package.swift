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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240704/TensorFlowLiteC.xcframework.zip", checksum: "68f623069611260c96f5263f5f1ff304965355db224acda9858ea64880491bd4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240704/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3b279c908fc19bedb4aa80a056fb172a115899c5583aac7765cc0597e137e736"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240704/TensorFlowLiteCMetal.xcframework.zip", checksum: "f4c42cadca5e539b7857a3207188836e7c83470c8ee042ecff05f36fcb224e27"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
