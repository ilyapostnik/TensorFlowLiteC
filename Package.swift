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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240709/TensorFlowLiteC.xcframework.zip", checksum: "310a4853864cfc0a35c168cb4350a5e527b3ce854f9c484c7a8bbcb8111801b2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240709/TensorFlowLiteCCoreML.xcframework.zip", checksum: "61bf6a18b6e37461d5589473de02d83e3c333040dd78ee6ecd35a39525834104"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240709/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb064083b05d0cc94254ef171417f155f650fb8d4e846c14fffcfa0165ac26c3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
