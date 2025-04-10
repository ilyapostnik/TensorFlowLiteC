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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteC.xcframework.zip", checksum: "9a56a10ccf478aecf4715f28533b430a4e7e115de423080ae51c1dfc6ec0f365"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteCCoreML.xcframework.zip", checksum: "de6dc70100bacd7d39a62476859313a6f8deb1566257e900dd43ea91582bc106"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250409/TensorFlowLiteCMetal.xcframework.zip", checksum: "106c3e9bfce85c05f79977f88f12d2e231d29a156472720146f764b2a60ef6ae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
