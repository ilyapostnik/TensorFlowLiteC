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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteC.xcframework.zip", checksum: "992ff50a15229120d3cb881fa10b482e20f55fac5e63162ab1ad7a91d5f6d829"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f0b7ba8a584760ad5e472b1df3c30d6207b11bd4481da320aae24b02a411aee7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteCMetal.xcframework.zip", checksum: "b1119bb7f4b270c115863810d30bfb437abc949ea6a666d1b76a24765855891e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
