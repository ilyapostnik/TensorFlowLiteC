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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240210/TensorFlowLiteC.xcframework.zip", checksum: "b835bae3a7de46324b0cdef7d1424f91e2b5fdd6cd8b0ede778f7a1c6d454cd2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8cfd4dc5cb91398291bdb355784f9c713ff221620fcb26a0ad3a9a175c140e61"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240210/TensorFlowLiteCMetal.xcframework.zip", checksum: "858f557105b46176c6e30c60b4f518d17da2cf0fcb983188faa89a01709ac6cc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
