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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240331/TensorFlowLiteC.xcframework.zip", checksum: "cac497c284f552e40ee8e37602b8c321eeeec6caec9917113be1167c61b44477"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240331/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e80aad4fe1f1b17eb69a7e648cb3e107989f76818dde5dad9683f4d82bef405"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240331/TensorFlowLiteCMetal.xcframework.zip", checksum: "3c72bb3275582b3d399e3163a6552752c1a329cedc291338035c37a2775a46d8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
