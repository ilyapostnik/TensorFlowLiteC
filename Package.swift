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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteC.xcframework.zip", checksum: "a78baf2b470be736e1341c2d69e2e47321cff3b05402503f282c9f2804901e9a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteCCoreML.xcframework.zip", checksum: "211ba7049020d665382dcc64bcf9d978dfbc0d708b499b7071326eab17882e81"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250430/TensorFlowLiteCMetal.xcframework.zip", checksum: "7fb33424bf71dd2c69f9a61cb74f85733e0a6d8efdd8f54f7f17a01f0244489d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
