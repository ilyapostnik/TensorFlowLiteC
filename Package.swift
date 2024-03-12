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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240311/TensorFlowLiteC.xcframework.zip", checksum: "a4d491234b5d02537515a35ff1ac762a3d264e1b06d957b37bd4fe391a120ee2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240311/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5258196206b505fc530f77de6c41683386565522a20561482c46fdbbe9cbb064"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240311/TensorFlowLiteCMetal.xcframework.zip", checksum: "0687fd081b4a9c198e0cb52e656b4f1d863388c52c2a34c2bc49644a189dbdd3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
