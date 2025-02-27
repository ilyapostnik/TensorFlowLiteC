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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteC.xcframework.zip", checksum: "0997ab15a9c39c88085113a5fde302940aa84749fed9cbdad8fcf175286eabfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e7c4a2089a692db2729bb196957f08dd310f42edad2c5d720b7af83a448cf72"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteCMetal.xcframework.zip", checksum: "714e0d989572f84cb462bbfe4dbd1564529adcf1b7c539fe8988373eb958a883"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
