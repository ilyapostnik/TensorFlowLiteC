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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteC.xcframework.zip", checksum: "85b612176ef4ce66c266deaf970caf5de69b06b64b7df6f6f31cd25deba04891"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4902497764a18bfc95f1a12dc22b218d4da8b486961f127b15c67bc6f4add072"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteCMetal.xcframework.zip", checksum: "e4c69d960c910209cc76a7d198f1adb6f86eee3d19d6501eb3b13c64f22dd225"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
