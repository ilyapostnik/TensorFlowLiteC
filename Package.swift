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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteC.xcframework.zip", checksum: "97208e38097542751e8f9c3694c56c70f041c85704b40a56cecd5d69b64769dd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteCCoreML.xcframework.zip", checksum: "466e953f2f1e08f60e42b73d1682f1ad57117c8e22d57534768b2a6d07512cf0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteCMetal.xcframework.zip", checksum: "2939a28e82e67b0bcd439eb757927a3269a05cf2ffb1e29c87c09c7aac7e17d9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
