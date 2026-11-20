# Hardware compatibility tracker

This page records verified test results for the Motorola Moto G60 (hanoip) port research.

## Status definitions

- **Not tested:** no valid device test has been completed.
- **In progress:** active investigation; not yet considered functional.
- **Working:** tested on the specified device variant and build, with evidence recorded.
- **Partial:** some functions work, but known limitations remain.
- **Broken:** tested and confirmed not working.
- **Deferred:** intentionally outside the current milestone.

## Current matrix

| Area | Status | Evidence required before marking working |
|---|---|---|
| Wi-Fi | Not tested | Connect to an access point; verify stability and data transfer |
| Audio | Not tested | Test speaker, earpiece, microphone, and headset paths |
| Camera | Not tested | Test rear/front cameras, preview, capture, and video |
| GPU | Not tested | Verify graphics initialization, rendering, and sustained stability |
| Haptics | Not tested | Verify vibration feedback in system UI |
| CPU / thermal | Not tested | Verify CPU online state, scheduling, and thermal reporting |
| Mobile network | Not tested | Verify cellular data and network registration |
| Modem / telephony | Not tested | Verify radio interface and calling only in a controlled test |
| Storage | Not tested | Verify internal storage mount, read/write, and encryption behavior |
| Touch / input | Not tested | Verify touchscreen, buttons, and other input devices |
| Bluetooth | Deferred | Not included in the first milestone |

## Test record template

For every test, record:

- Device model and exact variant
- Build identifier and source revision
- Firmware / vendor base
- Test date
- Steps performed
- Expected result and observed result
- Relevant sanitized logs
- Regressions or known limitations

Do not publish personal data, device identifiers, account details, or unredacted diagnostic logs.

A successful build or boot animation is not sufficient evidence that a hardware component works.
