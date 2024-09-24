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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteC.xcframework.zip", checksum: "189fd6c759ce9f52d2e141c1ec11283ace7c8f7ff994fd0d0a7be1cb47e53139"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteCCoreML.xcframework.zip", checksum: "49e26902ae8202a1fe4dee4cb684ac2ade62d304661036075db54f7ab0e5f651"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteCMetal.xcframework.zip", checksum: "e48fc1f9b46401fdf03be2d14bba294dd623214a024da176d4f020832e678c9e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
