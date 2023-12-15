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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231214/TensorFlowLiteC.xcframework.zip", checksum: "eab1ae8091238930efbae499603eebcea74e3c8c97a279c9a8ae7399c94e94c2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ffd4472945fe080b6fccdb7894c8a0d106b8e0aac1d63d5a9731887f278b4853"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231214/TensorFlowLiteCMetal.xcframework.zip", checksum: "d24794eafac86468c097b9add8bbbdce88feeffcacf40edb1a81a3dc37e3ec76"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
