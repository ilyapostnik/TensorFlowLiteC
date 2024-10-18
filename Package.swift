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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteC.xcframework.zip", checksum: "773d6d09a3707a47b821aaf29eed137e225a9b94f66c80b43dbabee8fc0da7ea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c1a16f9e9ff6c8508f213049525c1aa6f2be714471f2481ca38d869f29804917"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteCMetal.xcframework.zip", checksum: "19b108974add19f32cf1597aed00bd0347413f551dbda6fcf18670ef064a6ef8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
