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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240415/TensorFlowLiteC.xcframework.zip", checksum: "d17dfb31138bf0318053d16031ea6ad921286a30ce8ba561036a27a3a47fd52a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240415/TensorFlowLiteCCoreML.xcframework.zip", checksum: "79b4bf81cfae268d0465dde7daaf88bb69074de795b6f9dd98a869b729ecf819"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240415/TensorFlowLiteCMetal.xcframework.zip", checksum: "bebfac31f185367288b879f853759d32826de8d2f5cf570d9d9f4770d4c3bb38"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
