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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteC.xcframework.zip", checksum: "8d368460630e48d360c44d35f0477187945663a7a8b39c609358ce6d7dab6362"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteCCoreML.xcframework.zip", checksum: "78b6f34b768fe45cafefd56b12f6640319e54e328bdc0b0f96f40af2f15e9262"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteCMetal.xcframework.zip", checksum: "32a465ae782dcf66226b9139aee8cc807e3bdabc019b301d58dc9b9ddf8b95f6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
