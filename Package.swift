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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240430/TensorFlowLiteC.xcframework.zip", checksum: "7f08008919607d1c8fe3f67caadf57e4f22af22c837b03d9a4d15fc20f751ca5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240430/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2935b9654f3732ed694a9e7191e008d009ef69b5826dfb8d112a8c15724f7fde"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240430/TensorFlowLiteCMetal.xcframework.zip", checksum: "3a3e4941b9acaaf884bc406146eab19db8da7a91a876777ab678cbb35c584334"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
