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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteC.xcframework.zip", checksum: "c4acc8e6aa50ae942d372d290095d39eb51030fe6059e6bff65392bf20ad5b6d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteCCoreML.xcframework.zip", checksum: "609a7813f47700265d0cdb48057d98f0f2130bc3a81ad9ee8b801430692284dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteCMetal.xcframework.zip", checksum: "f6dcfa0595f1ad06d6130cc43d06ddadbcfa146889dc6758c570aedb7d2d48c3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
