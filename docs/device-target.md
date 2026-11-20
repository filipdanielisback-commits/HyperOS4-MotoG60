# Device target: Motorola Moto G60 XT2135-2

## Confirmed target supplied by the device owner

| Field | Value | Evidence / confidence |
|---|---|---|
| Manufacturer / model | Motorola Moto G60 | User-confirmed |
| Model number | XT2135-2 | User-confirmed |
| Codename | `hanoip` | Supported by Motorola's exact firmware package name and community device trees |
| RAM | 6 GB | User-confirmed |
| Installed firmware | `S2RIS32.32-20-9-9-2-3` | User-confirmed |
| Firmware package family | `XT2135-2_HANOIP_RETEU_12_...` | Exact release named in Motorola's kernel-source publication issue |
| Android baseline of this firmware | Android 12 | Firmware package identifier includes `_12_`; verify build properties from a local, sanitized report before using as a build assumption |
| SoC | Qualcomm Snapdragon 732G / SM7150 family | Commonly reported for hanoip; confirm against device properties and trusted hardware documentation |
| GPU | Qualcomm Adreno 618 | Commonly reported for this platform; verify on-device |

Do not publish IMEI, serial number, phone number, account identifiers, or unredacted diagnostic output in this repository.

## Exact kernel-source match

Motorola published a kernel source release for the exact firmware suffix:

- [MotorolaMobilityLLC/kernel-msm — MMI-S2RIS32.32-20-9-9-2-3](https://github.com/MotorolaMobilityLLC/kernel-msm/releases/tag/MMI-S2RIS32.32-20-9-9-2-3)
- [Motorola's publication issue #574](https://github.com/MotorolaMobilityLLC/kernel-msm/issues/574)

The release is titled `MMI-S2RIS32.32-20-9-9-2-3` and its release note says “Hanoip push for Android 12”. This is a valuable exact-version source baseline. It is not, by itself, a complete device tree, vendor image, or ready-to-build HyperOS kernel configuration.

Before adopting kernel code, inspect the release archive, its license and notices, the defconfig, toolchain expectations, and whether the source matches the exact device variant.

## Port target

The project target is an unofficial adaptation of genuine Xiaomi HyperOS 4 components to hanoip. Xiaomi's official HyperOS 4 page documents the product and its rollout, but does not list the Moto G60 as a supported device. This project must therefore be treated as an unsupported community port, not an official update.

Do not assume the HyperOS 4 Android base, required vendor interface level, proprietary dependency set, or compatibility with this Android 12 firmware. Those are open research questions.

## Open verification items

- [ ] Capture sanitized `getprop` output for model, product, device, fingerprint, Android release, build ID, and security patch.
- [ ] Confirm exact SoC/platform identifiers from trusted device properties.
- [ ] Inspect the exact Motorola kernel release and record its commit/tag and license.
- [ ] Identify the matching hanoip device tree and its Android branch.
- [ ] Determine the available vendor firmware baseline and its permitted use.
- [ ] Map boot, vendor_boot, dtbo, vbmeta, super/dynamic partitions, and recovery arrangement from trusted documentation or read-only device metadata.
- [ ] Establish whether the intended HyperOS 4 source/base can be lawfully obtained and technically adapted.
- [ ] Define a reproducible build environment before writing build configuration.

No partition values, BoardConfig values, fstab entries, proprietary file lists, or installer scripts should be guessed.
