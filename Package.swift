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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteC.xcframework.zip", checksum: "f60b682a20ddddfa1cddc6426b3715c863db69b3c6b8faa0aa63ae2fcbe9b511"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1cfd054b651799f8fdedb5cacf74234dd2c791397ce65fdda9f5d614ee9d101f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteCMetal.xcframework.zip", checksum: "4c9837d3eafb073e924d5965acee3dfb3560a6ebfa31e8fa200bf8afe145198c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
