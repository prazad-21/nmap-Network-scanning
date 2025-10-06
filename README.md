# macchanger_nmap

> A  Bash wrapper around `nmap` that automates common scans and formats results for easy reading.  
> **Use only on networks you own or are authorized to test.**

---

## 📌 Overview
"nmap.sh is a lightweight Bash script to run nmap scans (ports, service detection, optional OS fingerprinting), summarize results, and Designed for quick reconnaissance in lab or authorized environments.

---

## ⚙️ Features
- Quick TCP/UDP scans (top ports or custom range)
- Service detection (`-sV`) and optional OS detection (`-O`)
- OS guess detection (-O --osscan-guess) 
- Simple, human-readable summary printed to terminal
- Basic input validation and helpful `--help`

  ## nmap.sh setup guide
  

---

## ⚠️ Requirements
- Linux (Debian/Ubuntu/Parrot/Kali compatible)
- `bash` (v4+ recommended)

Install `nmap` (Debian/Ubuntu):
```bash
sudo apt update
sudo apt install nmap


MIT License

Copyright (c) 2025 prazad-linus

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



