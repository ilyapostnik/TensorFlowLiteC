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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteC.xcframework.zip", checksum: "97b0df333450ef968d1ab53529e69266d4c6541be231b69d2e8a7cdd7525ee1b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3949c9dc43dc05508536968b761d7741183c94753d04fb34bd0077fd254f564e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteCMetal.xcframework.zip", checksum: "4f00bb810df06033e9539f4afdf2a369781101e8460b6eee22ed5a1c46cc5d7f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
