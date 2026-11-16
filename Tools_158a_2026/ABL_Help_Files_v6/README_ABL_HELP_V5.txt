ABL Help Files v5 — exact original-help package links

This revision replaces the non-working generic pcontrol help <object> link.

Each visible OPEN ORIGINAL ABL HELP message now resolves the authoritative Max 9 help patch by its explicit installed-package address:

    Package:/Ableton DSP/help/<abl-object>.maxhelp

Implementation:
    visible message -> trigger bang -> package-path message -> absolutepath -> prepend load -> pcontrol

Using Package:/Ableton DSP/ is portable across Max 9 installations and prevents same-name collision with this custom ABL help library.

All v4 EXAMPLE, DSP-description, preset, randomization, parameter, gain, and receive~ systems are otherwise unchanged.
