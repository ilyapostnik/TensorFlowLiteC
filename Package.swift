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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteC.xcframework.zip", checksum: "b1f89fbc70ea9fb6a096ac83ef5f3c3b06b82c4626994820d4c5a3f6279a1045"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b15270a4f00178da0b8e94927578e14949626f68f8339bd6ea549696bb3125c0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteCMetal.xcframework.zip", checksum: "165864b44e24148e6bcf7bd523bc0df5203b31e95dcb52d724b83f987966517c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
