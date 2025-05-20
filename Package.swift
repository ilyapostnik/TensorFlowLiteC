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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteC.xcframework.zip", checksum: "f49e08c59b91a87a50762ec203166dce92ddb91ca2e0ddeff3efb0aa7c97de57"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4c2f9ac8b33b0c29a9b25a00e9e46087064859417c6c1e1d278dae968ae51f0d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteCMetal.xcframework.zip", checksum: "021c4c65f079e5646f40056f2d615e043ce5e532751a4f97c97b19d4704518ee"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
