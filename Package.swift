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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteC.xcframework.zip", checksum: "a8775446c4c53d26eace3a95c19cd354577a20c12949a8ca6cd10ca0a4251301"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1da5ed6732aa1558344c95ea93aa56acc619155c4e843acc4e256a71eeeca655"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteCMetal.xcframework.zip", checksum: "a4ad02a3eea52bbbf9d74468eaedd299f8849b1ff3904c75efa44ce5485c4384"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
