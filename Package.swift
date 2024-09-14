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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240913/TensorFlowLiteC.xcframework.zip", checksum: "89e7773733f293f8e2a9285a03562d6fd1ad108a3c8162ddf16572576eda9c91"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240913/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dc106eb8a95c03b39de94bc1c670705eb9a4cf97dcc92e9861567abc5ca926d2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240913/TensorFlowLiteCMetal.xcframework.zip", checksum: "cfc3410d3e6620c695340409385239b2c52e48e152cdfa1d4d4da79b5e049880"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
