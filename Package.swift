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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231221/TensorFlowLiteC.xcframework.zip", checksum: "d66d3100a81ac973f6935e93299ab4d26661ef7534e7092a75a98e8c6229a1f4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1c1781714e0639cdb279732fbdc78d45af2cf0cc47e97d9c9dd1bd38c7f4afbe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231221/TensorFlowLiteCMetal.xcframework.zip", checksum: "5ed32a74a555f8a168964ee6a1c8554abf74f1b9392f7539aad82a10d93b91f8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
