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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240427/TensorFlowLiteC.xcframework.zip", checksum: "0d88cf6ed9a912eff2d629d5e4429163457a887bc7ce343d167b425726de8e4c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240427/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9c64763449281af79d33886b95dbdac9dfeda501d3d872a2b2a4482e1df2b8a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240427/TensorFlowLiteCMetal.xcframework.zip", checksum: "44db5241ae02b8adbdbe8b4404d03dc8cc46d04ceb1687038d285cea5fcaf71c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
