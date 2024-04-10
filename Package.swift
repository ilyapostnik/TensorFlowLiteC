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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240409/TensorFlowLiteC.xcframework.zip", checksum: "e782223b18b5b16eb656c106ac8f01fe32dbe452a2fd2c1331174744296a6960"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240409/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a693090f5437446f1459ed2c568958fb82cdea3224853b07e6238e755fb7aa4d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240409/TensorFlowLiteCMetal.xcframework.zip", checksum: "3ea6c1db1682cac4e3439c004d2ce5fb3b0ea7658e82fa86f5e2a2691be26bc2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
