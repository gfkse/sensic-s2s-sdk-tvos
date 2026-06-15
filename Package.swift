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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.20/s2s_sdk_tvos_avplayer_googleAds.zip",
            checksum: "5f424a879405fc130023821651b23a2e6bacd3a4e4acda30e856739e79c17347"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.20/s2s_sdk_tvos_bitmovin.zip",
            checksum: "27d732747d044aed2ecb125c6509a6b3b5117ea886cd2eaa3d46a767a8ad2dce"
        ),
        .binaryTarget(
            name: "s2s_sdk_tvos_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.20/s2s_sdk_tvos_agent_only.zip",
            checksum: "829d43235a9be9307f41bce6c2cff3f58f7fc9133e5e2df7adf5092a86333e2c"
        ),
    ]
)
