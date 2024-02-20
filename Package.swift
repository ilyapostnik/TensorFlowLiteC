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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240219/TensorFlowLiteC.xcframework.zip", checksum: "94466533946a89dd4fd5863275f29f77837db1a665c3b0be975fb175fc7cf556"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e1bb039ee1f56e47e4d4bd1c9f5a41cc3054df8c7ec731692b461c37be5f37b7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240219/TensorFlowLiteCMetal.xcframework.zip", checksum: "df2ccc98ff95f7d4320cb83eac0afc873dc74b9ec1406c0b99a8995b3bac7f5b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
