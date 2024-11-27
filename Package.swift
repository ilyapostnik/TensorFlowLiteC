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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteC.xcframework.zip", checksum: "8d310cbfc792e05e5e0786bf9fc87fe7797f141f9fc6ef9a3525bd761601caed"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e39d4172ef56661bd499ee3e5de52f238d41df184496f7e91ea465942644ec5a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteCMetal.xcframework.zip", checksum: "dc80c22d6daa455bbd6909cde03ffe196ef19bd6e79838f14b0ecfdd1e755265"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
