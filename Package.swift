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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231225/TensorFlowLiteC.xcframework.zip", checksum: "193d4a271c4ac5d205f811ac3a4a080f67c368a80784886b6192fbe8fcc3b4e8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "92f2a2cc07bdc41ecebb527509e11a973b52dfa712aed05b90e46b31b56f064f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231225/TensorFlowLiteCMetal.xcframework.zip", checksum: "d8c902d2b044ef1fc8794b234e31f63784429703c91cdef1e968abdb6fb9d641"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
