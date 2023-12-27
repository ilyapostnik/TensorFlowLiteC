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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231226/TensorFlowLiteC.xcframework.zip", checksum: "7460b0eb15158a3156abf9a78f612af9d64d7a01002c2c95f89a7b4b5d4b7fa5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c4df9ccbe2f4073c3b575b756eae2e1b82c1342cffa3c1068bc4657f85f9de96"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231226/TensorFlowLiteCMetal.xcframework.zip", checksum: "aa11503f4eaa8cf7c4c8d53f0f6cc3509a3017fc1cdb99f3fe53ceb9f9ad38e8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
