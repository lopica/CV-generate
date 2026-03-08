This is LaTeX template for a CV (Curriculum Vitae), Résumé or Cover Letter.

## Requirements

- [Docker](https://www.docker.com/) installed and running.

## Build

Lệnh thiếu `-w /work` sẽ báo lỗi **"I can't find file cv.tex"** vì container không chạy từ thư mục có file. Dùng một trong hai cách sau:

### Cách 1: Chạy script (khuyến nghị)

**Windows (Git Bash):**
```bash
./build.sh
```

**Windows (CMD):** double-click `build.bat` hoặc chạy `build.bat`.

### Cách 2: Chạy Docker trực tiếp

**Windows (Git Bash)** — copy nguyên dòng này (bắt buộc có `MSYS_NO_PATHCONV=1` và `-w //work`):

```bash
MSYS_NO_PATHCONV=1 docker run -u ${UID:-0}:${GID:-0} --rm -v "$PWD:/work" -w //work csmith/awesome-cv-builder
```

**Linux / macOS:**

```bash
docker run -u $UID:$GID --rm -v $PWD:/work -w /work csmith/awesome-cv-builder
```

Kết quả: file **cv.pdf** nằm trong thư mục project.
