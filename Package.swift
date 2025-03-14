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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteC.xcframework.zip", checksum: "16a510d9f23ec889034049b9bfa3c050ba04f80265b38ba9a3cd7e24795f3e37"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteCCoreML.xcframework.zip", checksum: "49d28593e9ab1a3b3338e37c4d99c05c7378db246d4ff26cc7494469ec79a742"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250313/TensorFlowLiteCMetal.xcframework.zip", checksum: "a43fbff1830bdf9413a6533d02a59cc4215fa68ab27cd0bfb6366b03c41e37fb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
