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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240312/TensorFlowLiteC.xcframework.zip", checksum: "860c83212336c431e13acaf860b5817dd7b94fe725a1140e60247c64a5df57b6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240312/TensorFlowLiteCCoreML.xcframework.zip", checksum: "19d627e84da84feb2d9766655e5891d5dfa019137441fc9f765755b957ec242e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240312/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f267872c380bd246dacd58b8f7a93745b881bd448c6a4f8ddc24d8eb2a71eda"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
