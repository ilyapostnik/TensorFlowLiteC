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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteC.xcframework.zip", checksum: "39c7e04bf8730abaf8f2b08ed3592fadfe9cf8de7d715ad90e7b437df5a8e2f9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f09814d74d219c7c0c144e740cd77b6c6421948c35418e9582eb6cd24fe705f1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteCMetal.xcframework.zip", checksum: "e32c28d022ba4cae67498d30335baeb9e61bdebc22b293b343b96a5ce136016e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
