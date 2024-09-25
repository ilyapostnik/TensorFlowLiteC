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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteC.xcframework.zip", checksum: "cb0388152c803a0c4b74d11c8320579aad4dcc2fbfd2ff561d8df925b1ca24e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteCCoreML.xcframework.zip", checksum: "13ae9526f30ce839eccaf8028444459091891962504f7e02fe7ee808aec86589"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteCMetal.xcframework.zip", checksum: "b905a986021008c04737e68d73bbdf46914b8b9ac8a7cf04378e9b2e121be81a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
