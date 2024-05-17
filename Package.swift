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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240516/TensorFlowLiteC.xcframework.zip", checksum: "0b258dea6d08a356df98d0f136cd940e3c253444108bdbbebcb608e9afbd8470"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240516/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1e8614e64ed56ce85a92523fba1190f89e7fd8cf074712c3bf02a9be77ae7752"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240516/TensorFlowLiteCMetal.xcframework.zip", checksum: "b97d83e6ab03af0be8478f0f34ae62ac6fd6b12ba82eff8a3e429214d390b715"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
