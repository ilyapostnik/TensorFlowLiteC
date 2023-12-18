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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231217/TensorFlowLiteC.xcframework.zip", checksum: "96af7ea2578615897cb80a36401d9ff6e29db9cf9ad243107938c68753aef575"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4cebfb97cc457a740b6c7b0b13b9fd02072f014ab7109eafb9c8419b958db595"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231217/TensorFlowLiteCMetal.xcframework.zip", checksum: "cce834aa33278617234fd2b2ebd4612bb9c4d4ddaa776fb1e29b3569b5d9ab13"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
