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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteC.xcframework.zip", checksum: "c29c69f583ba48aeb7894c6d332b1415b06de9dd19aac08a3c4b00abf59c4d6a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6d1d1da1dbf2aebb765f156708ece3da58021adb14b3a9b997758ee0863c1d4c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteCMetal.xcframework.zip", checksum: "f0b109f76d3fdd68af37dbaef693de8f41c044b9f1d52ba281135a81a9918031"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
