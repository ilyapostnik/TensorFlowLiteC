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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240301/TensorFlowLiteC.xcframework.zip", checksum: "dced54a39b284a870348bce81842e3d897489216d8b13d6f8bbfabe9997f936d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240301/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7878fa5bc5aa6df04cb676e3de1ecf30616bc7a82146ce0f1acfbb7ae8511ced"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240301/TensorFlowLiteCMetal.xcframework.zip", checksum: "0e1e03b7a13f3cddc710ed5a6aa8a549fa5ac73249b3f034b0a4948456d0b9f7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
