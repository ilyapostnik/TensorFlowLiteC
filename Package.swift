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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240521/TensorFlowLiteC.xcframework.zip", checksum: "8d9785e8db68113842f240d57b98f559288d06c4e2e6dacde99963fcc268c10e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240521/TensorFlowLiteCCoreML.xcframework.zip", checksum: "84f526f9b390d73de94f6399c05a53196f22870b747178f3014822aff75e3cfd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240521/TensorFlowLiteCMetal.xcframework.zip", checksum: "5357c0d7dfa3356b6ce6ee4f5af22d2c2747549c93b111d96e91dedeebfcc9c1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
