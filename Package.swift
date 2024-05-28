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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240527/TensorFlowLiteC.xcframework.zip", checksum: "3ffc137844db94ac3a133c6e9a7efb1ae6a94daa7a88b20dc95b08f353703dad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240527/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aca48cabb7db9ae72c55d82e228044a23914dd89e2e52dc590bdcc93bf6e778b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240527/TensorFlowLiteCMetal.xcframework.zip", checksum: "bbac21770c937acc577c49d04a74e5c99720db5693049674becbeb930775c24c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
