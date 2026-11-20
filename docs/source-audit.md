# Source audit: hanoip reference tree

## Scope

This audit inspected the public `motorola-sm6150-devs/device_motorola_hanoip` repository at branch `lineage-20`. It is a research reference only; none of its build files or proprietary blobs have been copied into this project.

## Files inspected

- `BoardConfig.mk`
- `AndroidProducts.mk`
- `device.mk`
- `lineage_hanoip.mk`
- `proprietary-files.txt`

Reference URLs:

- [BoardConfig.mk](https://github.com/motorola-sm6150-devs/device_motorola_hanoip/blob/lineage-20/BoardConfig.mk)
- [AndroidProducts.mk](https://github.com/motorola-sm6150-devs/device_motorola_hanoip/blob/lineage-20/AndroidProducts.mk)
- [device.mk](https://github.com/motorola-sm6150-devs/device_motorola_hanoip/blob/lineage-20/device.mk)
- [lineage_hanoip.mk](https://github.com/motorola-sm6150-devs/device_motorola_hanoip/blob/lineage-20/lineage_hanoip.mk)
- [proprietary-files.txt](https://github.com/motorola-sm6150-devs/device_motorola_hanoip/blob/lineage-20/proprietary-files.txt)

## Findings

1. The tree identifies the device as `hanoip` and the product as Motorola `moto g(60)`.
2. Its product makefile describes an Android 12 build fingerprint for the retail hanoip baseline.
3. Its board configuration sets `TARGET_BOARD_PLATFORM := sm6150` and points the kernel source path at `kernel/motorola/sm6150`. Preserve this as an upstream build-system convention when studying this tree; do not infer the commercial SoC name from a directory name alone.
4. The tree references multiple vendor makefiles and firmware-specific components. It is not self-contained.
5. The proprietary file list explicitly says its files are from `hanoip (S2RI32.32-20-9-9-2)`, which is not the exact firmware suffix reported by this device owner (`S2RIS32.32-20-9-9-2-3`). This is a provenance mismatch that must be resolved before any vendor extraction or build.
6. The reference tree's Android branch and vendor assumptions do not establish compatibility with Xiaomi HyperOS 4. No HyperOS product makefile or verified HyperOS integration is present in this project.

## Exact matching kernel source

Motorola published [MMI-S2RIS32.32-20-9-9-2-3](https://github.com/MotorolaMobilityLLC/kernel-msm/releases/tag/MMI-S2RIS32.32-20-9-9-2-3). Its release note says “Hanoip push for Android 12”. This is the best exact-version kernel source lead currently identified for the user's reported firmware.

The kernel release does not supply the complete device tree, vendor blobs, proprietary firmware, or a working HyperOS port by itself. Inspect its source archive, license, defconfig, and toolchain before adopting it.

## Decision

**Do not copy the reference `BoardConfig.mk`, partition definitions, fstab, or proprietary-file list into the HyperOS project yet.** First establish the target Android/vendor interface expected by HyperOS 4 and reconcile all source and firmware versions.

## Next audit tasks

- [ ] Inspect the exact Motorola kernel release archive and record its source revision and license.
- [ ] Compare the community tree's kernel configuration with the exact Motorola release.
- [ ] Find the exact-version vendor baseline and establish whether its use is permitted.
- [ ] Determine the HyperOS 4 Android base and required vendor interface from legitimate source material.
- [ ] Only then design original device configuration for this port.
