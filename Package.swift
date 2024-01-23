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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240122/TensorFlowLiteC.xcframework.zip", checksum: "8532ca6577834311d6e6b129b4ad37e6dd3b69560f0689c806259f568ad67806"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dcf224d2b98f87b554d0442c21ea1871165cba88349d12814667a4f25fca50ab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240122/TensorFlowLiteCMetal.xcframework.zip", checksum: "a5914ac54fd6d77fd78f085e328abb685ea09e870b506912e4762a6fe964153a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
