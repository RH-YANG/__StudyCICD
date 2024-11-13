# 하단의 명령어를 순차적으로 따라간다

# 1. 볼륨 생성 : vscode 설정 저장용 
docker volume create \
--opt device="D:/__StudyCICD/0_IDE/c_run/ide_config" \
--opt o=bind --opt type=none ide_config

# 2. 볼륨생성 : 소스코드 연동용
docker volume create \
--opt device="D:/__StudyCICD" \
--opt o=bind --opt type=none src

# 3. 볼륨 생성 확인
docker volume ls

# 4. docker-compose 작동
docker-compose up -d # -d를 하면 로그를 보지 않고 빠져나온다(백그라운드 운영)

# 5. docker-compose 해제
docker-compose down