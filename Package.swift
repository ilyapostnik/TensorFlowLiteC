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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240614/TensorFlowLiteC.xcframework.zip", checksum: "1f458cde49b36e5b85f37f20628ff89d677881714ff761ae7a5d51725e564d68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240614/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8034d4e49e4400a39f3d2696e1cdefebdfe92960938a95decda0536dd05eaf98"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240614/TensorFlowLiteCMetal.xcframework.zip", checksum: "29aeb24288183a4ee30951fdc6dca855f476a905246f4460fa98f9a2d887f4db"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
