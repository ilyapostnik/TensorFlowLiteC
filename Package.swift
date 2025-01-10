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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteC.xcframework.zip", checksum: "81193ab3524f31af24ef3ddbfaee7f01b15d9d68d8aeb70f2b393e58ef196751"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e108fb4a65318931e75a39c4d40efcab8e49147252c0bbca40e5178f2f204d5a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteCMetal.xcframework.zip", checksum: "1bdc0f6bbf6caa79d3e40b8160cddf965db91a7cf1ef41ae4d9fe5574f06b006"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
