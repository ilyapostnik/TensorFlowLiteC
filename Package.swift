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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240702/TensorFlowLiteC.xcframework.zip", checksum: "9f20aa5612e31a7385075aac89fa3f5e24f536cbd741642b0ec99b76c11d0335"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240702/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5d53ebd0331ac861806d2563df50850a05f22e9e4e9a441167308b26b15b977b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240702/TensorFlowLiteCMetal.xcframework.zip", checksum: "23de930d0e54215b446889448916913deffbae5a8341c11025bab07d6ad65a06"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
