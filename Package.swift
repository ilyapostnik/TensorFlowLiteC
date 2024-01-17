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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240116/TensorFlowLiteC.xcframework.zip", checksum: "e1b75cdfe26d802d86222e77a8234b83dcd8a079e4c81601254408646683e817"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6288d0cc05f220a4225c95bd6a1bd5e4f8f6e3e2e79a56dbefb3c5ff457a19d6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240116/TensorFlowLiteCMetal.xcframework.zip", checksum: "ab48f53c6ff62e7f2098823341a672d4740413890436424d72f68120a771c182"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
