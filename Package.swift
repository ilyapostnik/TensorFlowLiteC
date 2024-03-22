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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240321/TensorFlowLiteC.xcframework.zip", checksum: "020bed9a923ee6ecd37fe10bdb5235796b9342535374ccf3775f8322fd50848c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240321/TensorFlowLiteCCoreML.xcframework.zip", checksum: "170f8278da9539b4668112701dff01365b0ee4549f23a95f72ccdacb4204bd66"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240321/TensorFlowLiteCMetal.xcframework.zip", checksum: "3b91f8b6e3b1af8dc6269e7bb72a8def47e3d24d236de9ae3198adf2e7ad9aef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
