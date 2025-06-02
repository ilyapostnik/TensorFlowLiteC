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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteC.xcframework.zip", checksum: "c68136ab0deae26a99f8e04047ff4c95867a83fb900173520e4966f417b63b5c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e438f5a5d77177795a213fc2a04cdac1e8629af28311f8771825ecf0df92f19d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteCMetal.xcframework.zip", checksum: "6fba4a58ecf5eaf92d4c0268c1dc45a06f2241f96f40b5963a5860bb6de8ce82"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
