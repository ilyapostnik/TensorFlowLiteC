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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240825/TensorFlowLiteC.xcframework.zip", checksum: "55acbf675b161407cb581ec4cdb9bc4da9ab2ed4603367e7fb8ff262725a34cc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240825/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ddc863f3d7a5bb7dd8ec4a93268fbefe00575d576dbd84999623ce5c256e650"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240825/TensorFlowLiteCMetal.xcframework.zip", checksum: "4576b4d168eeea009be9a897c21df991469e27818e1095fa701fd69b44c52744"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
