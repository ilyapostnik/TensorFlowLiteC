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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240721/TensorFlowLiteC.xcframework.zip", checksum: "2b29504b280642aef8b45f166c38ddbb92c982fa6d75ad4a9e29d75e31c9d23a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240721/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0d47e2e3ce2df4d916a1c6c589db828acf4e5b2b554a0e847a82251bc004ba9c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240721/TensorFlowLiteCMetal.xcframework.zip", checksum: "58a694f501b48c8f55f3d235e626e25ca0c7642ec25ea3b68ced414b20076050"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
