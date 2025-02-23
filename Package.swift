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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteC.xcframework.zip", checksum: "aacf54a382c23610961f68aa64cfd4abddf8562330388ed9ba6af70c5def5628"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "486a18ebea1e9bcf295bc847799a6cac4b844de378e22b670f84e497b6b385e0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250222/TensorFlowLiteCMetal.xcframework.zip", checksum: "eb01d247385669d10444a673593de733f1a31aa15e703a1d2dc04e200cbf5dde"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
