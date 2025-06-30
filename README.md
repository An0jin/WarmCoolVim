# WarmCoolVim

이 저장소는 FastAPI 기반의 컨테이너화된 애플리케이션을 관리하기 위한 스크립트들을 포함하고 있습니다. Oracle Cloud 인스턴스에 접속하는 스크립트도 포함되어 있습니다.

---

## 🏗 시스템 구성

프로젝트는 다음 다섯 개의 주요 리포지토리로 구성되어 있습니다:

### 1. [WarmCoolYolo](https://github.com/An0jin/WarmCoolYolo)

- YOLO12 기반 퍼스널 컬러 분류 모델
- Roboflow를 통한 데이터셋 관리
- 모델 학습 및 평가 파이프라인

### 2. [WarmCoolFastapi](https://github.com/An0jin/WarmCoolFastapi)

- FastAPI 기반 백엔드 서버
- YOLOv12 모델 서빙
- RESTful API 엔드포인트 제공
- Postgresql 데이터베이스 연동

### 3. [WarmCoolUnity](https://github.com/An0jin/WarmCoolUnity)

- Unity 기반 AR 애플리케이션
- ARFoundation을 통한 얼굴 인식
- 가상 메이크업 적용
- Photon 기반 실시간 채팅

### 4. [WarmCoolSQL](https://github.com/An0jin/WarmCoolSQL)

- 채팅 정보 관리
- 유저 정보 관리
- 퍼스널 컬러 해설

### 5. [WarmCoolDataset](https://github.com/An0jin/WarmCoolDataset)

- roboflow를 활용한 데이터 수집
- github를 활용한 데이터 수집
- open CV를 활용한 데이터 증강

### 6. [WarmCoolVim](https://github.com/An0jin/WarmCoolVim)

- vim으로 작성한 쉘 스크립트
- 쉘 스크립트를 활용한 도커 조작
- 쉘 스크립트를 활용한 웹호스팅

---

## 스크립트 설명

### 1. `connect.sh`
Oracle Cloud 인스턴스에 SSH로 접속하기 위한 스크립트입니다.

**사용법:**
```bash
# 접속 전에 host 환경 변수를 설정해야 합니다.
echo"export host=your_oracle_cloud_instance_ip" >> ~/.bashrc
sh connect.sh
```

### 2. `delete.sh`
실행 중인 FastAPI 컨테이너를 중지하고 제거하는 스크립트입니다.

**기능:**
- 실행 중인 `capstoneAPI` 컨테이너 중지
- 중지된 `capstoneAPI` 컨테이너 제거
- 로컬에 저장된 `an0jin/2025capstone-fastapi:v1` 이미지 삭제

**사용법:**
```bash
sh delete.sh
```

### 3. `pull.sh`
Docker 허브에서 FastAPI 애플리케이션 이미지를 내려받고 실행하는 스크립트입니다.

**기능:**
- `an0jin/2025capstone-fastapi:v1` 이미지 다운로드
- 다운로드한 이미지를 기반으로 컨테이너 실행
- 호스트의 8000번 포트를 컨테이너의 8000번 포트로 매핑
- 로컬의 `./uploads` 디렉토리를 컨테이너의 `/code/uploads`에 마운트

**사용법:**
```bash
sh pull.sh
```

### 4. `update.sh`
애플리케이션을 최신 버전으로 업데이트하는 스크립트입니다.

**기능:**
1. `delete.sh`를 실행하여 기존 컨테이너 정리
2. `pull.sh`를 실행하여 최신 버전의 애플리케이션 다운로드 및 실행

**사용법:**
```bash
sh update.sh
```


### 5. `createDB.sh`
Postgresql 데이터베이스를 생성하는 스크립트입니다.

**기능:**
1. `postgres:16.9-bullseye` 이미지 다운로드
2. `capstoneDB` 컨테이너 실행

**사용법:**
```bash
echo "export password=your_password" >> ~/.bashrc
sh createDB.sh
```


## 🛠 사용 기술
- ![ubuntu](https://img.shields.io/badge/-ubuntu-E55844?style=flat&logo=ubuntu&logoColor=white)
- ![shell script](https://img.shields.io/badge/-shell%20script-E55844?style=flat&logo=gnubash&logoColor=white)
- ![vim](https://img.shields.io/badge/-vim-019733?style=flat&logo=vim&logoColor=white)
- ![docker](https://img.shields.io/badge/-docker-2496ED?style=flat&logo=docker&logoColor=white)
- ![oracle cloud](https://img.shields.io/badge/-oracle%20cloud-E55844?style=flat&logo=oracle&logoColor=white)