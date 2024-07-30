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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240729/TensorFlowLiteC.xcframework.zip", checksum: "ce4e95715dc77e147a7a212aa9faa660232815896bd7ac1f0776195354302b22"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240729/TensorFlowLiteCCoreML.xcframework.zip", checksum: "55ca907b207251110f6f106ca2857620a19ed74d8b81e7896187b544ac49888d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240729/TensorFlowLiteCMetal.xcframework.zip", checksum: "4a860d21bbae453df6dd2a9f4d0478ad5db188dacc84bdc09e592aed8f74154c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
