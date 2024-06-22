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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240621/TensorFlowLiteC.xcframework.zip", checksum: "239aa9159421486ea821280a737a4daddb510f9baf754a8c7052318dd7e98a67"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240621/TensorFlowLiteCCoreML.xcframework.zip", checksum: "afeecb7d9805b025f5902addde31af2f24ae09f0fb93370217d095d11dbf8a4c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240621/TensorFlowLiteCMetal.xcframework.zip", checksum: "daa3cc43caf442e9963d8b17cd23228f24126e648179003ced90b124e5538083"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
