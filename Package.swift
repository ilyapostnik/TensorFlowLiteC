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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteC.xcframework.zip", checksum: "c98a28d6e97fc6f7d7aac2204456c0ccbf99920b8aba9919baeaf7dddf30e896"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteCCoreML.xcframework.zip", checksum: "23ce7ea31b940eede7e528818824d6c92391850d23b1c15e6b70cbd4063e418b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteCMetal.xcframework.zip", checksum: "0fc2a31f80d2899cb8c7a0cd8348065151ad187645c8b4f5a5a39668a4a11c65"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
