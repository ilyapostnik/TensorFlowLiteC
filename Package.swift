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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240829/TensorFlowLiteC.xcframework.zip", checksum: "537a041ade51561ed6f4c6d287e09f21e90d834d4592504aca39044473f23bca"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240829/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cd0ce8bad5350012490aa164531a2ba6ce72792bdf80dd0e848ded442aeef215"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240829/TensorFlowLiteCMetal.xcframework.zip", checksum: "984569b79f0f7e515a43835f7d50f72f9d661bed824cabb38e710531e9d5f024"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
