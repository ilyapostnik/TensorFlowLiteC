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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240405/TensorFlowLiteC.xcframework.zip", checksum: "bdd20728931b8ca108577303e03629737cc706f13e5f89cc80d3d9f23acd5a5a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240405/TensorFlowLiteCCoreML.xcframework.zip", checksum: "18f833882c8e2c8c8ea926f209c7372fb9ed695f2b32676d9585bfd1307c66b2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240405/TensorFlowLiteCMetal.xcframework.zip", checksum: "94ed53173de461e9e2cd45f8bb2c166a9ebd5e575f126430a9b6e13aae42874a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
