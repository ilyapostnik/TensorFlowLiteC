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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240727/TensorFlowLiteC.xcframework.zip", checksum: "7b0c9f8ee9ba558fd59b9d9a3b796606c244a9a04b9c99968f1242842dffa2c0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240727/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9e810eca06319989258f4e8a4019a97b2d682980d32923cdcaf44108c6449332"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240727/TensorFlowLiteCMetal.xcframework.zip", checksum: "90d6363a080cc616d045d650b3bbdc85dffaabb8ba583a2d225db002462548f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
