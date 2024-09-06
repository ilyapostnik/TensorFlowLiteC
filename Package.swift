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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240905/TensorFlowLiteC.xcframework.zip", checksum: "c8ceadb16bb2818ce6e6afdb944493936c92ab83e5738f0ebc916f080b2e3708"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240905/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6a279aafe4f94d1a746ca81b47027fa3110bf4367d00131bf1e3a64c69c364a6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240905/TensorFlowLiteCMetal.xcframework.zip", checksum: "1333c105fd3ba2afa0afdd17e2486841e880a0c3fb51cb0bb6c8773e8f3b9bcf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
