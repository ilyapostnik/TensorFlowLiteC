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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteC.xcframework.zip", checksum: "d69d2f291b590d697aeda0fe9e3f6017276f11d5ded2bea8a3202edc30536d2e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteCCoreML.xcframework.zip", checksum: "77237d9e40e3761f2276d77e79b0f2a69e3f043161238be17abb16adda2a9100"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2875ea9f73d8ab1483ceff15ae28dff7dba196374c0a7500a77185db3288aa9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
