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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240919/TensorFlowLiteC.xcframework.zip", checksum: "200c07bcaf2612b3020e953b5e40f050b7dab80628ad0e921fc7b9d0bc0e1342"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240919/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8ae3aafe671fec88bd3b6345caa74900112a26b03f680cf4b7971b8393931b08"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240919/TensorFlowLiteCMetal.xcframework.zip", checksum: "84d4511b3a9f9ce5e1b70064e145a9e96be343827c405d69563d8e2f4878d369"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
