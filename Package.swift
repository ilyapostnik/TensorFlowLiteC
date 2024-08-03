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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240802/TensorFlowLiteC.xcframework.zip", checksum: "516154181258ae8c13173b26fc03bbffb28609a462e46ec3f345a088a6f87619"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240802/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b668d8cdf1cb989977652cd2fe29b020f26d04aa73ce97aa1ec4e5ba6d7c3b95"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240802/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2477b0de42d0c272c20c0a0024ae635bc4d2d07a1ba7485c82a29db2b153c97"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
