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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteC.xcframework.zip", checksum: "d05813af5c977b4fd2fce2eecaf6eb3db8d8c6b40528fda42eb61ef9b775e372"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ebeab2bf3fc904e39217c9c904b6cda7c96f6819b57112819a90a6e6696918b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteCMetal.xcframework.zip", checksum: "129339fc4d788806276305b1100aa43968a35da8db332878727429f7db639009"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
