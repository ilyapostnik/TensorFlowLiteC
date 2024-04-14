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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240413/TensorFlowLiteC.xcframework.zip", checksum: "20f40af62c9e74512f1cc857d0a2f31cd6808b39dbaabc2da882d7728fb271af"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240413/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2f11f2d22cd36574e07b42e2ccb3816088d9bbe63903bac2745c9ce1ac1a575b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240413/TensorFlowLiteCMetal.xcframework.zip", checksum: "0490435ea04ab4b9773b200539b86a1a86b866e42d5af286f3671f7a5224f531"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
