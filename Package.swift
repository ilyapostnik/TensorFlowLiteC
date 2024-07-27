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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240726/TensorFlowLiteC.xcframework.zip", checksum: "a48b8d80e26084ce620577125fb5ace6a0d0c46e51e11f5e60e9bd58edb176d1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240726/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b0afb66d552cc0d9b342f6e71ccf34134c2401ab06831912974604ef12b6710b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240726/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef14bad5c373bc79e90344bd63044a38b9316eb7c1f7f656f07e7d3c9aa64c4b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
