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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteC.xcframework.zip", checksum: "2c16c65b689f64baad80b6bc6c13212538f044d38a4423b9c72515dd430c21c6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44698f99e97c3fcc5f9c788e3b750264b07e9fe6e49e0d9c73a319f7116fb989"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteCMetal.xcframework.zip", checksum: "8d7e95f4191cda4123412149a7517227d9202d0ab6475d09efaf8efe5cb1b3d6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
