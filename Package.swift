// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "netfox",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "netfox",
            targets: ["netfox"]
        ),
    ],
    targets: [
        .target(
            name: "netfox",
            path: "netfox/",
            exclude: ["OSX"],
            cSettings: [
                .unsafeFlags(["-arch", "arm64"])
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
