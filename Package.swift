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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteC.xcframework.zip", checksum: "49a4882e746663d08a755a65df86cd50ea18094fdb3ac704f2016e11ad33b6a8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6046308fb4ad19e343123b5b84bb55ef843571a28cf7d79721a1d5aad44a938e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteCMetal.xcframework.zip", checksum: "03e9f2f63d5413c798581280206998cfdea887d78140ddd55ad325270c18863a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
