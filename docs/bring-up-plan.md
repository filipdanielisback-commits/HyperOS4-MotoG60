# Bring-up research plan

This is a planning document, not an installation guide. No flashable or bootable artifacts are provided by this repository at this stage.

## Phase 0 — Establish the baseline

- Confirm the exact Moto G60 model and regional variant.
- Record the currently installed Android build and firmware base.
- Identify the boot chain, partition scheme, and supported image formats from trustworthy device documentation.
- Collect public device-tree and kernel references, preserving their original licenses.
- Make a recovery and data-backup plan before any device experimentation.

## Phase 1 — Source and compatibility audit

- Identify the intended HyperOS base and Android platform version from legitimately obtained, redistributable source material.
- Compare Android framework, vendor interface, kernel, and hardware abstraction requirements.
- Inventory required device-specific configuration.
- Keep proprietary firmware components out of this repository unless redistribution is explicitly permitted.
- Document every unresolved compatibility gap.

## Phase 2 — Build-system preparation

- Establish a reproducible build environment.
- Document required source revisions and toolchain versions.
- Add device configuration only when its values are verified against the target device and upstream source.
- Run static checks and build validation before any device test.

## Phase 3 — Controlled boot validation

- Define a test plan for a compatible development image.
- Verify that the image format and boot method are supported for this exact device.
- Keep recovery instructions and a known-good stock restoration path documented.
- Record boot logs with personal and device-identifying information removed.

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
- Installation and recovery instructions have been reviewed.
- Each claimed working feature has reproducible test evidence.
- Known issues and data-loss risks are clearly stated.
- All included files have a documented redistribution basis.

## Important

Do not use generic images or instructions from another Motorola model. A device codename match alone does not prove that firmware, partitions, or boot images are interchangeable.
