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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240416/TensorFlowLiteC.xcframework.zip", checksum: "dc469e423be02c825e8db99c25f3f9bee34ef427049423da5c44333b2dbb7808"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240416/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4f82ad60a5a732ced8d67520761fd6fad4953592875fdcab1e1ce1fa5f7632de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240416/TensorFlowLiteCMetal.xcframework.zip", checksum: "d0f03bdb61462d1dbf5264e4b4bed27c1a2d83d3dbe6dc73424c08527424cb64"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
