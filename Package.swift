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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240917/TensorFlowLiteC.xcframework.zip", checksum: "46836200ad8808d2ad1dd8f6368192a2fdf1564cfd0c55c7179de000c984380d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240917/TensorFlowLiteCCoreML.xcframework.zip", checksum: "de90bc07e7932320fb5f882cefe31180522ef5be839273e8e096a33cb1d15ee8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240917/TensorFlowLiteCMetal.xcframework.zip", checksum: "31c4499838314a2ade98474f2101a116bca02e4c5c23ba651fd57a92908ff6ef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
