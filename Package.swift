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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240109/TensorFlowLiteC.xcframework.zip", checksum: "d8b07b1a78ae78f23761372c12d7e5242d01acd0c473a195c64f9f887fea62ee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240109/TensorFlowLiteCCoreML.xcframework.zip", checksum: "945cb367ab70386f265dce19f73cdb56871becea0e4565296f8631bd9e7f75e4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240109/TensorFlowLiteCMetal.xcframework.zip", checksum: "8957800196ee452ad352006a5d9bc37e5b35b8bbaaa4184a31edeb96fb2b5dfb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
