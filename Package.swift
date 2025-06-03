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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteC.xcframework.zip", checksum: "fb09067fab07e353dbae96b85bcde3721d0cfa61b5c40cb5b878ad797fb1bf27"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteCCoreML.xcframework.zip", checksum: "edb8ea6e9cb390ef2fb361ce26d16a1aef0456752a719b8c5e895f36f00589a2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteCMetal.xcframework.zip", checksum: "e476c2bf50023b2e088efb0f30c3a8019403f9891168f269b2ed1d7feb4850c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
