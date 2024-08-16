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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240815/TensorFlowLiteC.xcframework.zip", checksum: "c251f10768884847c0fe1c56fb19d103f4570a771bec83b46f73204657167942"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240815/TensorFlowLiteCCoreML.xcframework.zip", checksum: "120671ddb5178886b6cfef00bba3b1cfbe7a5ea9b2d66a43408c8a43e9bf8f1d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240815/TensorFlowLiteCMetal.xcframework.zip", checksum: "43a3291e41f279f8f5036ca179058f12466f5454d14a7dbe1589ee08cb13d475"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
