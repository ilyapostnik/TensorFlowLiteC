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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231210/TensorFlowLiteC.xcframework.zip", checksum: "8e5e7a09c86dd63f4a1b275f19cbc240209fbf607174b3f59298ad4ff994fe30"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "90229f484b1972f88acc836c9fdd919ab3910410b9ef4bcc58995f9ce8a5f6bf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231210/TensorFlowLiteCMetal.xcframework.zip", checksum: "b7b54c6587a7c42c346d481c79c8f914ba30bdb21174dc357a9f7d4e51a867dc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
