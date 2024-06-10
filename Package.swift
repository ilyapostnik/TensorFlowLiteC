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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240609/TensorFlowLiteC.xcframework.zip", checksum: "70be1f0ff93a7f3e85dbec55cac42800615ea53e749797af7c0f2c353cfd2039"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240609/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2a0486ebf0ddb2dae39f583a97a201c715bcf02f253ff2a3c50997282c7d00de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240609/TensorFlowLiteCMetal.xcframework.zip", checksum: "740722da9f5a9322eecd2c14ebf0d4082a7c6baf56db6f2835d68032b368bebc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
