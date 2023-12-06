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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231205/TensorFlowLiteC.xcframework.zip", checksum: "80eb381fc1b28253e01766746da546e22eb600f59612fb16f393a7746d6f668c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0cf921f81e9bba142ab7c67edd4ae73e3a101511b0e6d9dc8648f2d68591d785"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231205/TensorFlowLiteCMetal.xcframework.zip", checksum: "63a732d009766e48ab4a599d12563edcb6ba5bcf68a633ce3c4184758b67247f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
