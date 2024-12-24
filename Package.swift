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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteC.xcframework.zip", checksum: "e8be27bb3638c66e5018d989291b6b5bd39e3e3cfeeb3c661e5e18fb9c73bb0f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "56e403048a330c3d5d789181931bc5e397fa296073c026febf33c33ce30b569f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241223/TensorFlowLiteCMetal.xcframework.zip", checksum: "3d0c2869d764bdfe0b4d584df68a3309dc60af405dbdffb41731c70ca30ae346"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
