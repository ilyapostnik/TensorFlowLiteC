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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240103/TensorFlowLiteC.xcframework.zip", checksum: "25d18e584d16cc469dee5599a2288837072cade16b355a663ceeaaa7206fca4d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e595f4a06839357650a5caa1aa399feaf0848d10f515d6487e60d36ad98d0165"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240103/TensorFlowLiteCMetal.xcframework.zip", checksum: "c6c50c4035942a8bea5dfaf94c931c58e0034479273fdcf154f20843b7122087"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
