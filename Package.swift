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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240523/TensorFlowLiteC.xcframework.zip", checksum: "836b37c3f32901c677603d7e07ec9f9b58a58664590067a8a38232554aaea3f5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240523/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9af2ec88e9c8c98b11ddcaa20266543743a9c5f871f829e7a244018575d90232"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240523/TensorFlowLiteCMetal.xcframework.zip", checksum: "b85fb338956bc1142474b35b1774c3bf58ed068bbb60ef5ca6bce52bbf165568"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
