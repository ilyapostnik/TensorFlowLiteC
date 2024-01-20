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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240119/TensorFlowLiteC.xcframework.zip", checksum: "5938dcd100bd357e6f0a404c4cdd162c0c6a4a736bc6ebeec74a3a38ded7cf66"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c8c8dac24839dacff0f1e7e27858f8e1caee1fd86abcafe7c2239406baeee527"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240119/TensorFlowLiteCMetal.xcframework.zip", checksum: "158b670ccefccf3bbe837625dd533b892fdb8ba2012da5c93e564c08f819632f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
