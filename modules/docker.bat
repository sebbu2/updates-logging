@echo off
docker --version > %DATA%\docker.txt
docker version > %DATA%\docker-version.txt
docker info > %DATA%\docker-info.txt
docker container ls -a > %DATA%\docker-containers.txt
docker image ls -a > %DATA%\docker-images.txt
docker extension ls > %DATA%\docker-extensions.txt 2>&1
docker desktop engine ls > %DATA%\docker-desktop-engines.txt
docker desktop status > %DATA%\docker-desktop-status.txt
docker plugin ls > %DATA%\docker-plugins.txt
docker system info > %DATA%\docker-system-info.txt
docker mcp catalog list > %DATA%\docker-mcp-catalog.txt
docker mcp client ls > %DATA%\docker-clients.txt
docker mcp feature ls > %DATA%\docker-mcp-features.txt
docker mcp oauth ls > %DATA%\docker-mcp-oauth.txt 2>&1
rem docker mcp secret ls
docker mcp template list > %DATA%\docker-mcp-templates.txt
docker mcp tools ls > %DATA%\docker-mcp-tools.txt
