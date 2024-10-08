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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteC.xcframework.zip", checksum: "06e266856e850f011d55ee3d207c08341ae263ecadc09c68e5542c21731e9af3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3c50075c767469d47faf3423afd1554497f63f5d3aed138b87b3f291789825df"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteCMetal.xcframework.zip", checksum: "630d209cf3637782339bb32ba934747ed3c6f86587cc07345a7995e174a83758"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
