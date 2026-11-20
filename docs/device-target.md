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
| Firmware Android baseline | Android 12 | Firmware package identifier includes `_12_`; verify build properties from a local, sanitized report before using as a build assumption |
| Port Android target | Android 16 | Selected project target; exact HyperOS 4 donor build and its compatibility requirements remain unverified |
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

The project target is an unofficial adaptation of genuine Xiaomi HyperOS 4 components to hanoip, using Android 16 as the selected development target. HyperOS 4 builds may use different Android bases depending on the device; the specific donor build for this project must therefore be identified and verified before its framework, vendor interface, or proprietary components are integrated.

This is an unsupported community port, not an official Motorola or Xiaomi update. The Android 12 Motorola firmware and kernel source are reference material, not proof of compatibility with an Android 16 userspace.

## Initial device-tree scaffold

The repository now has an initial product-registration skeleton under `device/motorola/hanoip/`:

- `AndroidProducts.mk`
- `hyper_hanoip.mk`
- `device.mk`

This is not a complete or buildable device tree. In particular, there is no verified `BoardConfig.mk`, fstab, kernel build configuration, vendor makefile, proprietary blob set, SELinux policy, or installer.

## Open verification items

- [ ] Identify a legitimate HyperOS 4 Android 16 donor build and record its exact device, build ID, Android release, and source provenance.
- [ ] Capture sanitized `getprop` output for model, product, device, fingerprint, Android release, build ID, and security patch.
- [ ] Confirm exact SoC/platform identifiers from trusted device properties.
- [ ] Inspect the exact Motorola kernel release and record its source revision and license.
- [ ] Identify the matching hanoip device tree and its Android branch.
- [ ] Determine the available vendor firmware baseline and its permitted use.
- [ ] Map boot, vendor_boot, dtbo, vbmeta, super/dynamic partitions, and recovery arrangement from trusted documentation or read-only device metadata.
- [ ] Compare Android 16 framework and vendor interface requirements with the available hanoip firmware and drivers.
- [ ] Define a reproducible build environment before attempting compilation.

No partition values, BoardConfig values, fstab entries, proprietary file lists, or installer scripts should be guessed.
