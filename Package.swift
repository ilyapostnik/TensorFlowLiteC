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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240319/TensorFlowLiteC.xcframework.zip", checksum: "4cd34353098e7ae01b10aa98d2e0500d75bd5b9b4326fc8622284c8fb66c4e09"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240319/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2def16896c714bb4893472444317c2bbe63a41fa27cd70e04ccfd13d54c1aaf1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240319/TensorFlowLiteCMetal.xcframework.zip", checksum: "87de2b1faa7671c948566ddbb35a0b04e1763c3e1bb43dd4fa1d679cf1fdc209"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
