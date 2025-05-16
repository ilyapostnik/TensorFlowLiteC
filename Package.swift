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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteC.xcframework.zip", checksum: "aa84fb003cc88c7103d1546d4da7a62c0fb0efbf6f8bad5fe4dde7390c8e4a1f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteCCoreML.xcframework.zip", checksum: "40c2c79b9650f9b98c9a0efa8fa697d1726bf1bd36682b13ea19701e9d68c125"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteCMetal.xcframework.zip", checksum: "b565aec55e4e8131bba7cb57435f012acb6ec4bc2a95b4f9b30b2b5f579b12e4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
