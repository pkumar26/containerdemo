FROM mcr.microsoft.com/windows/servercore/iis:latest
RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*
WORKDIR /inetpub/wwwroot
COPY content/ .
