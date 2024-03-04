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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240303/TensorFlowLiteC.xcframework.zip", checksum: "3f511668ce8a709dcfa1239b59e7ec3061101bd5713d285355840fdf8e0137bd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240303/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f0896574901fae1195120e8c65d52e56388a61063ee2709f2d377c1379c98a7d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240303/TensorFlowLiteCMetal.xcframework.zip", checksum: "6828411ab49ce96500a446d35eb734198eee0398e6d409ad318d8f100d45f495"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
