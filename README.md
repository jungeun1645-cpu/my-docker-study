# 🚀 나의 첫 도커 프로젝트 (My First Docker Project)

도커를 설치하고 Nginx 웹 서버를 직접 빌드해 본 프로젝트입니다.

## 🛠 사용 도구 (Tools)
- **Docker**: 컨테이너 환경 구축
- **Nginx**: 웹 서버
- **HTML**: 웹 페이지 구성

## 🏃 실행 방법 (How to Run)
1. 이미지 빌드: 
   `docker build -t my-image .`
2. 컨테이너 실행 (8082 포트): 
   `docker run -d -p 8082:80 --name my-site-2 my-image`
