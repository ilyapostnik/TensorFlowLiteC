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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteC.xcframework.zip", checksum: "2e1828f81511702dd770c41ccecd914fb5b3125164a9a3ce0cfa3b04c20398ec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dd7532f9c4e3f74d49f39bda0fe0a4e035be6e45dc272283e5758d5f8a6b03ca"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250223/TensorFlowLiteCMetal.xcframework.zip", checksum: "f0b5300408b4d0f5e167bc42f50f3bbcfbffc9d2a402973c6eeb46031338d755"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
