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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240217/TensorFlowLiteC.xcframework.zip", checksum: "cfc8a61a604e2455ec10b6e7c4f15bc72d73de6dc9fc3e827bde864da452d8f0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e7ff8aee585cd3902a786b4f2a46fa068cee435049ed993db73e9721d8140dfc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240217/TensorFlowLiteCMetal.xcframework.zip", checksum: "94678cc8514ba69b57202148b01439fe67ca9d4c9d4b44a3839592da8cb6e958"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
