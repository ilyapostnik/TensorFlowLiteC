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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteC.xcframework.zip", checksum: "46b4d9c67ec3b82bd65a901fc4cc57d2050d43e7f9db364e502e7db1cc50c5a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3152c50eec0e880118fa64a1ca3594eaabb7f16b8845e8f2054342c42f5cef56"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteCMetal.xcframework.zip", checksum: "ee8ce51053f93ccdd264596d0c5102041fd398c7b3f0e6cba7270eedaacd1733"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
