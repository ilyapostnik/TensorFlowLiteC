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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteC.xcframework.zip", checksum: "ee42da4a714264a0183caaa7d2001b97341698a49617c63fe13a63ce3868c6cb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2911aab14af2a91277fc829e13befa6d0ca769a911da6b5532c17fdf7eba2ab9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7d627c7e7bf6c7bf3e3d76e5828f884c3befd66354dd1eac509d0cbf6941baf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
