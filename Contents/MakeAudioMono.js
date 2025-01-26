let audioCtx= new AudioContext();
let source = context.createMediaElementSource(document.querySelector('video'));

let splitter = context.createChannelSplitter();
let merger = context.createChannelMerger();

source.connect(splitter);
splitter.connect(merger, 0, 0);
splitter.connect(merger, 0, 1);

merger.connect(context.destination);

