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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231227/TensorFlowLiteC.xcframework.zip", checksum: "2ca64dd5560eeae344dd2060f839d4dee9a29bd953026d1c7781a288e2f1b790"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b063190b2a238a70f8cbf6427ce216936913b9c488e472f4d6ba027fa3644edd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231227/TensorFlowLiteCMetal.xcframework.zip", checksum: "02ce8b72ad6de254c561d8b3fd2af29fe925a23d6e0128d966deefa80d9a54dd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
