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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240329/TensorFlowLiteC.xcframework.zip", checksum: "6edbfe417a410e2bb8d7295e3f4ecf17f448943650e2d0c19c54bbf59d0ffe68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "163607633ac65863491ba9e1f526aa5d225bf88838d30381cf3b323475455934"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240329/TensorFlowLiteCMetal.xcframework.zip", checksum: "91f6a3016da7b783cf2e0f3eeb954353c1b00992564483dc3f28d99e94738ccd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
