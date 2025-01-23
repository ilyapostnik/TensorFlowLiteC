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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteC.xcframework.zip", checksum: "9884d7b8cc84f4a1a927f3ce7ea04dded03227627416f5b976aa2995df7ba4ad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b96b93a059cb986b47932fd1481be032992e3f70e694e75aba319b75a75667cd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteCMetal.xcframework.zip", checksum: "df92602134ab7d06228186b011e1834672cc5e43e726af0e54aaa505e7d58ccf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
