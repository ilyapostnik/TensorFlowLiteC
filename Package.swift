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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240117/TensorFlowLiteC.xcframework.zip", checksum: "ed29b6877992651df6b4dcfff30990455f53de831afe30e4c575184a084dff9a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3032ba7de937fe774c69ddcd3c7546161d20320958a1fe6678b5b10b696690ac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240117/TensorFlowLiteCMetal.xcframework.zip", checksum: "0d9e1f494d15ed0d4c138edfaa3930ae1d416a4189abbaa7e3f3ca91e98d4804"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
