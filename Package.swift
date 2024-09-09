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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240908/TensorFlowLiteC.xcframework.zip", checksum: "7496dd88eee644f5e061e8bebfe4f996ead880b7cbd7d1926d2ad36c513daa1b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240908/TensorFlowLiteCCoreML.xcframework.zip", checksum: "53d95a1ca81430c9611fd7051ca9cb3c6e07f0f4f1151998a822723416d9e213"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240908/TensorFlowLiteCMetal.xcframework.zip", checksum: "b7d50ee1984a840c8970d7cdba842a7e82b0d852fd99b465486a46b12bb7e0b5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
