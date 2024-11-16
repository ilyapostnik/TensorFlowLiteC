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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteC.xcframework.zip", checksum: "5bd4856ca96c0aed0ace1d97deb9cd5e056e1c3113331dbb67b540b890fa1b57"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eea92630e18cba11337007845e9a8484cdebc22f3100ab444cd478895df4d654"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteCMetal.xcframework.zip", checksum: "306dd0937d23fa8777fe460e8aa6b67c789a79e901b3145b75887f8e98ea4e53"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
