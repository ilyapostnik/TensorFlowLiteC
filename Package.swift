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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteC.xcframework.zip", checksum: "d60f61458779ca092c5557345f87ac46b6cc3c3fc9bc9a427f9a6e4d0ebdd125"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ef2cb28fe846889ecc11152c0d423374d67104fa5e0199f458396cfdc5f462dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteCMetal.xcframework.zip", checksum: "ec1abdbee8f6073a344fb4013316ce856576dd3e6afe8a5e05f6f80c014651fc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
