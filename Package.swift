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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240918/TensorFlowLiteC.xcframework.zip", checksum: "58803ca203a7f07297d406627bebb8597d4def1d6d971b14f86df7f4bf7d70c8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240918/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b54dd2e6bec60a08c92b95c6159d9580ee7a73e8bff14e54bb3e893e5b136928"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240918/TensorFlowLiteCMetal.xcframework.zip", checksum: "b84107917f0f781c31851aa0943a420ac7d19f570e47fc40538990a143e47720"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
