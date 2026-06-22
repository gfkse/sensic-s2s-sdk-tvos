// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_tvos",
    platforms: [
        .tvOS(.v15),
    ],
    products: [
        // Define separate products for each target to keep them isolated
        .library(name: "AVPlayer-GoogleAds-tvOS", targets: ["s2s_sdk_tvos_avplayer_googleAds"]),
        .library(name: "Bitmovin-tvOS", targets: ["s2s_sdk_tvos_bitmovin"]),
        .library(name: "AgentOnly-tvOS", targets: ["s2s_sdk_tvos_agent_only"])
    ],
    targets: [
        .binaryTarget(
            name: "s2s_sdk_tvos_avplayer_googleAds",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.25/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "57e09fa2ac75d0dd54b73b7afc6f73751b052d62b8b7911bad1673a0138440a0"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.25/s2s_sdk_tvos_bitmovin.zip",
            checksum: "882c2b0f67136e64e24ea1f1d912fd9b94c0830fd4bb9392a039525d4e7515a9"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.25/s2s_sdk_tvos_agent_only.zip",
            checksum: "6381e537e0a28247ffa539b42422b13d7cf9bf56953b8827b6a63694f6e18118"
        ),
    ]
)
