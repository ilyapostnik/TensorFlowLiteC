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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240306/TensorFlowLiteC.xcframework.zip", checksum: "fb8c6f1eece643a91fb3ea2e77f0915d343fd2540b7ce73ed8ddf2a19329d020"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240306/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be7ae2be4bba7701fe8cbab048ffb9d0b0f2173dea4f9d460fef0f9df7cd2b98"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240306/TensorFlowLiteCMetal.xcframework.zip", checksum: "4a32522dcb49b071278df9bd2a9f8f5422b91bfd4d2ea254705315dfce43e084"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
