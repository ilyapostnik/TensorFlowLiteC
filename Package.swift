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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteC.xcframework.zip", checksum: "bb98980e510857d7658a84f70621699caabbcff0364cc9255b9e61e3ef807376"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteCCoreML.xcframework.zip", checksum: "479c223db6d4761bcfab72c1f9e4732e01723c3d1cfdaf54b4018717fd78e68a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteCMetal.xcframework.zip", checksum: "922d0f6d2e9215cc22504778212bc4210113294535f639a95ac7dbde86b45e74"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
