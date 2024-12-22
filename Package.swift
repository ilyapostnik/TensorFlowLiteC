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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteC.xcframework.zip", checksum: "cdede1bbb651160b02011aa1e27b1ae8071a4c45a2b7f6a5bc1ae6140864d7f3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0619f83677c7d58882a5dca68910eba73df1099dcfb1caebc6af9bba3954bd21"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteCMetal.xcframework.zip", checksum: "a34f143d6d2ed3587a139e9d8c3f1cf8af6b621fd6b4b98003e3fafa5d5087ee"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
