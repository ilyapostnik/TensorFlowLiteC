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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240414/TensorFlowLiteC.xcframework.zip", checksum: "d03dc7430388fcad26c872302cb0861da8b4f946b01ab92031ed5d1d8cc6ae0c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240414/TensorFlowLiteCCoreML.xcframework.zip", checksum: "89d82762043db9f2f6065a0837245986b50cadff6af09fa00d35976e7c719c0a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240414/TensorFlowLiteCMetal.xcframework.zip", checksum: "6b8dc89448ea420919dad16eb0490ea1b2a433bc2b553e5b8e72f9e10323e924"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
