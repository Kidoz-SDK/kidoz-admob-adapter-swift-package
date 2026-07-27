// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KidozAdmobAdapter",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "KidozAdmobAdapter",
            targets: ["KidozAdmobAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Kidoz-SDK/kidoz-sdk-swift-package.git", from: "10.1.5")
    ],
    targets: [
        .target(
            name: "KidozAdmobAdapterTarget",
            dependencies: [
                .product(name: "KidozSDK", package: "kidoz-sdk-swift-package"),
                "KidozAdmobAdapter"
            ]
        ),
        .binaryTarget(
            name: "KidozAdmobAdapter",
            url: "https://github.com/Kidoz-SDK/kidoz-ios-frameworks/raw/refs/heads/main/mediation/admob/2.0.1/KidozAdmobAdapter.zip",
            checksum: "d47904efd3bd3d0610542aee22618cac7dd39008c53a60b140ac0666e15a6016"
        )
    ]
)
