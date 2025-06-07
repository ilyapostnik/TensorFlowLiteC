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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteC.xcframework.zip", checksum: "b3611f500fa40baed039411dd24265134f6fbe671b735bc1ec114acd1f2fcbc8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f8d7ce0fa99df2d1cf3bd33240c2b84311c3e46aff4a3bace30705fb167b1e53"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteCMetal.xcframework.zip", checksum: "43b787af59ff8169f460c8ddbd45373eae7ae18e13723da16c1b7695ba6a3c50"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
