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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240224/TensorFlowLiteC.xcframework.zip", checksum: "8fae0cbaef455026c8902cde4e84a739b82b5fb9aa75b30ff5e8d466a1adcc3a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f735a2a8b6eb1b019038d6dc3fdf9db9eb30af4e6a0621655887752b0e875d0f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240224/TensorFlowLiteCMetal.xcframework.zip", checksum: "822075d80bedbff703f21dff2f36295f8a8e49ff27a53cf0be001209d4121617"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
