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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240131/TensorFlowLiteC.xcframework.zip", checksum: "5b261f6b640c431a5bbd5166a5499ce46701337642d188613c91ca10bbf8c639"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240131/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cf8f1b97b9c4fb74ed8551e7635879714fe702cff348b14aad676623537f190f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240131/TensorFlowLiteCMetal.xcframework.zip", checksum: "3510f6d2308d36297865f01f479c106c0d09fc800817e1075c92ad645c2d7d73"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
