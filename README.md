# Video Analytics for Major Project Pitching

VAMPP for short.

## Prerequisites

- OS: Ubuntu 22.04
- [Git LFS][Git LFS]
- [Conda][Conda]

## Installation

1. Clone

```sh
git clone "https://github.com/TMK04/vampp.git" --recurse-submodules -j8
```

2. Create environment

```sh
conda create -n vampp python=3.10
conda activate vampp
pip install --upgrade pip setuptools wheel
```

3. Set environment variables

```sh
cp .env.example .env # then edit .env
```

4. Download large files

e.g.

- Weights
- External scripts

```sh
./script_download_large.sh
```

5. Install dependencies

Note: For Docker, skip [there](#docker).

```sh
./script_install_deps.sh
```

## Docker

## Models used

| Task                       | Model                                                                                                                                                                                                          |
|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Crop Posture               | Finetuned [YOLOv8n](https://github.com/ultralytics/ultralytics)                                                                                                                                                |
| Enhance cropped posture    | [CodeFormer](https://github.com/sczhou/CodeFormer) + [Real-ESRGAN](https://github.com/xinntao/Real-ESRGAN)                                                                                                     |
| Speech Emotion Recognition | Finetuned [wav2vec2-large-robust-12-ft-emotion-msp-dim](https://huggingface.co/audeering/wav2vec2-large-robust-12-ft-emotion-msp-dim)                                                                          |
| Text Recognition           | [Whisper](https://github.com/openai/whisper)                                                                                                                                                                   |
| Text Analysis              | [deepseek-llm-67b-chat](https://huggingface.co/deepseek-ai/deepseek-llm-67b-chat) ([GPTQ 4bit-32g-actorder_True](https://huggingface.co/TheBloke/deepseek-llm-67b-chat-GPTQ/tree/gptq-4bit-32g-actorder_True)) |

[Conda]: https://docs.conda.io/projects/miniconda/en/latest
[Git LFS]: https://git-lfs.github.com
