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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240711/TensorFlowLiteC.xcframework.zip", checksum: "f3b2a107188ac4ebd231e6fdd4fb75ff138f425fd1e04e33f98e048dd97995be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240711/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c74a3707a60ed27f4f5f631910d71cad1bb2a345fd7599e3ed6ea364370a9f6d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240711/TensorFlowLiteCMetal.xcframework.zip", checksum: "80c4ccb6028a0019d946db1abac06f3839ef5b952a3de4c61747f4c5888fbc17"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
