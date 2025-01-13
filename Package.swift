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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteC.xcframework.zip", checksum: "b1f54c29e482240729a177698945686462b3355abf992f306fbbf62bdd35b753"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9ea11c309696d69a51a56b4aa08761b8b1e7f47e825b9e94f72b8294fda81e4d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteCMetal.xcframework.zip", checksum: "83f90f63872269272f768d2a8eff1545b62ce7cf36936d91645ccb4f69980d49"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
