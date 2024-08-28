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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240827/TensorFlowLiteC.xcframework.zip", checksum: "a55cc27aa5c2ce4981c2ee9f7b8a4544c33346ab3ac60dd385e9090232846484"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240827/TensorFlowLiteCCoreML.xcframework.zip", checksum: "93fbdbd6ce18c30beb845ef2ce5a90c4d6dcad4be85b4819d402d68ec9b8a605"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240827/TensorFlowLiteCMetal.xcframework.zip", checksum: "322a9b7d87868fbfb463e894f871e6502f765a5110dcf39e9cde5bb28ea9debf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
