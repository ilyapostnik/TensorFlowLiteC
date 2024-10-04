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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteC.xcframework.zip", checksum: "c8f0709a0888ec7b66acdf321ff5a010f406699fb31c7c3d00c96ff4ed657c3f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ce79ccb70e6b7f174b28f53f8d70185ef6e66ebac2261acdb3f7714f1b1b936c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteCMetal.xcframework.zip", checksum: "8b6b4ebbda90a38546aa3c73d4893d655617d383f215a9eca20c54788e898136"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
