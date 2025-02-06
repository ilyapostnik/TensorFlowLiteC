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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteC.xcframework.zip", checksum: "4afbd40f79b4f6c58e81e7222b21f4e2762c0252e6dcbb6ee7b6e0fc5faf4777"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ad137468f5bda9c0614799e383e25d5e8869213a666ae4472b914dec8fbe47e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteCMetal.xcframework.zip", checksum: "379330c1460ca44d83b7eb17340a647d8d9b9a4151b5d8cac88dd2d04029d2ef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
