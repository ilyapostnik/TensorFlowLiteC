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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240102/TensorFlowLiteC.xcframework.zip", checksum: "21385d905ae2eec4e4741e27a34b7073ba728f37fd8ba402871d3b5819ec601a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8f6735ad2be8fee545e886f4568549abac5e1dd83ec8a79e7fa9c59dea4bd929"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240102/TensorFlowLiteCMetal.xcframework.zip", checksum: "e13c4efc83918e47497812004635ec4e000d32cd7357d5a69a77fbfc8c6159bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
