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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteC.xcframework.zip", checksum: "770170cfa2c43cc9b4f6ee3bb79eaff45a5ecf6e81e8d8904f634b43cde8a418"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5c49a89a7d229396973e2ed977e3774500a32a93e6b4199df2584d272202277a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteCMetal.xcframework.zip", checksum: "e0a8eb87783a181e3d42288c1988db5c51fc00aefc5b398c32034cda71efdeb8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
