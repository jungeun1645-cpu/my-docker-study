# 🚀 개발 워크스테이션 구축 및 도커 실습 과제

본 문서는 WSL2 리눅스 환경 구축, Docker 컨테이너 운영, 그리고 Git을 이용한 버전 관리 실습 과정을 기록한 최종 보고서입니다.

---

## 1. 실습 환경 (Environment)
- **OS**: Windows 11 (WSL2 Ubuntu 22.04 LTS)
- **Tool**: Docker Desktop, VS Code, Git
- **Docker Version**: [여기에 docker --version 결과 입력 (예: 24.0.x)]
- **Git Version**: [여기에 git --version 결과 입력 (예: 2.x.x)]

---

## 2. 주요 수행 항목 및 결과

### ✅ 2.1 리눅스 터미널 조작 및 권한 관리
- **기본 명령어**: `pwd`, `ls`, `cd`, `mkdir`, `touch`, `cp`, `rm` 등을 사용하여 파일 시스템 조작 완료.
- **권한 설정**: `chmod` 명령어를 사용하여 파일의 읽기/쓰기/실행 권한을 변경하고 `ls -l`로 확인.
  - 실습 예시: `chmod 755 index.html` (소유자에게 모든 권한 부여)

### ✅ 2.2 Docker 컨테이너 운영
1. **Hello-World**: `docker run hello-world`를 통해 도커 엔진 정상 작동 확인.
2. **Nginx 웹 서버**: 
   - 기본 실행: `docker run -d -p 8080:80 nginx`
   - **바인드 마운트(8081)**: 로컬 폴더와 컨테이너를 연결하여 실시간 코드 수정 반영 확인.
   - **커스텀 이미지(8082)**: `Dockerfile`을 작성하여 나만의 웹 서버 이미지 빌드 및 실행.

### ✅ 2.3 Git & GitHub 활용
- **환경 설정**: `git config`를 통해 사용자 이름과 이메일 등록.
- **버전 관리**: `git add`, `git commit`, `git push`를 통해 로컬 작업물을 GitHub 저장소에 업로드 완료.

---

## 3. Dockerfile 구성 내용
본 실습에서 사용한 커스텀 이미지의 설정 내용입니다.
```dockerfile
# 1. 베이스 이미지 설정
FROM nginx:latest

# 2. 로컬의 index.html을 컨테이너 내부로 복사
COPY index.html /usr/share/nginx/html/index.html

# 3. 80번 포트 개방
EXPOSE 80