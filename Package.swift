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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.21.0/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "3326b7f2944cef29384d6e264a40a0cd40965b5c9827b74ded07ee04d1755b3f"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.21.0/s2s_sdk_tvos_bitmovin.zip",
            checksum: "5bceac39615ddcf8a91ea00f8f1556f7196072c270040568e3f6ab64581f6634"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.21.0/s2s_sdk_tvos_agent_only.zip",
            checksum: "8e4205d0c2148f5477307e6d8bda7ec61d51d991c4accbc63e91de127f671fb9"
        ),
    ]
)
