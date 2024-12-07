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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteC.xcframework.zip", checksum: "8634a2b043464634d30476edb23e752e9bfe8a7f1469f317b7ae8e1aa6330474"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "21ab80d80a290da0240c69b804a90d865d5056c7d5d2d55b15ed30795aaa36e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ca11fd2732ada52c3d5ceb699fd02e3eb4a019398611190131aab7b117402a5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
