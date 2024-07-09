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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240708/TensorFlowLiteC.xcframework.zip", checksum: "d3a1a2680f1f2f3a5dc3e509b0163ed8a2f0443086e788fd9dda6a10784ecf7c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240708/TensorFlowLiteCCoreML.xcframework.zip", checksum: "150fcda8411a2ac737dea8e395a56948940ef8a0ce4219c50787e6b565429eb1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240708/TensorFlowLiteCMetal.xcframework.zip", checksum: "dd1a8fce7a25111684ba222dcd35256dc59a95905ba980718afc6f6df4ca6829"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
