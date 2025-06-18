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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteC.xcframework.zip", checksum: "212d7c3e892a8f9f6db415cf1e170fc5f77cca9ca96427f1e86eb4ba65341aed"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5a293d3484fc5050c11f72b3c80e5328d33c2e43708d9ad8cb1c525162b3b893"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250617/TensorFlowLiteCMetal.xcframework.zip", checksum: "ac2652bee50e0e74d4f5fc5c086aa4e1ed3137ab37228fc722a59525df943975"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
