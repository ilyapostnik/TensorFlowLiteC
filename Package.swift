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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteC.xcframework.zip", checksum: "dd61f52ad86d513c347fab5deb5b4d68f871778715c4a3cc8bf4775ae88b71e7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "883a6e54bea8ebfc510be6dbad2b488f103937d3dc45e0a0ee5b2fc0c386dc30"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteCMetal.xcframework.zip", checksum: "bc249db4060bbf04f737aa8ff31c68565ba0a9a66030cb636e9c20f800712e4a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
