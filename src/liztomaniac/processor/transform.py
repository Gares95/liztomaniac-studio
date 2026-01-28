from pathlib import Path

import librosa  # type: ignore[import-untyped]
import soundfile as sf  # type: ignore[import-untyped]


def time_stretch_to_wav(input_path: Path, output_path: Path, tempo: float) -> None:
    y, sr = librosa.load(input_path, sr=None, mono=True)
    y2 = librosa.effects.time_stretch(y, rate=tempo)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    sf.write(output_path, y2, sr)
