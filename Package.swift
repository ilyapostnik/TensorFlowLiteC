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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240218/TensorFlowLiteC.xcframework.zip", checksum: "f913fe1b3e8312cb308f4f700b96f05a4e8a99e5455ef05f5ad8a618714561a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "376eb5a60fbd745d00744b4eeaefe5c4f092871c17addc4b213fb69e597ad63b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240218/TensorFlowLiteCMetal.xcframework.zip", checksum: "2e99d30175dc5e485137eff73fc1fa3893c9512fee9711c4dc891bdad00962c9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
