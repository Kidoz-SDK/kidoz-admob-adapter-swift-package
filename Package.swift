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
            .package(url: "https://github.com/Kidoz-SDK/kidoz-sdk-swift-package.git", from: "10.1.5"),
            .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", "12.0.0"..<"14.0.0")
        ],
    targets: [
        
        .target(
            name: "KidozAdmobAdapterTarget",
            dependencies: [
                .product(name: "KidozSDK", package: "kidoz-sdk-swift-package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                "KidozAdmobAdapter"
            ]
        ),
        .binaryTarget(
            name: "KidozAdmobAdapter",
            url: "https://github.com/Kidoz-SDK/kidoz-ios-frameworks/raw/refs/heads/main/mediation/admob/staging/2.0.2/KidozAdmobAdapter.zip",
            checksum: "64ac84079e925b7d3080ddf29de391c719581b5bdeea2cbf43ec736a5c1424e6"
        )
    ]
)
