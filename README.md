# TriView
> 여행 플래너 프로젝트
개인의 경험들을 참고해 일정을 기획할 수 있는 여행 플래너의 필요성을 느껴 프로젝트를 진행했습니다.

* 여행 플랜을 쉽게 만들고 저장할 수 있다.
* 회원 기능을 통해 내 여행플랜을 생성, 조회, 수정, 삭제할 수 있다.
* 메인 페이지에서 오늘의 날씨와 지역별 Google 추천 명소로 이동 할 수 있다.

![프로젝트 목표](https://user-images.githubusercontent.com/98367972/230643041-9d5f21f0-8fa7-45eb-bf6f-7bffc476c822.png)

# 사용방법
> 현재 구글 북마크를 바로 플래너에 가져올 수 있도록 수정중입니다.

## 1. 홈
> 오늘의 날씨와 일기예보를 확인하고, 지역별 Google 추천 명소 페이지로 이동할 수 있는 메인 홈입니다. 부트스트랩을 사용했습니다.

* 사이드바 - 회원정보, 새로운 일정추가 탭 이동
* 상단바 - 계정 정보 확인, 로그아웃 드롭바

![메인](https://user-images.githubusercontent.com/98367972/230643082-374fda9d-2157-461c-a46e-5dadcd5c56f1.png)

## 2. 회원가입
> 아이디 중복확인 체크를 구현했습니다.

![회원 가입](https://user-images.githubusercontent.com/98367972/230643085-06230c81-36eb-4bd9-bac6-9e01f0b4a805.png)

## 3. 로그인 / 로그아웃
> 아이디가 없거나 혹은 비밀번호가 일치하지 않으면 alert창을 띄우고, 로그아웃 시 세션에 저장된 ID값을 invalidate 함수로 무효화, 뒤로가기를 방지했습니다.

![로그인 로그아웃](https://user-images.githubusercontent.com/98367972/230643043-f34878bc-c69e-4ed3-8223-7c78d06a4247.png)

## 4. 회원정보 수정, 삭제
> select 쿼리문에서 session에 연결된 ID값을 통해 회원정보를 조회하고 수정, 삭제할 수 있습니다.

![회원정보 수정](https://user-images.githubusercontent.com/98367972/230643088-cbe334f9-6433-413e-9d97-27326ed60014.png)

## 5. 회원탈퇴
> input 된 아이디와 비밀번호가 DB에서 select된 정보와 일치해야만 DELETE 구문이 실행됩니다.

![회원 탈퇴](https://user-images.githubusercontent.com/98367972/230643091-7aa2dc7d-fdd2-43ed-a721-6f191bdf2eb1.png)

## 6. 여행 일정 추가하기
> DB에 여행일정(플래너)을 저장합니다. 체크인, 체크아웃 날짜는 date로 입력하고, select-option으로 여행지를 입력 할 수 있습니다.


![일정 생성](https://user-images.githubusercontent.com/98367972/230643051-a92438b4-9549-4e1c-a630-95ecab053008.png)

## 7. 여행 일정 조회하기(리스트, 본문)
> session에 저장된 id와 일치하는 여행일정을 조회하고, 본문은 Readonly로 설정했습니다.

![일정 리스트](https://user-images.githubusercontent.com/98367972/230643070-973e2b12-7542-4e84-8e02-dc36c4c100f6.png)

## 8. 여행 일정 수정하기
> 수정 전 목적지는 Readonly로 표시하고, 수정 후 다시 리스트로 돌아갑니다.

![일정 수정](https://user-images.githubusercontent.com/98367972/230643053-7736c213-2a0f-48d0-81e4-419348b80656.png)

## 9. 여행 일정 삭제하기
> 삭제 버튼을 클릭하면, DELETE 쿼리문이 실행됩니다.

![일정 삭제](https://user-images.githubusercontent.com/98367972/230643056-6fe8e742-5619-4049-9407-ce6fcd156cac.png)


# Project Structure

model1 구조로 개발했으며, 회원 기능과 게시판 CRUD를 구현했습니다.

> 개발언어 

* Java
* JavaScript
* JSP
* HTML
* CSS


> 개발도구

* Eclipse
* MYSQL v8.0 (Workbench)
* Tomcat v8.5

> API

* openWheatherMap api

> ERD
1. 회원정보 테이블 : 중복가입 방지(id, email UNIQUE 값)
2. 게시판 테이블(여행플래너 테이블)

![ERD](https://user-images.githubusercontent.com/98367972/230643076-008c58a9-4b90-4a2e-ab31-d5d42b726675.png)
