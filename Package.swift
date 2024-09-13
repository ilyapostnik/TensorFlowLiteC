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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240912/TensorFlowLiteC.xcframework.zip", checksum: "a1d73d39de74e883f941a19c3250fc4151952748090fbf8efb21e4c1c858b730"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240912/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e5da914284967764941fc840e5dd6f41eac865354262243f5b0d2b394d52b66b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240912/TensorFlowLiteCMetal.xcframework.zip", checksum: "b07657a0c724664c0fc89d5195eeaee0edc35bdb6912b3c903dea772e42ddb2c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
