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

### 1. `docker-compose.yml`
이미지 업데이트용 docker-compose 파일입니다.
**사용법:**
```bash
docker compose up -d
```



## 🛠 사용 기술
- ![ubuntu](https://img.shields.io/badge/-ubuntu-E55844?style=flat&logo=ubuntu&logoColor=white)
- ![vim](https://img.shields.io/badge/-vim-019733?style=flat&logo=vim&logoColor=white)
- ![docker](https://img.shields.io/badge/-docker-2496ED?style=flat&logo=docker&logoColor=white)
- ![oracle cloud](https://img.shields.io/badge/-oracle%20cloud-E55844?style=flat&logo=oracle&logoColor=white)