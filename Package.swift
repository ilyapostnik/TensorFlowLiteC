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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240522/TensorFlowLiteC.xcframework.zip", checksum: "7fc73cddad6108ee2a4b9fcd7af98953f5ca88219212d881384d38383ba92a1e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240522/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3477bc264c1e09b2808affa0aa4e231b846f15bb01a45c4b3d1e46c222655ce3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240522/TensorFlowLiteCMetal.xcframework.zip", checksum: "c6aa2be3ce77b911feb8e21e485f818076f4be63928c5da17c21c9a24a7cd596"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
