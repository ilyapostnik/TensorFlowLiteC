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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240507/TensorFlowLiteC.xcframework.zip", checksum: "159cb9cc9680df82e1ceb4a61118f7cff4c44608ec816973aad91f0362af47b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240507/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d45129eb36d71d4065cc7a8cc331c0a28390bd7790348a60c4468dc1292cfbb5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240507/TensorFlowLiteCMetal.xcframework.zip", checksum: "1188eadda6aa9df256db0de0317ebdbc42b370a940775e0bfe76e41f47b5940b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
