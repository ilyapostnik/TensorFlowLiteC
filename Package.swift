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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240615/TensorFlowLiteC.xcframework.zip", checksum: "13aa9bebe1591e00b8508fb2cb68386c1f24c698c9de4baee56a2552da1f2685"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240615/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b0acbae25546f089f8f925907b87b69d63a1df973a621d4761fada92cbc82ef6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240615/TensorFlowLiteCMetal.xcframework.zip", checksum: "02659e51d574172d632be32555c97d831974d6dc23a36d9e5b0703fd1ef8adcb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
