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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240812/TensorFlowLiteC.xcframework.zip", checksum: "c127de9b9228f944d142f376233bb107c65428cb31c86514cd52b632ba89e1b7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240812/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3eacdbb5be22ea7152ecc1476c92d8affbd40004cb841e594493afdfdca84520"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240812/TensorFlowLiteCMetal.xcframework.zip", checksum: "b53b93ac415ea2015ee24daf1225e3292e35e892c0b746e09f9465680635a437"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
