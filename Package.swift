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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240915/TensorFlowLiteC.xcframework.zip", checksum: "20c47228a91bd6b35fa59d853ffe884a8f5543972de3ab4447de8447d9bd656c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240915/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f27e8ffa4244cc1f7e7b198b0923c802082bbc80e39f444fe078aa910a4b69f8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240915/TensorFlowLiteCMetal.xcframework.zip", checksum: "16475f663665d07e42140ef1b7c9313b933a350d0231ee0b2320173ff3c2b2bc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
