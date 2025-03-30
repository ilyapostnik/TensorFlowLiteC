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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteC.xcframework.zip", checksum: "96b4ac158963d03f3dc607fffbfee9bca7f3ac5a64f51a76fd72dc9540a8d355"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d627bfda3a1d713da72b5cc34b60731dcc6bd047dc3bdf685d963270a5a0ccd9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteCMetal.xcframework.zip", checksum: "d191e57064aea57092f321bd2bd1deae960cb17d74f6c8e7b3a3a8cef14d3115"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
