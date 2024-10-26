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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteC.xcframework.zip", checksum: "6b8d000ef4ed7f19e62d2d5a43d26b7f6bfd3ce5e9535ee86db9557ada298c7b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2376b78d119c1c727ce7a012fd34259b9e7c4d249f6212c3db347c4c5555a136"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteCMetal.xcframework.zip", checksum: "509e2c3392403d81913676428ea7b56a0950f3093a2b589ffb437217798a58e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
