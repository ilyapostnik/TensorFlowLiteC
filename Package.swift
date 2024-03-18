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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240317/TensorFlowLiteC.xcframework.zip", checksum: "08ed938fd565cf532fb88a37ecd799ee519f897b5d44ca8b19f47d7695c6e16e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240317/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dd99be024aefeed2b74e31be0b301772774697fb69654011161acfd9f0a41328"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240317/TensorFlowLiteCMetal.xcframework.zip", checksum: "168fce88de858c718e0e4045624db1296666b8aee40ce81ce11aaf4ba59fc53f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
