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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteC.xcframework.zip", checksum: "7ab500317918a5c8cd5694ac6df041bd51a51ebbb3e5f2f90ea46bc08d473d90"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ead68f9d7c82dc5b08be47f48c943d0caade5d5b5a149c0714638b84ef27d12"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241212/TensorFlowLiteCMetal.xcframework.zip", checksum: "d1de5807a5519a4186592a9f2835be68e329aad968bc0e2e1099cc48d01d2e1b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
