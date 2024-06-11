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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240610/TensorFlowLiteC.xcframework.zip", checksum: "a20c9002b71646083528d09f730255864731ac25e41b94de06d963f616a2cc2d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240610/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f620d666ce47f0213670cf805c3dbe1bf8970c275b76aedf9c03d0822f4189e6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240610/TensorFlowLiteCMetal.xcframework.zip", checksum: "8c3839adf70c5cce1bb63a438a95167b4ea293523a915573d46891b41733c8fc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
