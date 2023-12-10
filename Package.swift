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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231209/TensorFlowLiteC.xcframework.zip", checksum: "1f9ecd61785c9419a787e02837cdd00c3285428c62a260cd1f852543d04db3ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b9e6757110a8a75d9c72ccdd0d4d111b1fe965c22af905ea14f8618207a3702"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231209/TensorFlowLiteCMetal.xcframework.zip", checksum: "1b139affacfe5a01da68dc261fd2e12c2e7a5f058dc554a2f8b8779e94965efc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
