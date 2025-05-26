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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteC.xcframework.zip", checksum: "3b3671f4bec5cf5eb7612721e27c03b03a60463c1a5077009b2c238c1537e45c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteCCoreML.xcframework.zip", checksum: "177289f018d27af96c98d92dfdfd4591dc466197a10f9d646eee694f177e09ae"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteCMetal.xcframework.zip", checksum: "b15101707d7e11e47551dd1298cdb7bc743f6cb38ea0033493353b8f7eada847"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
