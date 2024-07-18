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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240717/TensorFlowLiteC.xcframework.zip", checksum: "fac4651232162a917078b5e65e737f33abd7a40772396052981780df915dd641"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240717/TensorFlowLiteCCoreML.xcframework.zip", checksum: "83324d0be529d56e4295f8b77084cc8227c9c727aa3c7daa9b5512e8390405e8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240717/TensorFlowLiteCMetal.xcframework.zip", checksum: "802f69ac6803c67d336e5832ddcc22407cdaba394c0d5912337a2405bf79e4f4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
