# Team3_1 🙌 아무전시 AMJS


<h3> 👨‍👧‍👦Team member </h3>
|김남훈|김선우|손현진|최선형|
|-----|-----|-----|-----|

<br><br>

<h3> 🌱 한 줄 소개 </h3>
누구나 원하는 전시를 검색하여 찾고, 관련 정보를 공유하고 예약까지 가능한 전시 플랫폼 사이트

<br><br>

<h3> 👩‍💻 사용 기술 </h3>
<div>
  <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=Java&logoColor=white" />
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white" />
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white" />
  <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
  <img src="https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=Oracle&logoColor=white"/> 
  
  </br>
  
  <img src="https://img.shields.io/badge/Github-181717?style=for-the-badge&logo=github&logoColor=white"/>
  <img src="https://img.shields.io/badge/Eclipse IDE-2C2255?style=for-the-badge&logo=Eclipse IDE&logoColor=white"/> 
  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
</div>

<br>

<h3> 💻 에러 기록 </h3>

> 깃

  #### 1. merge branch
  
    - 내 워킹트리에 업데이트 되지 않은 데이터가 있을 때 풀 없이 작업중인 워킹트리 푸시
      -> 브랜치 추가로 생성
      -> 풀로 데이터 받고 다시 푸시해주어 브랜치 통합 가능
  
  #### 2. conflict 
  
    - 1번과 같은 상황에서 서로 동일한 파일을 작업중이라면 자동으로 브랜치가 통합되지 않음
      -> 직접 충돌된 부분 수정하여 저장될 파일을 정리해줘야 함
      
  * conflict 해결 4가지 옵션 
      - 깃에서 임의로 합친 파일로 업로드
      - 이전에 커밋된 파일로 되돌리기 
      - 최신 파일로 덮어쓰기 
      - 직접 수정하여 새로 작성
<br><br>

> 고객센터

  #### 1. 자바스크립트 실행 오류
  
    - 고객센터 메인페이지에서 form 태그를 이용해 검색창 정보를 넘김
    - 검색결과 출력페이지에서 ajax로 검색 결과를 받아와서 출력
      -> 이때 데이터 송수신과 ajax 실행까지는 정상적으로 되지만 자바스크립트가 실행되지 않음
      -> form 태그를 통한 값의 전송과 ajax의 실행 사이에 충돌이 발생하는 문제
    👉 form 태그로 값을 전송 후 첫번째 화면에서는 ajax 없이 form 태그 내 포함된 정보를 이용하여 데이터 출력하여 해결
    
  #### 2. jsp 파일 간 include 시 자바스크립트 실행 오류
  
    - 자바스크립트가 실행되려면 실행될 파일에 모두 스크립트 문구가 명시되어있어야 함
    👉 include 받는 파일에도 스크립트 추가하여 해결
    
  #### 3. ajax로 다른 jsp 파일로부터 데이터를 받아올 때 특정 페이지에서 자바스크립트가 실행되지 않는 오류
  
    - 2번과 같은 이유
    👉 각 페이지에 자바스크립트가 모두 추가하여 해결   
    
  
  * 자바스크립트 오류 유형 
    - EvalError : eval() 함수 관련 오류
    - InternalError : 자바스크립트 엔진 내부 오류
    - RangeError : 숫자/매개변수 범위가 유효하지 않음
    - ReferenceError : 참조 오류
    - SyntaxError : 구문 오류
    - TypeError : 변수/매개변수의 자료형이 유효하지 않음
    - URIError : encode/decode URI 의 매개변수 부적절
    
    
  #### 4. redirect와 forward 방식의 차이
  
    - JSP에서 페이지 전환 기능
    - forward : web container 차원에서의 페이지 이동
      -> 이동한 페이지의 URL 정보 확인 불가
      -> 현재 실행중인 페이지와 이동되는 페이지는 servlet 객체(request, response) 서로 공유
         (이전 페이지에서 받았던 요청 정보 그대로 전달)
      -> 동일한 web container 내에 있는 페이지로만 이동 가능
    - redirect : web container가 웹브라우저에 페이지 이동 지시
      -> 이동한 페이지로 URL 정보 변경
      -> servlet 객체(request, response) 새롭게 생성
      -> 다른 web container에 있는 페이지로 이동 가능
  
  #### 5. 데이터 송수신 과정에서 오류가 없는데 화면에 출력되지 않는 경우 JSTL 설정이 되어있지 않은 경우가 대부분
  
    👉 JSTL 사용하기 전에 해당 JSP 파일 상단 먼저 확인하기
    
  #### 6. FAQ 검색 결과를 출력하는 화면에서 페이지네이션을 ajax로 할 때 url을 어떻게 설정해야하는지 고민
  
    - list.do에서 ajax로 find.do를 실행시켜서 결과값을 받아옴
    - list.do를 실행시키면 검색어 검색 결과가 초기화됨
    - find.do를 실행시키면 list.do의 폼 없이 데이터만 들어옴
    👉 list.do와 find.do를 이중으로 실행시켜 데이터를 받아오면 정상적으로 다음 페이지로 이동
<br>
    
> 예약

  #### 1. ajax 데이터 전송 오류
  
    - 예약 과정에서 클릭 이벤트로 연결된 데이터 ajax를 통해 전송
      main -> list -> date -> time -> pers -> submit
      -> main 초기 설정된 geno 정보를 바탕으로 이후 과정들에 대한 ajax는 정상 실행,
         exhib을 재선택하여 main에 보내진 데이터를 초기화하려고 했을 때 달력 동기화가 진행되지 않음
      -> geno 데이터만 필요한 list.do는 정상 작동
         main.do의 실행 결과인 month 변수가 필요한 date.do는 비정상 작동
      -> ajax의 경우 비동기 방식이어서 post에 담긴 정보가 아닌 경우 바로 적용되지 않는 것으로 보임
    👉 데이터 전송 방식을 링크로 설정하여 해결
    
    
  * 자바스크립트에서의 화면 이동 
    - location.href -> GET 방식
  * 데이터 전송 방식
    - post : form 태그, ajax(type:post)
    - get : a 태그, 자바스크립트 location 
