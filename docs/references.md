# Research references

These public repositories and release pages are starting points for research, not drop-in HyperOS port components. Check each repository's current branch, commit history, license, and compatibility before using anything.

## Exact Motorola kernel source for this firmware

- [Motorola kernel source release: MMI-S2RIS32.32-20-9-9-2-3](https://github.com/MotorolaMobilityLLC/kernel-msm/releases/tag/MMI-S2RIS32.32-20-9-9-2-3) — exact suffix matching the user's XT2135-2 firmware; release note identifies it as a hanoip Android 12 push.
- [Motorola publication issue #574](https://github.com/MotorolaMobilityLLC/kernel-msm/issues/574) — Motorola marked the source as published and linked the exact release.

## Motorola hanoip device trees

- [motorola-sm6150-devs/device_motorola_hanoip](https://github.com/motorola-sm6150-devs/device_motorola_hanoip) — device tree for Moto G40 Fusion / Moto G60 (hanoip).
- [bhawesh2002/android_device_motorola_hanoip](https://github.com/bhawesh2002/android_device_motorola_hanoip) — another public hanoip device-tree reference.

## Kernel and community references

- [motorola-sm6150-devs organization](https://github.com/motorola-sm6150-devs) — public development repositories; inspect individual source licenses and device/Android branch compatibility.
- [moto-hanoip organization](https://github.com/moto-hanoip) — older hanoip sources; the organization is archived, so treat it as historical reference.

## Xiaomi HyperOS 4

- [Xiaomi Global HyperOS 4 page](https://www.mi.com/global/hyperos/) — official product information and rollout schedule. The Moto G60 is not listed as a supported Xiaomi device; this project is an unofficial port effort.

## Usage rules

- Do not assume a tree for another Android release is compatible with the intended HyperOS base.
- Do not copy code without checking its license and preserving required notices.
- Do not redistribute proprietary vendor files or firmware without permission.
- Record the exact upstream URL, branch, commit, and license for any source adopted by this project.

## Hanoip source audit

- [Source audit: hanoip reference tree](source-audit.md) — inspected upstream build files and recorded firmware provenance gaps.
