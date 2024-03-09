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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240308/TensorFlowLiteC.xcframework.zip", checksum: "6f18299c029374534cc60c4378c4882254123ee116e8a2755d37ab639299ec95"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240308/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26684e225d1fec041a99096d1d118ebfde12a36a365f5a2f8427ff4a1a169f4f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240308/TensorFlowLiteCMetal.xcframework.zip", checksum: "a030047d092a6f314e1cb73e24a94f349779c32a033827c8f3f659e9ab9e3ab8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
