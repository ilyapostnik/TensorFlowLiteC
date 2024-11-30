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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteC.xcframework.zip", checksum: "a9354799cc80765e19aba0b6b395ca90b6c5ea275109bf76e9a49516f53a90fb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e20593db6e846f882a2a5d405a14229c2b9ae58706e0b3219359762b08ac8d7b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteCMetal.xcframework.zip", checksum: "37586175d8c6efe98650fc61395ed88172d9b4fa940f0d4b796c8c05a437afc3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
