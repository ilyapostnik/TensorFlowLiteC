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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteC.xcframework.zip", checksum: "ee0a99b60015195bed2de69832565db878b9a75e03e7257d302bf985a47af328"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b38c704791c8345596d62cfce4da32927732fb6ee244cfd911400e23e5efd368"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250308/TensorFlowLiteCMetal.xcframework.zip", checksum: "c3b6d60fd311b10ca6ba03bae4924e5dae8eed38f08c6177863c92af6d7ede94"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
