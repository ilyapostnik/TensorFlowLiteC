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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231204/TensorFlowLiteC.xcframework.zip", checksum: "de3d8b1d178ec23dd41a4b8f2affc554f78dc3f70ebb205372812805a60be37d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9828035f56c4856f7401e65bfa7cd52eb67315ec6dfde9f369e49a52a9baf8d7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231204/TensorFlowLiteCMetal.xcframework.zip", checksum: "de8221125d25358e20af3ccd6c0f11fd55f81a9640a68388cbb0b6af43c0d899"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
