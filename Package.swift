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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240814/TensorFlowLiteC.xcframework.zip", checksum: "18eeeae0a908cd020f59b73233c28999fa9ca74cc8c2f5d4ebaaa9d2f3b9d56a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240814/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7362f5d2ac5ac550b18b0945b2e3ae0c5cd78c53698383d35f808d15ca94c1c9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240814/TensorFlowLiteCMetal.xcframework.zip", checksum: "ce7d7f9cf0f6b2a25665b12f54830fb51ab4a32a1a6cb928f4c8ee1dc5bd37a0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
