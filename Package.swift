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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240316/TensorFlowLiteC.xcframework.zip", checksum: "03cbbfc7309042605fe4a2b41900dafc6c2d151750e2e3646df3192ccf4aeeaa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240316/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fe2360c6fe8e748eaf05308ae205c84891dbf564b277db99780c3909254d9005"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240316/TensorFlowLiteCMetal.xcframework.zip", checksum: "9fb97bb6275e2719104c1e277fdb8e37490d9267b6c8d6b31a82b4b62091ad3f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
