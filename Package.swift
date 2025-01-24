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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteC.xcframework.zip", checksum: "04615fd9715efca742208969914ec463f8303a981dadbf99c3ee6aeb17940b40"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d7a38641c6880f9f3891fed26856e3bc3746cc1de609514d5c01fb11214e8a27"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteCMetal.xcframework.zip", checksum: "fce375bdf8c14318ccbb95e94318e06ed1338d94bd5c7bcea0391c14ef177749"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
