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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240920/TensorFlowLiteC.xcframework.zip", checksum: "1777da3ae21cb271ea50f5f56047212cac2363d21c91078e09a5a5f80cc335c9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240920/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e08c8a45cab4a4e8171868d94df2da1628be1004ee1c50a662a437ee0304f78b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240920/TensorFlowLiteCMetal.xcframework.zip", checksum: "b3e78bd56f7065074f210c232d1baa5d49812b682b3f0534c5680a9a153c85a0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
