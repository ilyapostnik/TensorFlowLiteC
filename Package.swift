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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240716/TensorFlowLiteC.xcframework.zip", checksum: "eee7a1604f12b3b97a0450fcb1ae51636aecbc53f900b60e84bdfb7cf2f240c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240716/TensorFlowLiteCCoreML.xcframework.zip", checksum: "32c697af140ecaf1a3aae0a42c96bc2c0abe497e72d498c28c4154be110024d7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240716/TensorFlowLiteCMetal.xcframework.zip", checksum: "72635d772258b772efefd0e10b209d4186ca904657447ecad2e6defe8bc8e483"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
