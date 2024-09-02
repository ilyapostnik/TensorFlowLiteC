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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240901/TensorFlowLiteC.xcframework.zip", checksum: "f570a1095ce4226b4d61d16786849c7897f3e2d29ee12b29ea2e3c7f36ed0870"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240901/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e34ab25397e329e04574e26eeb41302261becbe8aff483f9abc9aef15f85f4be"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240901/TensorFlowLiteCMetal.xcframework.zip", checksum: "3870522e01d3128905c2ba245bf553e14a6b26b25f794c1a3fa9300885981327"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
