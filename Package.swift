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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.5/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "fd0afe96a9e1ca0e84a25355efd4327e554f54ceeac981d5bef33ae5ec4eb51f"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.5/s2s_sdk_tvos_bitmovin.zip",
            checksum: "f62fc66e23c82f42d6abf9d982dccfbece3e1d7755e529a597219b765d5d8a3a"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.5/s2s_sdk_tvos_agent_only.zip",
            checksum: "b53c4ae8ee29c7011e35003313cb7557a651fb39eda7ada56b38dd86db9f8734"
        ),
    ]
)
