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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240404/TensorFlowLiteC.xcframework.zip", checksum: "4cc1d86f31c5fe5449bf314f18c7a1394596bb2dbbde14633f3be3c3271a6d7c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240404/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3c1f910ffe452d95b860d3d47f81eb87b4b044b98ba86d12ed5e6bd6ee95d8e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240404/TensorFlowLiteCMetal.xcframework.zip", checksum: "08b3f12b93990788a3d51cc765db03799f5cb7ee346b4f741c32d5ed871a2aab"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
