# 1. 베이스가 될 이미지를 고릅니다 (Nginx를 기반으로 하겠다는 뜻)
FROM nginx:latest

# 2. 내 컴퓨터의 index.html을 도커 이미지 안의 웹 서버 폴더로 복사합니다
COPY index.html /usr/share/nginx/html/index.html