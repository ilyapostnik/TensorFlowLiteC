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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240121/TensorFlowLiteC.xcframework.zip", checksum: "87f0c5443e5169d4610c70160e141bb1c02bb08a13d9bb7857f1182ffc009fe5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "42df7254ea7563e82656a4823b8ab3e15668546c84ec89ef891917b039f8e7a0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240121/TensorFlowLiteCMetal.xcframework.zip", checksum: "dca5734f0cc328606646230635208b31163ce48320284341996c251db26a1d6e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
