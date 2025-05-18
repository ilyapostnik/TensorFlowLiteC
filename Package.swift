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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteC.xcframework.zip", checksum: "7b267fffade10d0cd1ab46f79863d3d80ab18c527bab675e3d1668b7688c1ed0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteCCoreML.xcframework.zip", checksum: "645f56c5cf62ad02cfeaa3969bcba7eb6cfa56c3cbd8850c35c128a5c9cdf633"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteCMetal.xcframework.zip", checksum: "98bb4b572f7ce63617dc3b514da91c0cc0ce4e3d0030c36725d9501d3d250eb5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
