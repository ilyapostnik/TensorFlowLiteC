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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240506/TensorFlowLiteC.xcframework.zip", checksum: "7ac291490e1ff338f790c9e61ee07835fee850ac3986cd2eacec8a5fa956834b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240506/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cadd4837f4d9821593fb9248375d41b0bc29ea1d2bceb9f90848ac6bd50262c0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240506/TensorFlowLiteCMetal.xcframework.zip", checksum: "db814c870cff5dd02c457a6f53e5efd886dcff9b538044f40dada4e1e9054ca9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
