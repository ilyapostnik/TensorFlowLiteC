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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteC.xcframework.zip", checksum: "2fc1d189814dccb68f4102b808d78a33e979a79dbfb68dd7a84a46f7ec09012b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3fb70923cefce7c36b5bc2766b572e9440afce67d61994e04039b32184a75dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteCMetal.xcframework.zip", checksum: "2188f8910372e47d5c573b0628c69c07ab2b3bd78efa6d5b4d0b67597676b5c9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
