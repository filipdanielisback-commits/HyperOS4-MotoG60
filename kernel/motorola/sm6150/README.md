# Kernel source workspace

This directory is a placeholder for kernel source references and build notes relevant to hanoip.

The exact Motorola release matching firmware `S2RIS32.32-20-9-9-2-3` has been identified:

- [MMI-S2RIS32.32-20-9-9-2-3](https://github.com/MotorolaMobilityLLC/kernel-msm/releases/tag/MMI-S2RIS32.32-20-9-9-2-3)
- Release note: “Hanoip push for Android 12”.

The directory name `sm6150` is a historical workspace path and must not be treated as a confirmed SoC identifier. The target is commonly identified as Snapdragon 732G / SM7150 family; verify the platform identifiers from trusted device properties before selecting kernel configuration.

No kernel source or prebuilt image is included. Before adopting source, inspect the archive, exact commit, defconfig, toolchain, build instructions, and GPL license obligations. Preserve all upstream notices.

See [device target](../../../docs/device-target.md) and [research references](../../../docs/references.md).
