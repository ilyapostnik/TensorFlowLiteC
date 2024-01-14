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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240113/TensorFlowLiteC.xcframework.zip", checksum: "74d6049e36f38c7b259cd1a283d061f8993c9d8a3265171a88aec14bb05bd7c3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "706a9740bc9a8c7849326e2947281132a0e1571860f90f19e38e3020f72d0357"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240113/TensorFlowLiteCMetal.xcframework.zip", checksum: "0951a69f7d331b2007e2450429586f6b6a887ae0e828c715fb05e5a6695908b1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
