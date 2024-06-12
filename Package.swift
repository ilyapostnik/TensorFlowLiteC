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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240611/TensorFlowLiteC.xcframework.zip", checksum: "4cb20c50022a0b2e23c64b8488c8ffc862cbfdee2bce4a7cd769442d08f4ea2d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240611/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fe473e723b71c904db39f2eb9875527729671feb750676ad5a6fbba50a0bc869"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240611/TensorFlowLiteCMetal.xcframework.zip", checksum: "2e8cc7e9c7318b3e9f49def12d87045d39868d227df22f00f1c8a23328828474"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
