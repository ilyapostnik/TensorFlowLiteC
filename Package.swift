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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteC.xcframework.zip", checksum: "6005b1d22521cf46e319c2548d1aac29e08f2cdc3b739d46a00ea2fe26b2dad2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteCCoreML.xcframework.zip", checksum: "757bad34c5ef8e9d76472b74d2555a2e6a78e650e5cbaba64b434f05b137cf19"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteCMetal.xcframework.zip", checksum: "8ae2493903ff04892347c949e6e8b1b710e5cbfd1de8f38d0efdbf1261567398"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
