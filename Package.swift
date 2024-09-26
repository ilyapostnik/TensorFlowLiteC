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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteC.xcframework.zip", checksum: "55ff0533154558f24c56d48b36bb3a065914e7d3f6f96f15885a3746b311fc57"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2fcb0fdf503936df596038e8c9c80737c095edb48429bea91a65b8190c77c136"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteCMetal.xcframework.zip", checksum: "d9bc5240a8d307e023f581234e14c7dba908ac92ecf8f4869f323f199089d766"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
