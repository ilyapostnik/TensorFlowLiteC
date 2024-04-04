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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240403/TensorFlowLiteC.xcframework.zip", checksum: "a481dbd9610cf57fa3afa330dc57c86c32e5d39441405fcf74c1066444817cfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240403/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1a3cbd81a642dc3307aa3ac8e90f41313b7e1ff0a8e3f819c36ec5ce51bf4861"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240403/TensorFlowLiteCMetal.xcframework.zip", checksum: "fb9cd083a0b9cb1671752439e3872edf2005259e16289c95acfd4dcadd7128ad"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
