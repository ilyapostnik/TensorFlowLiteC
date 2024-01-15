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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240114/TensorFlowLiteC.xcframework.zip", checksum: "d65901a25bd6cbf1371d79597f618817de97743bffdc39fa49d8a72a8576250f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ea9c49fdc8b62c389a5650ff23b80349cabfd46759884f19cdc51efd9e9e705"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240114/TensorFlowLiteCMetal.xcframework.zip", checksum: "cd43b6169c6bf65e623ba3af29d15f55fa383813f3aa24b609da5d0057020985"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
