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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240318/TensorFlowLiteC.xcframework.zip", checksum: "3e32a310e9a0df755668becd32316ce2d5bd0c61d4283cbeb2cba54dcd6f5893"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240318/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7fd93c63faeb81173b3aa2c37ddd97ac32d08585e7c9b1911fa12281065dd5ac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240318/TensorFlowLiteCMetal.xcframework.zip", checksum: "e36d96d67b990b4085efe3cf8ac04884675b5ec4ecb7cbf3e644d1aec00d9642"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
