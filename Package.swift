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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteC.xcframework.zip", checksum: "9660a623a27aeee7ed40763b517ec82770c7a32775107721f50f5c676701d3d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f9fc929ff034b362f9389b06b272fdb537920a10bb1efb0451cece97a1d168bb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteCMetal.xcframework.zip", checksum: "a9c19609d537fa4ad11ed680bd4bd1b62cf1b87cade03d5880d11f69c1faf8e4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
