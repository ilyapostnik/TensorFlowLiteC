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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteC.xcframework.zip", checksum: "77d78aeefa529f0db9173033da72b39c59f22d6b26a595365de3f83a2b6641dd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteCCoreML.xcframework.zip", checksum: "89fa7aed03466128ea247866afb225b59dc5609d3ccac9dd00d50456e829d3ca"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250502/TensorFlowLiteCMetal.xcframework.zip", checksum: "207f7089006a19cb9a5afc0cbf60238b29e4172fbd3fdd75193d179e58fb149d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
