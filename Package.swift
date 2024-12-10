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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteC.xcframework.zip", checksum: "ff976250039145ddcdbee6094fa65c06fe6fb66d8c6d3e684b9e50866ef7a911"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a254c113f52dd77c87f4b776868b974026f56e55c378c4cfa5600a36ea31a638"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteCMetal.xcframework.zip", checksum: "423027dceafa895eaa40994f822711134842a8be5d81986cec82e57e3caa4941"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
