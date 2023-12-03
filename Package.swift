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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231202/TensorFlowLiteC.xcframework.zip", checksum: "52aeeb3cad99f7336bf29538efba298eb7a353ae2e2e899c9e1dc33872b7375f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "77511c4d55b2ab736d80753630b5177b305952dd59d934c0db13a80cd6cfdaf2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231202/TensorFlowLiteCMetal.xcframework.zip", checksum: "ece2cb1eb5d97b6060f441e46c2fd95cae9a80ef5140e2c0e547fc7e7d4a6e54"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
