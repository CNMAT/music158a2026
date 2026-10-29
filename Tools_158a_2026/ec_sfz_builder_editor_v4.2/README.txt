EC SFZ Builder — jit.cellblock display update

INSTALL
Close the builder. Place the enclosed updated _ec_sfz_builder_editor(9).maxpat
and ec_sfz_builder.js in your existing builder folder, replacing the controller.
Open the enclosed patch. Keep the other current support files in that folder,
including the HTML and JavaScript files from the sample-selection update.

CHANGES
The attached patch was used as the starting point. Presentation positions,
presentation sizes, colors, original wiring, and other controls are preserved.

Both tables now have matching patching/presentation sizes, left-aligned text,
and 26-pixel rows instead of 23-pixel rows. The extra row clearance gives the
native inline text editor more room; slightly fewer rows fit at once, with
vertical scrolling retained.

Cell selections, edits, and scroll events request a redraw after Max finishes
the current event. This redraw only repaints: it does not replace table data,
compile changes, clear selection, or discard drafts. Rapid events are combined
into one deferred redraw, and pending redraws are cancelled on close.

Table rebuilds also stop forcibly selecting the read-only Opcode-name cell.
The selected-opcode label and the Copy/Delete button selection are retained.

CHECK IN MAX
1. Add output in section 3, edit its Value, and press Return. Check that the
   Opcode name stays in its column and that the new Value remains visible.
2. Click/edit a long sample name in section 2. Check its alignment with the row
   below, then scroll both tables horizontally and vertically.
3. Compile tables and verify the entered values in the SFZ Program. Revert
   tables continues to discard only unapplied table drafts.

VALIDATION
37 automated checks passed for deferred redraw behavior, retained table drafts,
selection, Copy/Delete opcode, group tools, sample selection/import, and Undo.
Patch structure and all original patch cords were also checked. Max's native
renderer is not available in this environment, so the visual correction has
not been confirmed inside Max. This update addresses the observed display
symptoms; it does not establish a specific Max bug as their cause.

Reference for the native refresh message and table settings:
https://docs.cycling74.com/reference/jit.cellblock/
