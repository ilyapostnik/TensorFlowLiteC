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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240624/TensorFlowLiteC.xcframework.zip", checksum: "5666018ddaee20df5ab1d00a49ac61d22d4734a6390705e1490690ad1779df04"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240624/TensorFlowLiteCCoreML.xcframework.zip", checksum: "95adb0b94371787663f4789a1bfde277e5739ecbb0a2b1fd1231da80d1363bf0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240624/TensorFlowLiteCMetal.xcframework.zip", checksum: "03e4a84ccfbf228f81b2059126b074ccc6bd1419dadbb2126068fb847364e07f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
