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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240822/TensorFlowLiteC.xcframework.zip", checksum: "a07f06c1e70d88089ab11edc8db5a589bdbbc7b6476b66caacd93a180b4522d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240822/TensorFlowLiteCCoreML.xcframework.zip", checksum: "60cbfed1240221e884436a7b201a1cbcf299e1c939f0b8c24dbf04c347f7bbb3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240822/TensorFlowLiteCMetal.xcframework.zip", checksum: "ca73c745830ee650d44613930264fb65938fa3f83808e47e62cd576b12482f0d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
