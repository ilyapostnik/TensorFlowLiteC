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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteC.xcframework.zip", checksum: "666ba7b4e96699e9515abc8c5be6aac69d6deaa160388f9fdd9e112e4b482143"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ef079568e1be021e89850abdcdf743ecf9e6b5f1e668fb073656354994fe8406"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteCMetal.xcframework.zip", checksum: "46704bf0d504f1ff71bc9a0fd201e8fa859c60ee1c69a72eb3cae5b40811fee4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
