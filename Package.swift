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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteC.xcframework.zip", checksum: "6de674714bfefa1a211a637ce9881ac69b618edf71da243a482a9bb9a4832b2e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ba7462f0957d2b0bd6d86cdb2bd72d108d5a10cf219070059ef139724aee3dcf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteCMetal.xcframework.zip", checksum: "03e20b4e78eff270c5f6ba22da88d176e30ef3fd359af43aaf9f175c6006fb37"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
