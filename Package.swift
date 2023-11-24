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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.14.0/TensorFlowLiteC.xcframework.zip", checksum: "e0301c52f4e9bf62745cc8ffa47e3cfc89066908a0417283857a5f65a477486c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.14.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a93e83a32cec77cadb6462a764612a251eeea37c7c86b7b9f4df89f643571711"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.14.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "1cd32df3230f2292e51e8624d06bc8b1725fff7bb7eca6922e38c94049281d41"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
