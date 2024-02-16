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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240215/TensorFlowLiteC.xcframework.zip", checksum: "e92af9adbd95c50c803da013d55f4db6d8c7a1f0a6bd7d0bf7522b6e04ceb8d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3acace6d51fcf46f0b093687ae1d33f9c57f3e98ee6521c17389bdfb16930ef4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240215/TensorFlowLiteCMetal.xcframework.zip", checksum: "aa169c392c4af189de8d5095385258b11d8b84284cf4349127b910540b01acc1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
