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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteC.xcframework.zip", checksum: "96cd11aa8ca519e9a47c453147d604f82e74d8c1f8d2be5d19eb23e5d927968e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4f05092a261a0eeac41911af236cc075e432e0eb3bfc1ab7bd849d6255e50d44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250505/TensorFlowLiteCMetal.xcframework.zip", checksum: "4e3c623cc32137a825dbf3c5951f2fea3cf381d0cc0218aef0ec5afa5d871a58"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
