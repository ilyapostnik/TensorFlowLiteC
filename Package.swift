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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteC.xcframework.zip", checksum: "cbbcb39a830f1a1db9dce524dfd84ae58efd8a74937cfba6ef6c385c70221421"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3bca8bebbf5642f300710465e98caa304e2bbfafee3b9182629c4e3ac4c44e1f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteCMetal.xcframework.zip", checksum: "c83ba5a4cf0c8307fc2149312af3a9372e1b9a7bbb1bdb42980609983b1814ab"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
