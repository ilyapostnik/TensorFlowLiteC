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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240907/TensorFlowLiteC.xcframework.zip", checksum: "9ec2e35692d6b3645a3f38ce319aa067159cb44c05c33bc9a6cc542dfb5dc538"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240907/TensorFlowLiteCCoreML.xcframework.zip", checksum: "587f39250b53dc591d04271321abca9d394fe906ed267ab925e265e46bc10c77"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240907/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7314708333f20c9b3404ec820a4b43100cab7d8d870400df977445a2bb0441e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
