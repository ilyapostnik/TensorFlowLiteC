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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231231/TensorFlowLiteC.xcframework.zip", checksum: "58d716fc087a87626d90a4efcaa69e5cfc81e96e4f05b98942ee11c2d575f9e2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231231/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9eff11c575f5dde00180f696603dffc6b2908859428ca4e022d34b7f8ef8334a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231231/TensorFlowLiteCMetal.xcframework.zip", checksum: "3f6dd682e30fcabf8264fbf59a9a58eaf2fe8db074c2281f9067c80706fc2036"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
