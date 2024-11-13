# 하단의 명령어를 순차적으로 따라간다

# 1. buildx 설치 확인
docker buildx version

# 2. Build 인스턴스 생성(디폴트로 설정)
docker buildx create --name mybuilder --use

# 3. 멀티플랫폼 이미지 생성 및 도커허브에 푸시
docker buildx build  --platform linux/amd64,linux/arm64  -t rrhh1122/ide_for_cicd:0.0.1 --push . 