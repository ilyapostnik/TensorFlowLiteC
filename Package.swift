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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteC.xcframework.zip", checksum: "809a783c103a6d97b15287c1c82c31fe99a9ec9cae285cedf6c5af3df559b684"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2f3d579d9b82779f84f9fc9fa49c64dca7f8afbaa3f4bbf7f1362238a26779d7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteCMetal.xcframework.zip", checksum: "35037e1e5b16b630c3e628d588c03cc98147a6b8b10f9aeee8edc4990577d86f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
