// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_tvos",
    platforms: [
        .tvOS(.v15),
    ],
    products: [
        // Define separate products for each target to keep them isolated
        .library(name: "AVPlayer-GoogleAds", targets: ["s2s_sdk_tvos_avplayer_googleAds"]),
        .library(name: "Bitmovin", targets: ["s2s_sdk_tvos_bitmovin"]),
        .library(name: "AgentOnly", targets: ["s2s_sdk_tvos_agent_only"])
    ],
    targets: [
        .binaryTarget(
            name: "s2s_sdk_tvos_avplayer_googleAds",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.3/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "d8e9d82d5c7f3d7511392b58761832617699c4a768d831bf4bb07cf0479909bb"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.3/s2s_sdk_tvos_bitmovin.zip",
            checksum: "0b80e303ee18d410b382a76b0be6c66dd03e9fb2125319dbafd5b06f3eaba3e2"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.3/s2s_sdk_tvos_agent_only.zip",
            checksum: "27eaf7451fcab96470aa608f8f5d5aa8a1ca4cbdcd5e9d940c83f423d5bf24e1"
        ),
    ]
)