Cfraij.com
====================

![background](https://user-images.githubusercontent.com/3893966/162011180-9d18715e-e463-4d3e-8e8b-e83e62690608.jpeg)

----------

---> [cfraij.com](https://cfraij.com/ "cfraij.com")  <---



## Getting started

The following steps will ensure your local development environment is setup correctly, to begin working on this website:

1. Install [Docker Desktop]()
2. Open a terminal/command prompt/powershell (windows) and change directory to root folder (i.e. `~/git/cfraij.com/`)
3. Run `docker compose -d up` (note: the first time you run this it will take 10 minutes to build image)
4. Now navigate to [localhost:4000/admin](http://localhost:4000/admin)



## Easy startup command


(Option #1) Run script manually in Powershell

```bash
cd ~/git/cfraij.com && docker compose up -d
```

OR

(Option #2) Open File Explorer and go into cfraij.com folder, and then right-click "run-docker.bat" and select  "Run as administrator"


## Troubleshooting

If Docker is running and the app is not available at localhost:4000, then here are some ways to help troubleshoot and get it fixed.

**Check if the Docker container is running:**

```bash
docker compose ps
```

**Restart the container:**

```bash
docker compose down
docker compose up -d
```

**Stream logs:**

```bash
docker compose logs -f --tail=100
```

**Rebuild Docker image:**

```bash
docker compose build
```

**Clear old cache:**

Your cache may be in a bad state. In this case, you should delete it and restart the Docker container.

```bash
rm -rf .jekyll-cache/
rm -rf _site/
```


## To access admin console

Open browser and navigate to url:

http://localhost:4000/admin