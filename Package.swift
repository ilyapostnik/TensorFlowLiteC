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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240517/TensorFlowLiteC.xcframework.zip", checksum: "6babc47648120ab92903260b35b5fa147cf9caba84601b8be30db4c8816a032b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240517/TensorFlowLiteCCoreML.xcframework.zip", checksum: "73ab629d8d05b6f708bdf66d69a1fb215dcf50ae87110e8592864d04fd2d062c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240517/TensorFlowLiteCMetal.xcframework.zip", checksum: "26dcc8cec84aec7e6938ef909644c3ac7135e111b2ccdb82fd8538497fbbabc6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
