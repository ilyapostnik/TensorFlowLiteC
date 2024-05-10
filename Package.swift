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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240509/TensorFlowLiteC.xcframework.zip", checksum: "6b77bc5035ea9aad49c1eeb1fd317407b3e3c2ba8e33f7fd69e6dbeae6c0a87f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240509/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2a3816cbb618e13b08abc55a2bedd14b328dce9b009fdfdb9cd563e0fe9af56c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240509/TensorFlowLiteCMetal.xcframework.zip", checksum: "66bda7de19e1d0a4b8dab65b41329e466ded6aa51b92e099887601c716fe110a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
