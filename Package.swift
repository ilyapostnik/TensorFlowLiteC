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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240722/TensorFlowLiteC.xcframework.zip", checksum: "e18cecfad35b249857830efb1bc947ca1ce7f6ac7861b0133febdd4465b78bfd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240722/TensorFlowLiteCCoreML.xcframework.zip", checksum: "25b4c3e97de71fc35d853623e9d7715670a828e5b945100d962e295a9bcf708b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240722/TensorFlowLiteCMetal.xcframework.zip", checksum: "93253308777b91ce07616e0402b06f3ceb8244ceb50ebed3bdf82c7aa77cf676"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
