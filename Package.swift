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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240921/TensorFlowLiteC.xcframework.zip", checksum: "bc1f50241d95b895a03739568f246cd40577c8dbe5eddc9ef6199a92ae285355"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240921/TensorFlowLiteCCoreML.xcframework.zip", checksum: "22f9b14e987d198a7e1145842e3d8afb3f6b829f1d2ee46fac9f87c4562b1521"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240921/TensorFlowLiteCMetal.xcframework.zip", checksum: "692f17d9b2dfeba566c93b7819dbf9a29fc63a7bf95701cbdcf14db7345d24dc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
