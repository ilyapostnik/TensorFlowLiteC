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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240324/TensorFlowLiteC.xcframework.zip", checksum: "dc9b71e908ef8e467ab5fedca50326e5e1a0bbedc9865fc622c7e7d93d957a8f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240324/TensorFlowLiteCCoreML.xcframework.zip", checksum: "08b6a48c1301bd9ed5944b4db5cefc5589f9c49de1ea2fa8d2882f80b351654a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240324/TensorFlowLiteCMetal.xcframework.zip", checksum: "de466d8b30d939b3bdb6d2fc9bedef119e82802892c8597e6b89ae2fb6d0eb02"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
