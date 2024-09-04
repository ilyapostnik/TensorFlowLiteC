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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240903/TensorFlowLiteC.xcframework.zip", checksum: "49f4e0a02f2c438ebe02953b9302804f2a9b8be3bac45b4a7849fd74124e0d18"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240903/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4fbf335761a812336695b0332931ae5f58e41ca3daabb28637ba2774b8d9edf1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240903/TensorFlowLiteCMetal.xcframework.zip", checksum: "1378972112187e123985ac2842db026ef71ff20e89047fc05e01aea37e36e16d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
