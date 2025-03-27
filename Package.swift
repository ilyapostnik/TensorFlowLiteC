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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteC.xcframework.zip", checksum: "184df04fe913b5e63b25409c7048d951b2f142c9e7e44b8a4b2070680a9b2679"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4e5fc740ad173e10305b9f21aec9851274bef5ff705a40a3adc2ccfd6d30f7f1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteCMetal.xcframework.zip", checksum: "dfe4aa7c106af1cf183c1a3474cf7b0d7973864b4f6a3b2a6ebb48931079bafa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
