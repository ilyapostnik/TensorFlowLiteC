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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteC.xcframework.zip", checksum: "bf9eb7b9831e71dea332b5978e6ee461f76d093f294160b77981a89ba467de51"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "03b783a5a3755136a1fc81b56d58d15eefd99432e6eb90aead071d8bec134b22"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteCMetal.xcframework.zip", checksum: "5b57847d891602b29cd908285c5b7ef01f4f36145bef7d0272ded59ba3a79a4d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
