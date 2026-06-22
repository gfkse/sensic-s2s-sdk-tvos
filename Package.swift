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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.23/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "9cae6450620e716b67a5df3aafacf288db5fb681b4fe592b6647044d3532ae89"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.23/s2s_sdk_tvos_bitmovin.zip",
            checksum: "ff5656d0384bb56e5dbca3203daa63c345b598396f0b13146c40eff5f454724f"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.23/s2s_sdk_tvos_agent_only.zip",
            checksum: "b8efdc334175a22b45fcdd0f621fabc42559f0cd0c756784cefd09060908d81f"
        ),
    ]
)
