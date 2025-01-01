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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteC.xcframework.zip", checksum: "92229c3729d9f20a751d2ada9fbefc775d68ccb7db53b6a189816a4b9483a61d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aa235116eb7f48fe4b9797ecabf9488cc65971d6adb24cb6f5e6b9b4f1f43c5f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteCMetal.xcframework.zip", checksum: "33cb827d482b334b1f9826c37f5fbb0fda6b0e7cc49097261e8f084bbd7149d8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
