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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231125/TensorFlowLiteC.xcframework.zip", checksum: "f59efd83412a62cc6e46a360708722b0f516dfd3f64cc2095e4b548cff6b8d75"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e48358816684402e78a7ac3c44cf2e2b81862bcf1a1fa6989bc642277a947d10"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231125/TensorFlowLiteCMetal.xcframework.zip", checksum: "0d88bae5d31884388a0ba5b4ca14708673a02adc00eb57ead7aba6fc814d6d72"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
