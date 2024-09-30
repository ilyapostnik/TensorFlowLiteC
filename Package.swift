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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteC.xcframework.zip", checksum: "c35cc3aeeb4d6e3ef88059ebf6bed994d057f8cd253b185d6d5d5d74f1bf31b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3052cc436f958490ddf03cb2ccf30a6f2ece5151d62dfdff20c7815b4929c4dd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteCMetal.xcframework.zip", checksum: "995df88fe7c89a06e45a66d0670d38ef906805e0b933aeb4b4231b2963fe0117"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
