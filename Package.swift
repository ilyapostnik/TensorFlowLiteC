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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteC.xcframework.zip", checksum: "df65e3437baa534a938334eaacf9eb3a0be1d0948edf79a23bd41585077e44c3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a54a96ea4fde55ee25dde0c1b562ae19d4b8e9c08e82b22e02b70021ef04141c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteCMetal.xcframework.zip", checksum: "4a5dc7b3f94de97dc82ed9775d1e5e509110da0aab5940ee8392938202e714a1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
