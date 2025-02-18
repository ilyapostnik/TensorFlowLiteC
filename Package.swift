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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteC.xcframework.zip", checksum: "61f00e76faaed91fc371d2897667ccfd86022dfb679c66d9cdf5af17cf40ae39"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "92935db56d65d8d4c938434dc315f01c2252825e5430ef82e54f486023f9bb4d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250217/TensorFlowLiteCMetal.xcframework.zip", checksum: "cc536387d30822574da7d1c58a430f3a8073f11a301f28fb47e09c063227786d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
