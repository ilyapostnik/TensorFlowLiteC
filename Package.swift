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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240410/TensorFlowLiteC.xcframework.zip", checksum: "95cf901f54da9278f6c47a9ad6b311c489f4343a7838b430ff972b3653d26b3d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240410/TensorFlowLiteCCoreML.xcframework.zip", checksum: "01892e4e84e6c20507215491d061d4e7a0e577b45042197cd68493a6da85734a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240410/TensorFlowLiteCMetal.xcframework.zip", checksum: "f53f6ea282ab34e01526b285c43295d3bf331190aeb329e9101e89edfd4a8bfb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
