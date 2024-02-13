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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240212/TensorFlowLiteC.xcframework.zip", checksum: "0180fab1a1c89b8a397df45d9b9a272ad13804f16086572e97aaf728b3c3b9ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bd7f8178aea37b479a2acc67cf632552caa3fa61c53dd318905ce30d3e1ce905"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240212/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c06859f3eb8fa0ac4a2c95dd536ab6ffb78ecf58e00d2bc62cfc99b04c3da7e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
