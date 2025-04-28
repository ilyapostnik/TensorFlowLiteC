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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteC.xcframework.zip", checksum: "3af0053a144b1842264b3fecb928a8abc967c99848d892a5fb2ab3842748731a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cdaaa8eb2b718f2fab1a7056cae5a980075b9379e68cdbb4030fe7440f12ed62"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteCMetal.xcframework.zip", checksum: "ed324416bca280d8ee720bf1ef6fda9498decea84a7359e734a0e3c229615050"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
