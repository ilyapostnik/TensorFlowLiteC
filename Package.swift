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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteC.xcframework.zip", checksum: "c9ac5479ecd1e8f0c69102273b2d51a0bb1fa713b9886a0daca5fa1d129e7669"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3b2273d021f76618810242fa8909117a959cfceccfc28d294c7c1f7f90e3fd14"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteCMetal.xcframework.zip", checksum: "31ffe6dee5b2a11b8b3cf66c7afe78e74a8f26342e48fa2509ca14f26d102bb4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
