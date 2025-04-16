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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteC.xcframework.zip", checksum: "7c638347106d66de27ed6ebca93577508e1225521711d04b6682ce0321434ea8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2f2e49702a7047febd696469efe3464597bdd6a5aa8a1df8c66265816a9d1cfe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250415/TensorFlowLiteCMetal.xcframework.zip", checksum: "ccf315fec808b39027c7bc7e1fa9f5cb0a9426af50799338278f6d805aa4a350"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
