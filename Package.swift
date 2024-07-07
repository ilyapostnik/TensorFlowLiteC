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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240706/TensorFlowLiteC.xcframework.zip", checksum: "c764d1eb1417825fcc14ba590be127783e676faa8dd14b16468e841715c33435"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240706/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cb7b11d3ffae0ab12d63d1a9e1d897ce4868542169db895344158360029a99ab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240706/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d299f71cfcf0d96efb0f2663a2af85921a05c17b168e44b991598c00ef4845a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
