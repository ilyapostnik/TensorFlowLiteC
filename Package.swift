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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteC.xcframework.zip", checksum: "149da9e2c3740b6084b42fcadeb1854086affdd75a525bd589589b69ef9ebc1e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46990091f53c8cbe91c2f6be7b2f78e15ec0fa27fb01ce7754402131029ead6d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteCMetal.xcframework.zip", checksum: "ee9ecb6ac59fbbcec325999c0573b753222259ffca1badad14e398b7fe3107a8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
