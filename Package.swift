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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteC.xcframework.zip", checksum: "4684216d12668163833faead04f4caf23fe1f0b7c2163c4e787fc961d7203289"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c9a7a06fe2f5ed4d266aaa08b245198d1b9bde4a89a4577c93a6e83bfbb386a5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241121/TensorFlowLiteCMetal.xcframework.zip", checksum: "ea67bfe61d40516ea6cb8d1c326a1f6bbf6acc3b1badad7a91669892b70f1cd0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
