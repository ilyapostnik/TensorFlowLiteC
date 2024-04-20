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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240419/TensorFlowLiteC.xcframework.zip", checksum: "7c442dc59dedc85022182a724e345ae7936941713ce12d25ea3e1fbddab1eb48"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240419/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ddb68a8be8ff570990da2ca625a30094a1f8850e74eb635940345f35afc9590d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240419/TensorFlowLiteCMetal.xcframework.zip", checksum: "c5de459fff27bc5285d1d48ce9352a3ba6c4a8dd1d6188c51b48185f196885f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
