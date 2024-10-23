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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteC.xcframework.zip", checksum: "c9f9798ef1aad1fb01f8780d31cd6cda1cef722499fc2bc194a54b39c82e1c20"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteCCoreML.xcframework.zip", checksum: "13b4e61f5c394d9989b4b485b1b1f507f2dbff92db2a769baed1a914fbd4db9f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteCMetal.xcframework.zip", checksum: "02818e471f82e7060a28b6779865ed2f1da3be57a25e7819a784f17cf6217b3f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
