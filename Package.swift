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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240515/TensorFlowLiteC.xcframework.zip", checksum: "ed4c50953038a3bf85b24e14fb7613c549647b535c403f0381293e6afcd94356"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240515/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6f622ef904bd87ae5f5fd0db758cb49f214cca186cd1811f7e1c6acd32922a6b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240515/TensorFlowLiteCMetal.xcframework.zip", checksum: "68179e57fdf5586356d40bc0b5951bb6434fd59b89bddc52a131c9a4bedbbdaa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
