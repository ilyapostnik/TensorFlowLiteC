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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteC.xcframework.zip", checksum: "5ff0741e250a3fec8db8525692f7980daf626c5487551b61d5118a0e555383c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d60c16ab6918c1d6e11a5ade4816cb6ca9a54795c7901a44ce23714f19af2e3c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteCMetal.xcframework.zip", checksum: "49e77d2cfa2b71fe67deefee2f27e87311dd61e223ad307a931410640d91b13f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
