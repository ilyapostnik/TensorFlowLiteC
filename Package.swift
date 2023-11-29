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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231128/TensorFlowLiteC.xcframework.zip", checksum: "2e76951c3970d07dda256c904609f2d87b25b32e0f7e1c8185a11108f080794e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2385bcad80ed7d9e1c6e1cf0e467009fb8addd3105ce7c17cce5005a831251e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231128/TensorFlowLiteCMetal.xcframework.zip", checksum: "051b174598c439edd2111c7fb9f46d9855340c152d3d1683f4667852d5deb852"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
