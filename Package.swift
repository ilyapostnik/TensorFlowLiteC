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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteC.xcframework.zip", checksum: "acf676271583768d02849a55526a9cc835d1d97bfefd25a58d3a1d51a545477e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9298fb1edd23bccb155662b26c0478b6388bae9d3e7489036b9427ee54149cb1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteCMetal.xcframework.zip", checksum: "848514d4835fef8ebbe1069205a104fa80a367b7c1fe45959ce115ca2bec527d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
