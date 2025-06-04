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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteC.xcframework.zip", checksum: "79cf3c1d8d5ec8cac79d2b5e4f259b24f9df575bde932cb9e6a5e6a4e9e4899d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteCCoreML.xcframework.zip", checksum: "25c34328e59c0d23a6792e7d72819231e891439e8530cb55a6f6edf83a413987"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteCMetal.xcframework.zip", checksum: "d25b6b709c52ac404e98d8c86175026911dc824bf536265330104ebb97fdb177"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
