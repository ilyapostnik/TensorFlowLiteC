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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteC.xcframework.zip", checksum: "2a4028cf651831054e1197d66698d308e6a3b2ac19e7fd493547d04ac82a108e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ebbbc6fff6381a1c2fd5f29c6c073d91708f9fa55eb71902f21dcd5c11446b82"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteCMetal.xcframework.zip", checksum: "88690e4f7762336b87cd7a422cca0604d49ec083dac6146cbf8854db674f3486"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
