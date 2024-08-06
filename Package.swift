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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240805/TensorFlowLiteC.xcframework.zip", checksum: "e642d363c9c468e382f230d4ac837955e415b26c988285c677fc4b1282c0e3cd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240805/TensorFlowLiteCCoreML.xcframework.zip", checksum: "baaf430598c814d255d760cbac9a0cbdd48ca261cec44f41a3ed45737c54e858"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240805/TensorFlowLiteCMetal.xcframework.zip", checksum: "26a7a007e35fd0508975ce5056b760b2b5644f12d535911be78f1c30a66c15a8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
