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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteC.xcframework.zip", checksum: "9625c61a7bb8715e2c1f3c88074797fbe5bd2caf2e710ed553fb4f38d6a166e1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9346ae0a69d5158dfa8bda2f6da0215bc63ea472c92fc9d30e7bad6cf1045772"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteCMetal.xcframework.zip", checksum: "b9a5a4dbaeec79d97776e32c85e77ade5d2cf5cd70b619a108bb615b6244d209"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
