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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240505/TensorFlowLiteC.xcframework.zip", checksum: "dda221d747c6e297c31ac141e1cf4fcc525619769aab49608154f80d102a8c24"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240505/TensorFlowLiteCCoreML.xcframework.zip", checksum: "924dc5d33b15da74329d4084c051e8b42895bf7787844346e901f8dac7c533a0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240505/TensorFlowLiteCMetal.xcframework.zip", checksum: "fb0c06c31870848268b41b9a349681320cfc2a8f69bb797c549c04be62a62c4c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
