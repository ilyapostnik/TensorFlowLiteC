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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteC.xcframework.zip", checksum: "fef662d97b48a98c636628af3cad3f850c20777987326aec69a7e89f5532de61"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9c5289631dce8155bdb174c5407b702476671fb81cf0d82d93f5055a71b9fd87"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteCMetal.xcframework.zip", checksum: "cd21a575c1fea137288c1bb7acdee10ad746050f8b6bd7f7608d7ed3460781cb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
