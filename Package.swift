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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteC.xcframework.zip", checksum: "e74dfff49658b4168d1fa51907310aadc8b3c770967aefcb990ac27861eba6e8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eae14f6bd763e00f6f1d0bb7c3be2f76764911bb82535da00cf6ae26d7d0ef72"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "9357405e2589e496cb38881306912efb41e80ba7700ee456d40eb0f36677c93b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
