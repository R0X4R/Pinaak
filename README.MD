<h1 align="center">
  <br>
  <a href="https://github.com/R0X4R/Pinaak/"><img src="images/logo.png" width="500px" alt="Pinaak"></a>
</h1>
<h4 align="center">
A vulnerability fuzzer tool written in bash, it contains most commonly used tools to perform vulnerability scan.
</h4>

<p align="center">
<a href="#"><img src="https://madewithlove.org.in/badge.svg"></a>
<a href="https://github.com/R0X4R/Garud/issues"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"></a>
<a href="https://github.com/R0X4R/Garud/blob/master/LICENSE"><img src="https://img.shields.io/badge/License-MIT-yellow.svg"></a>
<a href="#"><img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg"></a>
<a href="https://twitter.com/R0X4R/"><img src="https://img.shields.io/badge/twitter-%40R0X4R-blue.svg"></a>
<a href="https://github.com/R0X4R?tab=followers"><img src="https://img.shields.io/badge/github-%40R0X4R-orange"></a>
</p>

---

A bash script that automatically finds vulnerable paramters on the basis of their patterns and run some most common used tools to find various vulnerabilities and it also uses nuclei which helps to find vulnerabilities on the basis of templates. Overall it helps you to find low hanging bugs.

<p align="center">
<a href="https://asciinema.org/a/wrbONQQbFkH6q2oGF5M6HWzcY?speed=8" target="_blank"><img src="https://asciinema.org/a/wrbONQQbFkH6q2oGF5M6HWzcY.svg"/></a>
<a href="https://github.com/sqlmapproject/sqlmap">sqlmap</a> •
<a href="https://github.com/1ndianl33t/Gf-Patterns">gf patterns</a> •
<a href="https://github.com/defparam/smuggler">smuggler</a> •
<a href="https://github.com/devanshbatham/OpenRedireX">OpenRedireX</a> •
<a href="https://github.com/Emoe/kxss">kxss</a> •
<a href="https://github.com/tomnomnom/qsreplace">qsreplace</a> •
<a href="https://github.com/projectdiscovery/nuclei">nuclei</a> •
<a href="https://github.com/hahwul/dalfox">dalfox</a> •
<a href="https://github.com/tomnomnom/anew">anew</a> •
<a href="https://github.com/projectdiscovery/notify">notify</a> •
<a href="https://github.com/ameenmaali/urldedupe">urldedupe</a> •
<a href="https://github.com/bp0lr/gauplus">gauplus</a> •
<a href="https://github.com/dwisiswant0/crlfuzz">crlfuzz</a> •
<a href="https://github.com/ffuf/ffuf">ffuf</a>
</p>

#### Installation
**Requirements: python3 and go-lang**
```css
runscan:~ sudo apt-get update
runscan:~ sudo apt-get install python3.8 python3-pip
runscan:~ sudo apt-get install golang-go
```

**Make sure you're root before performing the installation**

```css
runscan:~ git clone https://github.com/R0X4R/Pinaak.git && cd Pinaak/ && chmod +x pinaak install.sh && mv pinaak /usr/bin/ && ./install.sh
```

If you get any error just copy the error and search on google this will make your debugging skills better ;)

**Important** (add these before using the tool you can do it by: ``sudo nano /usr/bin/pinaak``)

```bash
header="" # please add custom header before using pinaak
intServer="" # please add interactsh server before using pinaak (http://test.interact.sh/)
```

#### Usage

*Please use VPS because it makes a lot of traffic*

```css
runscan:~ pinaak -h

█▀█ █ █▄░█ ▄▀█ ▄▀█ █▄▀
█▀▀ █ █░▀█ █▀█ █▀█ █░█
coded by @R0X4R in INDIA

-l  List of targets (must have webprobed earlier <subfinder -d target.com | httpx -silent | anew targets.txt>)
-b  Add your xss server for Blind XSS finding <https://test.xss.ht> (you can get it from https://xsshunter.com/)
-t  Number of threads (default 100) <-t int>

pinaak -l <target files> -t <threads> -b <blind xss server>
```
```css
runscan:~ subfinder -d target.com -all -threads 200 -silent | httpx -silent -threads 300 | anew -q targets.txt
runscan:~ pinaak -l ~/targets.txt -t 200 -b https://test.xss.ht
```

#### Thanks to the authors of the tools used in this script.

[@tomnomnom](https://github.com/tomnomnom) [@hahwul](https://github.com/hahwul) [@projectdiscovery](https://github.com/projectdiscovery) [@devanshbatham](https://github.com/devanshbatham)  [@defparam](https://github.com/defparam/) [@bp0lr](https://github.com/bp0lr/) [@ameenmaali](https://github.com/ameenmaali) [@dwisiswant0](https://github.com/dwisiswant0)  [@1ndianl33t](https://github.com/1ndianl33t) [@Emoe](https://github.com/Emoe/) [@sqlmapproject](https://github.com/sqlmapproject/sqlmap)

**Warning:** This code was originally created for personal use, it generates a substantial amount of traffic, please use with caution