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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231213/TensorFlowLiteC.xcframework.zip", checksum: "1c29b292dc306b164c167836c5847f2dd22dd2352a1c38f18b44b0c4886fe093"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "45d330f0a4dbd8d03eb0a8778cb3e866e3186007fc3b3bddb7f0d1e66b400e46"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231213/TensorFlowLiteCMetal.xcframework.zip", checksum: "bd339222325a575f5b8bbb69fbc0aadff80414c88417396ba955e9aa5ea59a6e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
