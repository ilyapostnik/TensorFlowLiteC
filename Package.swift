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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteC.xcframework.zip", checksum: "054e9f4a84c4dbc7e7521b30b94619ab6150854cf3f279b59ae3ed30992dfe0e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bfb60b216fc0341c86b232ae9388c360cf28372439625499dd45e26bfbd08086"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteCMetal.xcframework.zip", checksum: "c84de4b3f9750850af9eb2ba2527d23fe51f4392954bdf2f64de623f9f7a9464"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
