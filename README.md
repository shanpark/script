# script

Shell scripts collections

- `restart.sh`
  - 하위에 있는 service 들을 모두 재시작한다.
  - 하위에 있는 service 들은 스크립트의 `PROCESSES` 배열에 모두 등록되어 있어야 한다.
  - 모든 service 폴더에는 `start.sh`, `stop.sh` 스크립트가 있어야 한다.
- `ps.sh`
  - 현재 실행 되어있는 service 들을 조회한다.
  - 각 service의 jar 파일 이름을 스크립트에 정확히 등록해야 한다.

## service

- Spring 서비스 같은 jar 파일 형태의 프로세스 관리를 위해 사용할 스크립트.
- 같은 폴더에 jar 파일이 같이 존재해야 하며 폴더 내에서 실행되어야 한다.
  - `install.sh` - service-\*.jar 파일을 service.jar 파일로 설치하고 서비스를 재시작한다.
  - `start.sh` - service를 시작 시킨다.
  - `stop.sh` - service를 중단 시킨다.
  - `tail.sh` - tail 명령어로 serivce가 쌓는 log 파일을 보여준다. log/service.log 형태로 로그가 생성되어야 한다.
