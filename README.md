# Vivado Final Project

이 저장소는 Xilinx Vivado를 사용하여 설계한 FPGA 프로젝트의 **설계 소스만**을 관리하기 위한 GitHub 저장소입니다.  
자동 생성 파일(run, cache, simulation 결과 등)은 제외하고, **설계 의도를 복원할 수 있는 최소 파일만** 포함합니다.

---

## 📌 포함된 파일 설명

### 1. Verilog 소스 (`.v`)
- 직접 작성한 논리 회로 및 모듈 구현
- 주요 설계 내용 포함

### 2. Block Design 파일 (`.bd`)
- Vivado Block Design 기반 top-level 설계도
- IP 간 연결 구조를 정의

### 3. IP 설정 파일 (`.xci`)
- 각 IP의 설정 정보
- Vivado에서 IP 재생성 가능

---

## ❌ 제외된 파일
아래 파일들은 Vivado가 자동 생성하는 파일로, Git에 포함하지 않습니다.

- `.xpr`
- `runs/`, `cache/`, `sim/`, `gen/`, `hw/`, `tmp/`
- IP 생성 결과물 (`.v`, `.dcp`, `.xml` 등)

---

## ▶ Vivado에서 프로젝트 복원 방법 (개요)

1. Vivado 실행
2. 새 프로젝트 생성
3. 본 저장소의 `srcs/` 폴더를 소스 및 BD로 추가
4. IP 재생성 (필요 시)

---

## ✍️ 참고
본 저장소는 **과제 제출 및 설계 검증 목적**으로 사용되며,  
빌드 결과물은 포함하지 않습니다.
