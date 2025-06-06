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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteC.xcframework.zip", checksum: "d76f6b72975d9d56ad28ec3b5dd61a8ad71ba48b7c894ac04716ca2eaeb1a351"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ff1b7a445ab9c54ed9cee555e8eb46f1f09fb7d55de1cf118b3b7b6bf9c39971"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteCMetal.xcframework.zip", checksum: "b1f11ea0abb9ace0e8f49ca648b50640c4141ebb8476a880d097e3581bf463ae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
