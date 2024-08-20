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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240819/TensorFlowLiteC.xcframework.zip", checksum: "d08cc7edd836144ef99e6ae21b1d9f87eacbbc5ed368944ab2598bd16cfff134"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240819/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3186535a701517afacb0b0ab372f4c5e1079f48eb3d5ffcdc27b7bcf2b44e84b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240819/TensorFlowLiteCMetal.xcframework.zip", checksum: "53e5b3a5f85b5bdd4eb33a6424a52e85439789b04b84389deb6110c19a15aed3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
