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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteC.xcframework.zip", checksum: "5dbc1f691269239e42d83693fd0b9c563fa0745395792037eeccf130f117f9f9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteCCoreML.xcframework.zip", checksum: "48b8bc66475f7969893695db2e2a28b50b55ba24171cfd27604c85e8acd4d89b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteCMetal.xcframework.zip", checksum: "31b2460ffefa71f102d0f1d22f07089a9968afedc68d2693d0d767057d264ba9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
