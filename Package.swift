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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240617/TensorFlowLiteC.xcframework.zip", checksum: "25b791fa2416ab5f37aef640d0debebacfe80d35b0b59f39655951e5786ae8cb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240617/TensorFlowLiteCCoreML.xcframework.zip", checksum: "97331cfc3c630e5e7e7296981b742313d6882494654618d29336c211e36173bb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240617/TensorFlowLiteCMetal.xcframework.zip", checksum: "b1ab6311caa14c5e164d83e3213928a1b6a688416a79a31907e4566ad12d2bf3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
