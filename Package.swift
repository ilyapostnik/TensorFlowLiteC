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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240129/TensorFlowLiteC.xcframework.zip", checksum: "858f568279a006f8386a6243d911e69fb274be785611a5c61d884e4531ae9721"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ea784216636b20fa8cff520d011e9e0cd93eed23803e18acb071865627849873"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240129/TensorFlowLiteCMetal.xcframework.zip", checksum: "1bd6782402cf1445e08091162eafbf7b24a1746095865c759722bb1138bee478"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
