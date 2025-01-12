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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteC.xcframework.zip", checksum: "6a6c9fc53122c3ccb79058982dd8d8dd738372ea68ca71d5920b69c6b8235ed4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aaa0e98450136aa172ad005ee4d40eeeb231dcaa3ff69f9aa713815f9ffbd596"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef7190c68ec362bfe14df2cce295ff2e6b9f52bb6554c62a1dab0ec166a081be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
