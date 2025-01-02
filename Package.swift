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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteC.xcframework.zip", checksum: "0d8c320e6d063fced58d6e9c7c4c30d9b397edabc7c01b8655483ace6129548f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2bdbc92d189143299c0febd0188453d823f07ea4fe42d2c2237e7cdb1d5125b2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteCMetal.xcframework.zip", checksum: "a2a7fe0cd5fbac7e44b384331444fc89a4d1303782c2d06f5e58dec25057ca6f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
