# Back 관통 프로젝트 - SSAFIT
[Web Back PJT]


### ✔️ 프로젝트 목표

---

- Java의 **BackEnd 기술인 Servlet/JSP를 이해하고 이를 활용하여 웹 서버를 구축 할 수 있다.**

### ✔️  프로젝트 설명

---

- 이번 SSAFIT 프로젝트는 고객이 원하는 운동 부위 별 다양한 운동 영상 정보와 영상의 리뷰와 관련된 페이지를 제공한다.
- 각 영상 정보에 대한 **리뷰 등록 및 삭제를 통해 리뷰를 관리 할 수있다.**
- **영상 정보 데이터 파일(video.json) 을 기반으로 정보를 파싱 처리하여** 원하는 영상 정보만을 제공한다.

### ✔️ 프로젝트 요구사항

---

1. Ssafit 프로젝트의 BackEnd 파트를 구현하는 것을 목표로 한다. **MVC 기반의 웹 프로젝트를 설계하고 구현한다.**
2. 백앤드 데이터 관리는 이전 자바관통에서 진행한 것처럼 메모리를 활용하여
진행한다. 
3. 소스 작성 전 작성하려는 BackEnd 클래스의 구조와 네이밍룰 등을 검토하여 완성도 높은 결과물이 나오는 것을 목표로 한다.
4. 기능 구현
    1. 기본기능
    2. 추가기능
    3. 심화기능

### ✔️ 프로젝트 요구사항 - 기능 구현

---

🔎 **기본 기능**

- 다양한 운동영상정보와 영상의 리뷰를 위한 백앤드 기능을 구현한다.
    1. **메인페이지 백엔드 기능 구현**
        - 운동영상 정보의 다양한 출력을 위한 백엔드 구현(조회수 기준 영상, 운동부위별 영상)
        - 메인페이지의 영상화면은 제공된 Ajax를 이용(json 데이터 파일 로딩)
    2. **운동영상에 대한 리뷰관리 백엔드 기능 구현**
        - 목록, 등록, 수정, 상세, 삭제

🔎 **추가 기능**

- 사이트의 다양한 기능을 사용하기 위해서 회원가입, 로그인 페이지를 제공한다.
    1. **회원가입 백엔드 구현**
    2. **로그인, 로그아웃 백엔드 구현**

🔎 **심화 기능**

- 회원은 관심있는 영상을 찜 할 수 있고 찜 한 영상을 삭제 할 수 있다.
- 회원은 다른 회원을 팔로우 할 수 있다.
    1. **회원의 팔로우 정보 관리 백앤드 구현**
    2. **회원의 영상 찜 관리 백앤드 구현**

### ✔️ 프로젝트 구현 방법

---

1. 관통 프로젝트의 요구사항을 이해하고, Eclipse 에서 프로젝트를 생성한다.
2.  요구사항을 분석하고 MVC 아키텍처를 기반으로 클래스를 설계한다.
3. 설계된 클래스를 기반으로 FrontEnd 관통의 페이지와 연동하여 BackEnd를
구현한다.
4. 프로젝트는 GitLab을 활용하여 Pair 프로젝트로 수행한다.
5. 기본 기능 구현을 모두 완료하고 추가 기능, 심화 기능을 구현한다.

### ✔️ 프로젝트 클래스 다이어그램

---

![클래스다이어그램](/uploads/a4f8604355de7d37cb94de871fce15f0/클래스다이어그램.png)

### ✔️ 기능 구현 및 화면 설명

---

### 🐳 1. 메인 페이지

---

- 다양한 운동 영상 정보를 제공한다.
- 메인페이지의 영상화면은 제공된 Ajax를 이용(json 데이터 파일 로딩)
- **메인 페이지 기능**
    - 최근 가장 많이 본 영상 정보 제공
        - 영상을 클릭하면 해당 영상 정보 페이지로 이동할 수 있다.
    - 운동 부위 별 영상 정보 제공
        - 영상을 클릭하면 해당 영상 정보 페이지로 이동할 수 있다.
        

![메인화면01](/uploads/c8fc83fa71b9885e6a543316a65d0d0a/메인화면01.JPG)

