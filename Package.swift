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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteC.xcframework.zip", checksum: "68b7ddac6fb53a0632ff65060d83d658ce2d4d488c8a578834d25964f7048a2a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteCCoreML.xcframework.zip", checksum: "36f9f5a622d5f5721bc5cec785049e4c03edcab18f31f4cd7700c3e10a7588e7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteCMetal.xcframework.zip", checksum: "32b9d90b8af2126a0e4ee67b91c9cac265aae2a223cd9e7c109d7f0b35312cdd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
