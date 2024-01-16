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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240115/TensorFlowLiteC.xcframework.zip", checksum: "1bcbfe2f45c2885b091a3d055d9db0688f03ef4d828405d1d6252ce90ed5cc05"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a7f542b62100df861811241f6b5c9f71972c226dbca12736c7ab1d7924aa80af"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240115/TensorFlowLiteCMetal.xcframework.zip", checksum: "8ec514959e61d69fbc0e35f7404b451942b665b54c99f92664c3987888d68afe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
