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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteC.xcframework.zip", checksum: "2584a76271471872c35b488feeeeebadd115cfb23ee0359a5cce87b08ede41ec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ea70c61a76bf957687546651e02a2d0b41b4e3fd446d581f9ab2e8b6438dfd6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241103/TensorFlowLiteCMetal.xcframework.zip", checksum: "a2b69efb495376070ead113bd66a9970467fe59092ae004b6db91af81b3dbc4c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
