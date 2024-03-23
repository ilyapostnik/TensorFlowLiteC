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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240322/TensorFlowLiteC.xcframework.zip", checksum: "67371182b68c469e76756a002f22c717ed4b3e174a792f9b42b4883a1a5ece6b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240322/TensorFlowLiteCCoreML.xcframework.zip", checksum: "835377e5951c81fb265c2f95716599241466f66e60164f89adf34454ce43c118"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240322/TensorFlowLiteCMetal.xcframework.zip", checksum: "3bc820407295288ead92a36415d0303021b41b58fe15064faa36ff4511b1bf8f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
