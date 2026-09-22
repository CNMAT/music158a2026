Presentation drift toggle now sends Micro_On_v19 and silently follows Micro_On_state_v19. Removed its conflicting startup ON message. The existing internal startup OFF is authoritative.

Added six explanatory comments in each Micro_drift_v19 message space.

DSP status: adstatus switch numeric right outlet → sel 0 1 → set 0 / set 1 → DAC toggle. Unmatched status values are discarded. Left outlet still serves the display menu.

Graph and added-object placement checks passed. JavaScript engine unchanged; Max runtime/audio not available for testing.
