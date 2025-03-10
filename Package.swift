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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteC.xcframework.zip", checksum: "40d89a07419bf8928557379f12041ad890e2f2b9490838204be21456a2c20ec0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteCCoreML.xcframework.zip", checksum: "24bc1fccc69193443ab6decb93cd59e7a6f757c8d8fdab2291cb534780c68051"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteCMetal.xcframework.zip", checksum: "f47af2855c2d1c305c993937a6b9aeee6d565d369261ab94c8c31229e798701c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
