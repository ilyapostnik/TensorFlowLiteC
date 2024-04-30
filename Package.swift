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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240429/TensorFlowLiteC.xcframework.zip", checksum: "4ec0f0c2dcf630ad90b57ac0094f2b5572946c41c30999bd917e2acec93c37d0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240429/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cef3dd2f08e8a7f8d909834d7298833939c21c1dd25a2b3d7680863050025b5b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240429/TensorFlowLiteCMetal.xcframework.zip", checksum: "d4f9403865ebf5706ece02e696b294e9a5938bdbbe67137ccd33eab4a2e1ba51"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
