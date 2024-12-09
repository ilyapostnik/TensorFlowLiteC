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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteC.xcframework.zip", checksum: "d867f4e0ddcd32349ada14a1ce483cd7d9e91ed4ef9b9e5c40eae3e64f09f639"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "04935ff46bfa2a5c2c32af6973033c23b3c9fe08e2bc51cf01be82ead6e8f730"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteCMetal.xcframework.zip", checksum: "e201335897c7f75464852965ab0b19cfa253f9b2322ff45504c459ca08cabe4d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
