# Bring-up research plan

This is a planning document, not an installation guide. No flashable or bootable artifacts are provided by this repository at this stage.

## Phase 0 — Establish the exact baseline

- Confirm Motorola Moto G60 XT2135-2, 6 GB RAM, and firmware `S2RIS32.32-20-9-9-2-3`.
- Review [device-target.md](device-target.md) and [source-audit.md](source-audit.md).
- Use the exact Motorola kernel-source release matching the reported firmware as the kernel research baseline.
- Keep the public LineageOS hanoip tree as a reference only; its proprietary-file list cites an earlier firmware revision.
- Record device properties only in sanitized form; never publish IMEI, serial number, phone number, or account data.

## Phase 1 — Source and compatibility audit

- Identify the intended HyperOS 4 Android platform version and the source material legitimately available for study.
- Compare Android framework, vendor interface, kernel, and hardware abstraction requirements.
- Inspect the exact kernel release, its defconfig, toolchain requirements, and license.
- Establish a matching vendor baseline and its redistribution permissions.
- Inventory required device-specific configuration.
- Document every unresolved compatibility gap.
- Do not assume a community Android 12/13 tree can be reused unchanged for HyperOS 4.

## Phase 2 — Build-system preparation

- Establish a reproducible build environment with sufficient storage and memory.
- Document required source revisions and toolchain versions.
- Add device configuration only when values are verified against the exact target and appropriate upstream source.
- Run static checks and build validation before any device test.
- Keep proprietary firmware files outside this public repository unless redistribution is explicitly permitted.

## Phase 3 — Controlled validation planning

- Define a reviewable test plan for a compatible development image.
- Confirm image format and device compatibility before any physical-device testing.
- Keep recovery planning and a known-good device-matched restoration option documented.
- Have an experienced adult review physical-device testing and data-loss risks.
- Record logs only after removing personal and device-identifying information.

## Phase 4 — Hardware validation

Test each area separately and update [compatibility.md](compatibility.md):

1. Storage and basic boot stability
2. Touch and input
3. Wi-Fi and mobile connectivity
4. Audio and haptics
5. GPU and display
6. Camera
7. CPU, thermal behavior, and power
8. Modem and telephony

Bluetooth remains deferred for the initial milestone.

## Release criteria

Do not publish a build as usable until:

- Its exact target variant and base are documented.
- Installation and recovery instructions have been independently reviewed.
- Each claimed working feature has reproducible test evidence.
- Known issues and data-loss risks are clearly stated.
- All included files have a documented redistribution basis.

## Important

A device codename match alone does not prove that firmware, partitions, or boot images are interchangeable. Do not use generic images or instructions from another Motorola model.
