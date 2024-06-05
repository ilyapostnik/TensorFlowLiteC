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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240604/TensorFlowLiteC.xcframework.zip", checksum: "0429a9a0a089efc3f2d92fa78f466ab5c7884a011fd14357aa108753696a4ac6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240604/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7a40cf82dd05ab49ed7e980e50633bc51a139009e6212c6ba14c1c34d7bd41ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240604/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3c30dac9e31743f276c3def35fe6a16003ed9a5d89c3c6a487e096e26e3f67e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
