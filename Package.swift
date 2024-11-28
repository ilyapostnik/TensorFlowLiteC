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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteC.xcframework.zip", checksum: "dee74e385a855661c469edafb5ba476d771e1b5f0ba892c0441d90a429ba40fb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "880c2c0367180176e8f8e4493eb56b542e182fa68063630d505eb41ea7940e37"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241127/TensorFlowLiteCMetal.xcframework.zip", checksum: "42510bb53994f683d79da20b3fc0d5e870a46b42283ada3506b611cbd4c99a2a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
