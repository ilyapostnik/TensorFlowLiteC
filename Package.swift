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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteC.xcframework.zip", checksum: "e47cc9048713d1ac52d8fb01577e0c796a9b550d42a8c2053b213b4a98dba026"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "66a4e4eb263024799ffcb68b5409f24c5feb1e0af375f63e71e0aaf500e22cb7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteCMetal.xcframework.zip", checksum: "ebf0ac2057179e47d6bc9c4de63099feb210b77ea5baefec95a38afd5e5ff543"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
