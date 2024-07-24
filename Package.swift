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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240723/TensorFlowLiteC.xcframework.zip", checksum: "65fee95bd5afb120898926932e5599fe008944a996eae8e5fb8966692caadcf3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240723/TensorFlowLiteCCoreML.xcframework.zip", checksum: "32ec3d7ab086d9d551b3126cb194ca53652773826d5429971784c29cbff2fd6f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240723/TensorFlowLiteCMetal.xcframework.zip", checksum: "87bf54476e1387ba91f6823f4389037e4234700cb08576195b66655960c8f893"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
