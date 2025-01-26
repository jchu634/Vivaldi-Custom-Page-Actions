if (!gainNode) {
    var videoElement = document.querySelector("video");
    var audioCtx = new AudioContext();
    var source = audioCtx.createMediaElementSource(videoElement);
    var gainNode = audioCtx.createGain();
    gainNode.gain.value = 3;
    source.connect(gainNode);
    gainNode.connect(audioCtx.destination);
} else {
    gainNode.gain.value = 3;
}
