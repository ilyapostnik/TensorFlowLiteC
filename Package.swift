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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240824/TensorFlowLiteC.xcframework.zip", checksum: "7910aa3584aaeb21906c09961af2572fa37487f849a422cf4f26561c7255e13b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240824/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5ee1628a1d64af4f183529c414c75bcbbd52bcc98b5af14b61d81f8b2d5fd1ed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240824/TensorFlowLiteCMetal.xcframework.zip", checksum: "a01de06ac26bee50ab267af4a776ccf80efc1121226608309bf0e337916606ed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
