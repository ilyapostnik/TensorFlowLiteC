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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteC.xcframework.zip", checksum: "c7b2201dd37a1cc848730aa7b2348b2e4ba3cabec7bb9065b46403db0a13b64e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b62bd039fa0134174d22e48c1e027622888d07c04ac1461e7a07af10c8d90eac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteCMetal.xcframework.zip", checksum: "a540a4acf830231d39c376029c497902eda9c04a12bb5f2b06be45a90a4ec95d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