![메인화면02](/uploads/f1bcfaefdc586856d7c49bb2b3fff037/메인화면02.JPG)

### 🐳 2. 영상 리뷰 상세 목록 페이지

---

- 운동 부위별 영상 상세 페이지에서 해당 영상을 클릭하면 영상 리뷰 상세 목록 페이지로 이동한다.
- 이 페이지에서는 **운동영상에 대한 리뷰 등록 및 삭제가 가능하다**.
- **영상 리뷰 상세 목록 페이지 기능**
    - 각 운동 영상들에 대한 리뷰 목록을 확인할 수 있다
    - ‘글 작성’ 을 누르면 리뷰를 등록하는 페이지로 이동할 수 있다.

![영상리뷰목록](/uploads/7b289d030a14cf84245d94558b572bf3/영상리뷰목록.JPG)

### 🐳 3-1. 영상 리뷰 상세 목록 페이지 → 리뷰 등록하기

---

- 영상 리뷰 상세 목록 페이지에서 ‘글 작성’을 누르면 운동 영상 리뷰를 등록할 수 있는 페이지로 이동한다.
- 제목과 내용을 작성한 후 ‘등록’ 버튼을 누르면 운동 영상 리뷰 목록으로 돌아가 작성한 리뷰가 등록된다.
- **영상 리뷰 등록 페이지 기능**
    - 해당 영상에 대한 리뷰를 등록할 수 있다

![영상리뷰등록01](/uploads/d46481f9b05cf4f560e026e66f975f3f/영상리뷰등록01.JPG)

![영상리뷰등록02](/uploads/fff60f2f16690d6d52bff15249288211/영상리뷰등록02.JPG)

- 제목과 내용을 작성할 수 있다.

### 🐳 3-2.영상 리뷰 상세 목록 페이지 → 리뷰 삭제하기

---

- 영상 리뷰 등록 페이지에서 제목과 내용을 작성한 후 ‘등록’ 버튼을 누르면 작성한 리뷰와 함께 운동 영상 리뷰 페이지로 이동한다.
- 각 리뷰는 오른쪽에 ‘삭제’ 버튼과 함께 목록에 등록된다.
- **영상 리뷰 상세 목록 페이지 기능**
    - 각 운동 영상들에 대한 리뷰 목록을 확인할 수 있다
    - ‘글 작성’을 누르면 리뷰를 등록하는 페이지로 이동할 수 있다.
    - ‘삭제’ 를 누르면 등록한 리뷰를 삭제할 수 있다.

![영상리뷰삭제01](/uploads/c5a637d958c1af8ac6d9c2be129e941a/영상리뷰삭제01.JPG)

- 삭제 버튼을 누르면 아래 사진처럼 리뷰가 삭제된다.

![영상리뷰삭제02](/uploads/3673ac2dc90c3d83d213d093781380e0/영상리뷰삭제02.JPG)

### ✔️ 프로젝트를 하고난 소감

---

### 👾 프로젝트를 진행하면서 느낀점

✏️ **양영건:** 힘들었던 점이 많습니다. JavaScript 및 CSS를 JSP에서 import할 때 경로 문제로 잘 되지 않았고, json을 import할 때도 마찬가지였습니다. 이클립스가 서블릿 서버를 시작할 때 경로를 바꾸어서 어딘가에서 시작을 하는 것이 문제가 되었다는 것을 알게 되었습니다. JSP로는 동적인 페이지를 만들 때 부분적인 업데이트가 불가능했습니다. 이점 때문에 동적인 페이지를 만드는 것이 몹시 어려워졌습니다. 추가적으로 JSTL과 JSP 스크립트 요소를 함께 다루는 것이 어려워서 변수를 다루기가 쉽지 않았습니다.

✏️ **오하늘**: 경로 문제로 어려움이 많았습니다. 프로젝트를 하면서 발생한 대부분의 문제들이 경로 문제였고 이번 백엔드 프로젝트를 통해서 저와 JSP는 조금 멀어진 것 같습니다…..  다음 DB 관통 프로젝트까지 프론트와 백을 열심히 복습해야 할 것 같습니다. 시험 치시고 새벽까지 프로젝트 함께 진행한 영건님 고생 많으셨습니다. 감사합니다 ~! 

###
