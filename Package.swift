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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240820/TensorFlowLiteC.xcframework.zip", checksum: "8e3ea6dba31a49a3eb4c4ff1a9c240a8ad991227a476f89f4872f91e9fe43326"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240820/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9a43fd07b9dc93d857443450721ee4d8b41aa8b90d54fc1edd3953b792a8af75"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240820/TensorFlowLiteCMetal.xcframework.zip", checksum: "61091f1bb108ba0c714a98e72a82c7824b105ba2156bd87efa2df9957174b113"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
