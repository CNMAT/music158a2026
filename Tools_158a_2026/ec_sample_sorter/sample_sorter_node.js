'use strict';
const max = require('max-api');
const {Sorter} = require('./sample_sorter_core');
const sorter = new Sorter((type, value) => {
  if (type === 'log') max.post(value);
  else max.outlet(type, ...(value === undefined ? [] : [value]));
});
function handler(name, fn) {
  max.addHandler(name, async (...args) => {
    try { await fn(...args); }
    catch (e) { sorter.status('ERROR: ' + e.message); max.post(e.stack || e.message); sorter.state(); }
  });
}
handler('load', p => sorter.load(p));
handler('rescan', () => sorter.root ? sorter.load(sorter.root) : sorter.status('Choose a source folder first.'));
handler('select_available', n => sorter.select('available', n));
handler('select_preferred', n => sorter.select('preferred', n));
handler('next_available', () => sorter.step('available', 1));
handler('previous_available', () => sorter.step('available', -1));
handler('next_preferred', () => sorter.step('preferred', 1));
handler('previous_preferred', () => sorter.step('preferred', -1));
handler('keep', () => sorter.keep());
handler('remove', () => sorter.remove());
handler('replay', () => sorter.replay());
handler('stop', () => { sorter.emit('stop'); sorter.status('Stopped.'); });
handler('export_new', p => sorter.exportNew(p));
handler('plan_replace', p => sorter.planReplace(p));
handler('confirm_replace', () => sorter.confirmReplace());
handler('cancel_replace', () => sorter.cancelReplace());
handler('hello', () => { sorter.state(); sorter.status('Ready. Choose a source folder; enable Audio to audition.'); });
sorter.state();
sorter.status('Ready. Choose a source folder; enable Audio to audition.');
