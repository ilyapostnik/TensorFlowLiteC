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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteC.xcframework.zip", checksum: "0d21f0cd4a6398fd160a8d447a4bf67ab924038bc49e5ce056e6b45defb8a34e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f314fb9d46f990ef076cd8254dcc65f57f9a35c6845088bf0b5c436eae6a8111"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250507/TensorFlowLiteCMetal.xcframework.zip", checksum: "8fb66f4cd25edf1dbe80fbce150f54064cbd89241e34a471618fc05fc1a9f3c7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
