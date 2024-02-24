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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240223/TensorFlowLiteC.xcframework.zip", checksum: "19c85cb5d3cb331a33b24d38e952ac1bcd615d40fbc8ae506f496d2abbb24a23"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "60f3ee927376ec2ee316945609c9d5a5ef24ca4e6892627f82c86a1943a97bfc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240223/TensorFlowLiteCMetal.xcframework.zip", checksum: "83974d0039ad800de7ef9058eaa706dccca203684d2d1095a0b7feaed41cfa1c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
