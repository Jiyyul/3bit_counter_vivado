# 3-bit Up/Down Counter (Gate-Level Design)

이 저장소는 Xilinx Vivado를 사용하여 설계한 FPGA 프로젝트의 **설계 소스만**을 관리하기 위한 GitHub 저장소입니다.  
자동 생성 파일(run, cache, simulation 결과 등)은 제외하고, **설계 의도를 복원할 수 있는 최소 파일만** 포함합니다.

## 📝 과제 설명

본 과제는 **기본 논리 게이트(AND / OR / NOT)** 만을 사용하여  
**3-bit Up/Down Counter**를 설계하는 것을 목표로 합니다.

구현한 회로들 (게이트, D Flip-Flop, MUX, Adder)을 **조합**하여  
하나의 카운터 시스템을 완성합니다.

### 입력 조건 (SEL[1:0])
| SEL | 동작 |
|-----|------|
| 00  | +1 증가 |
| 01  | +2 증가 |
| 10  | −1 감소 (mod 8) |
| 11  | Reset (000으로 초기화) |

### 설계 구성 요소
- **기본 게이트**: AND, OR, NOT  
- **D Flip-Flop**: 게이트 조합으로 직접 구현  
- **3-bit Register**: DFF 3개로 구성  
- **Adder**: Full Adder 구조 사용  
- **MUX**: 입력 선택용 조합논리 회로  
- **Wrap-around 조건**
  - `111 → 000`
  - `000 → 111`

### 검증 방법
- Vivado Behavioral Simulation 사용
- Testbench에서 `SEL` 값을 변경하며 각 case 동작 확인
- Waveform을 통해 카운트 및 reset 동작 검증

## 📌 포함된 파일 설명

### 1. Verilog 소스 (`.v`)
- 직접 작성한 논리 회로 모듈
- AND / OR / NOT 게이트
- Gate-level D Flip-Flop
- Counter 구성에 필요한 핵심 로직 포함

### 2. Block Design 파일 (`.bd`)
- Vivado Block Design 기반 top-level 설계
- 각 모듈 간 연결 구조 정의

### 3. IP 설정 파일 (`.xci`)
- Vivado에서 생성된 IP 설정 정보
- 프로젝트 복원 시 IP 재생성 가능


## ❌ 제외된 파일
아래 파일들은 Vivado가 자동 생성하는 파일로, Git에 포함하지 않습니다.

- `.xpr`
- `runs/`, `cache/`, `sim/`, `gen/`, `hw/`, `tmp/`
- IP 생성 결과물 (`.v`, `.dcp`, `.xml` 등)


## ✍️ 참고
본 설계는 **IP Core를 사용하지 않고**,  
수업 시간에 다룬 회로들을 조합하여 구현하였습니다.
본 저장소는 **과제 제출 및 설계 검증 목적**으로 사용되며,  
빌드 결과물은 포함하지 않습니다.## 개발 환경

- Vivado 2025.1
- Verilog HDL

