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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteC.xcframework.zip", checksum: "b4f1bdb6c5988760f6294dbfeb2265efbf8c2f0bd115f84ab010901bd00ecfcb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ef732a1dc2055881878811fe82f670ef4e81be33af5692a612f8533ee1c3269d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c1cc180141e2255ec775e09f985be34086f6e9feb7b608690b4e7127478eaac"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
