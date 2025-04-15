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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteC.xcframework.zip", checksum: "9c94b706e6417276357da6919ad328265e233bb69c7e89333989f5fc0fb5f70d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6ccecb51113c7ed425e36aca95f0af7e2c42b077a05a6ab5c5fae0e17d231adf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteCMetal.xcframework.zip", checksum: "48ff9017ea04fd3a269bd5b27804339d0890bf28e2906b8b80116371faebfe67"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
