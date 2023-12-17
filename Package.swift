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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231216/TensorFlowLiteC.xcframework.zip", checksum: "775cf94b72b1d53e8ceeb6ded7641be4da0311a9788c152991b77851572e466b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5126d4a032efd4523173de24b0a8b2886623c336ee290787d89e48db16558366"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231216/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef5ac6ee322dad7e486c3920f71d4800178a9058358d4978353c991d5b475389"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
