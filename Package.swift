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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240728/TensorFlowLiteC.xcframework.zip", checksum: "5a0453230b3960ad84ac5c737fba3d15ba21d22bd94a65176b131f2edc2dae94"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240728/TensorFlowLiteCCoreML.xcframework.zip", checksum: "03dde258874d62bb7efafa7990d7001728b3901b76345917b44540a49e0e11ac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240728/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c48ff32c704300fab69cb091998cff9e6c4e18e511466eec7e9de0716d88aed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
