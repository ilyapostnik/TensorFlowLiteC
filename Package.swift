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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240110/TensorFlowLiteC.xcframework.zip", checksum: "8086b1d78b4c5dc72bedb587c35790c2baf820fff3b9fbe6aae2c675027ddd81"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "691116cb5d832a6254e5177983bafbbe9235871aa1d104e8d901a1431a8159c3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240110/TensorFlowLiteCMetal.xcframework.zip", checksum: "67ecd2f45d4cc5929a398577ce2789d2ad17cc25262c66c83fe809f29891837b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
