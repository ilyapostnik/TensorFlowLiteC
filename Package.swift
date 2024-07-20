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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240719/TensorFlowLiteC.xcframework.zip", checksum: "8b6de0512bbe6ee0d50266778ad62451562f06b72c5524eda0bb87993f266fb1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240719/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ba7d73af81a0d8b38afe19945d1c3571bdd2acd6a3595aca65841666d4f30902"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240719/TensorFlowLiteCMetal.xcframework.zip", checksum: "605e85ade6beca7c706d834799b1fe34251a5f001452a409e2e978373ca76a7b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
