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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240105/TensorFlowLiteC.xcframework.zip", checksum: "8544d3a0c893ec6376af92dfc5b4ac47cc2f70175015957d2993a4366fc0300a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c8ed3b8e5471571ec084730dd9085108624f003e81ff3d02e3fef8216f8b659d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240105/TensorFlowLiteCMetal.xcframework.zip", checksum: "be5cf8adeeb1d44cad6b85266660c2a3d83549386018ff2fd036c7ad5434929b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
