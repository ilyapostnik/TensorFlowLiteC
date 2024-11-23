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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteC.xcframework.zip", checksum: "8e3673047eff87fbebee416d22f00df6db664aa0f1dc7abd32e1097d4065a579"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e3d723da147aa2d1156f9c8cd0e49290d0897483c0d0a9750f389ad07c5fe09d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteCMetal.xcframework.zip", checksum: "671eb9961b22f38c66218dc4c4e9c64ca085a453b8cdf21491f9c5804a6be06a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
