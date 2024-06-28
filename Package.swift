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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240627/TensorFlowLiteC.xcframework.zip", checksum: "ab2f8881652956ff2ccb21fb03c22ce307eeb5996ab925f16423c4ead681d3f7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240627/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4caea99469972984c28dcfd3011b00d5e2a2b5ce531c7350672db6b92d8b3fd3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240627/TensorFlowLiteCMetal.xcframework.zip", checksum: "cd5f64aa0a412397cb9fe31e7391b8a38c65599c4c6592530a7bcff1b537eb57"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
