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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteC.xcframework.zip", checksum: "4e6bcf6938c7c6ada1e13f7920243342ffe1e1f1ea301b34627aa4dcdba6f8ac"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4aba73b1a8ba5e4ff3591d118d3cc63ef3c9cb071db7f6e50d2e9c17939df108"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250412/TensorFlowLiteCMetal.xcframework.zip", checksum: "42841642c58fdac034d8552f72aa4886018e959ee12c736ed578d36259da0d80"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
