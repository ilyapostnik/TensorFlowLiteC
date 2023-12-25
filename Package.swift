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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231224/TensorFlowLiteC.xcframework.zip", checksum: "cf2a1a557853589e4352f86ff5b2296e905311f1278c9d61117a455f81554e80"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "78ce3f85a2d0afc7e7fa89f5ebc350d47f87fd5c9e15fde7ce371e1788dd584e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231224/TensorFlowLiteCMetal.xcframework.zip", checksum: "5efcf91246c430fccf3456c9a2cb444a14c8d4e3daca2b73fda19449a36905f9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
