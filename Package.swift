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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240630/TensorFlowLiteC.xcframework.zip", checksum: "9b23bb2ad430599f43fa7b4900cff08e06b1aaff29fa79b7950984dbff930e37"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240630/TensorFlowLiteCCoreML.xcframework.zip", checksum: "33a587cfd671cec98bf569141dedbcacb184b58cb9d7b44e7d5196ef3ac1057f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240630/TensorFlowLiteCMetal.xcframework.zip", checksum: "dc186103a94f52b244d9186d7ab7754f958015c327cf087b0236954b2ae49f36"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
