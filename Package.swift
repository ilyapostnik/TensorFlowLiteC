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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240401/TensorFlowLiteC.xcframework.zip", checksum: "b1dbc78d9d18f9a96ac72dadb8558d468302f16c797d70f291434f822b4a5c5c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eff7490f6ffbbf8d58425243f68558d40d5f8710681e252f577182fac8da11a8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240401/TensorFlowLiteCMetal.xcframework.zip", checksum: "bd3d7ea0b9530518840c621ef5f31bed8218ecb39474e6a898134766db2915d4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
