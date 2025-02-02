<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%-- ----------------------- CDN ----------------------- --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>

<style>
/* ------------ 기준 ------------ */
body {
	font-size: 20px;
}
/* ------------ 전체 크기 --------- */
.registerBox {
	width: 30rem;
	height: 100%;
	margin-top: 7rem;
	margin-bottom : 9rem;
	margin-left: auto;
	margin-right: auto;
}
/* ******** 회원가입 Title ******** */
.registerTitle {
	margin-bottom: 0.3rem;
}

.registerTitle h2{
	font-size: 1.8rem;
	letter-spacing: 0.4rem;	
}
/* ******** 정보 기입창 크기 ******** */
.registerBox input {
	width: 100%;
	height: 3rem;
	padding-left: 1.5rem;
}

.blank {
	height: 1.7rem;
}
/* ------------ 휴대폰 인증 -------- */
.confirmPhone {
	padding-right: 0;
}

.registerBox .row button {
	width: 85%;
	height: 3rem;
}
/* ------------ 가입 버튼 --------- */
#signupBtn {
	width: 100%;;
	height: 3rem;
	margin-bottom: 0.5rem;
}
/* ------------ 약관 ------------ */
.enrollmentPolicy {
	text-align: center;
}

.enrollmentPolicy p {
	margin-bottom: 0;
}

.enrollmentPolicy a {
	text-decoration: none;
	color: black;
}

/* ------------ 이용약관 모달 ----- */
#enrollmentPolicy .modal-dialog {
	margin-top: 7rem;
	margin-bottom: 7rem;
	height: auto;
	margin-bottom: 7rem;
}

#enrollmentPolicy .modal-content {
	height: 100%;
}

#enrollmentPolicy .modal-content .modal-body {
	margin-top: 1rem;
	margin-bottom: 2rem;
	font-size: 1rem;
	color: #424242;
}

</style>
</head>
<body>
	<div class="container">
		<%-- *************************** header *************************** --%>
		<div class=header>
			<jsp:include page="/WEB-INF/views/frame/header.jsp"></jsp:include>
		</div>

		<%-- *************************** 회원가입 폼 *************************** --%>
		<div class="registerBox">

			<!-- 타이틀 -->
			<form id="signupForm" action="/member/signUp" method="post">
				<div class="row registerTitle">
					<div class="col-12 d-flex justify-content-center">
						<h2>회원가입</h2>
					</div>
				</div>

				<!-- 이름 -->
				<div class="row">
					<div class="col p-0">
						<input type="text" name="name" id="name" class="form-control"
							placeholder="이름">
					</div>
				</div>
				<%-- 빈칸 --%>
				<div class="row blankBox">
					<div class="col p-0">
						<div class="blank" id="blank1"></div>
					</div>
				</div>
				<%-- 알림정보 --%>
				<div class="row clsCheckInfo">
					<div class="col p-0">
						<div id="checkName"></div>
					</div>
				</div>
				<!-- End -->

				<!-- 이메일 -->
				<div class="row">
					<div class="col-12 p-0">
						<input type="text" name="email" id="email" class="form-control"
							placeholder="아이디 (aaa123@gmail.com)">
					</div>
				</div>
				<%-- 빈칸 --%>
				<div class="row blankBox">
					<div class="col-12 p-0">
						<div class="blank" id="blank2"></div>
					</div>
				</div>
				<%-- 알림정보 --%>
				<div class="row clsCheckInfo">
					<div class="col-12 p-0">
						<div id="checkEmail"></div>
					</div>
				</div>
				<!-- End -->

				<!-- 비밀번호 -->
				<div class="row">
					<div class="col p-0">
						<input type="password" name="password" id="password"
							class="form-control" placeholder="비밀번호">
					</div>
				</div>
				<%-- 빈칸 --%>
				<div class="row blankBox">
					<div class="col-12 p-0">
						<div class="blank" id="blank3"></div>
					</div>
				</div>
				<%-- 알림정보 --%>
				<div class="row clsCheckInfo">
					<div class="col-12 p-0">
						<div id="checkPw"></div>
					</div>
				</div>
				<!-- End -->

				<!-- 비밀번호 확인 -->
				<div class="row">
					<div class="col p-0">
						<input type="password" id="confirmPw" class="form-control"
							placeholder="비밀번호 확인">
					</div>
				</div>
				<%-- 빈칸 --%>
				<div class="row blankBox">
					<div class="col-12 p-0">
						<div class="blank" id="blank4"></div>
					</div>
				</div>
				<%-- 알림정보 --%>
				<div class="row clsCheckInfo">
					<div class="col-12 p-0">
						<div id="checkPw2"></div>
					</div>
				</div>
				<!-- End -->

				<!-- 닉네임 -->
				<div class="row">
					<div class="col-12 p-0">
						<input type="text" name="nickname" id="nickname"
							class="form-control" placeholder="닉네임">
					</div>
				</div>
				<%-- 빈칸 --%>
				<div class="row blankBox">
					<div class="col-12 p-0">
						<div class="blank" id="blank5"></div>
					</div>
				</div>
				<%-- 알림정보 --%>
				<div class="row clsCheckInfo">
					<div class="col-12 p-0">
						<div id="checkNickname"></div>
					</div>
				</div>
				<!-- End -->

				<!-- 휴대폰 번호 -->
				<div class="row">
					<div class="col-9 p-0">
						<input type="text" name="phone" id="phone" class="form-control"
							placeholder="휴대번호">
					</div>
					<div class="col-3 confirmPhone p-0 d-flex justify-content-end">
						<button type="button" id="verifyPhoneBtn"
							class="btn btn-outline-secondary">인증하기</button>
					</div>
				</div>
				<%-- 빈칸 --%>
				<div class="row blankBox">
					<div class="col-12 p-0">
						<div class="blank" id="blank6"></div>
					</div>
				</div>
				<%-- 알림정보 --%>
				<div class="row clsCheckInfo">
					<div class="col-12 p-0">
						<div id="checkPhone"></div>
					</div>
				</div>
				<!-- End -->

				<%-- 인증번호 발송 --%>
				<div class="verifyPhone d-none">
					<div class="row">
						<div class="col-9 p-0 d-flex justify-content-end">
							<input type="text" class="form-control" id="verifyNum"
								maxlength="4" placeholder="인증번호">
						</div>
						<div class="col-3 checkPhone p-0">
							<button type="button" id="completeBtn"
								class="btn btn-outline-secondary">확인</button>
						</div>
					</div>
					<%-- 빈칸 --%>
					<div class="row blankBox">
						<div class="col-12 p-0">
							<div class="blank" id="blank7"></div>
						</div>
					</div>
					<%-- 알림정보 --%>
					<div class="row clsCheckInfo">
						<div class="col-12 p-0">
							<div id="checkNum"></div>
						</div>
					</div>
				</div>
				<!-- End -->

				<!-- 제출 버튼 -->
				<div class="submitBtn row">
					<button type="button" id="signupBtn"
						class="btn btn-outline-secondary">가입하기</button>
				</div>
			</form>

			<!-- 이용 약관 버튼-->
			<div class="row enrollmentPolicy">
				<p>
					가입하시면 <a href="#enrollmentPolicy" data-bs-toggle="modal"
						data-bs-target="#enrollmentPolicy">이용약관</a>에 동의하시게 됩니다
				</p>
			</div>

			<!-- 이용 약관 모달 -->
			<div class="modal fade" id="enrollmentPolicy" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<!-- 모달 타이틀 -->
						<div class="modal-header">
							<div class="col d-flex justify-content-center">
								<h3 class="modal-title">이용약관</h3>
							</div>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<!-- 모달 컨텐츠 -->
						<div class="modal-body">
							제1조 목적<br> <br> 본 이용약관은 "북적북적커뮤니티”(이하 "사이트")의 서비스의
							이용조건과 운영에 관한 제반사항 규정을 목적으로 합니다.<br> <br> 제2조 용어의 정의<br>
							<br> 본 약관에서 사용되는 주요한 용어의 정의는 다음과 같습니다.<br> <br> ①
							회원 : 사이트의 약관에 동의하고 개인정보를 제공하여 회원등록을 한 자로서, 사이트와의 이용계약을 체결하고 사이트를
							이용하는 이용자를 말합니다.<br> ② 이용계약 : 사이트 이용과 관련하여 사이트와 회원간에 체결 하는
							계약을 말합니다.<br> ③ 회원 아이디(이하 "ID") : 회원의 식별과 회원의 서비스 이용을 위하여
							회원별로 부여하는 고유한 문자와 숫자의 조합을 말합니다.<br> ④ 비밀번호 : 회원이 부여받은 ID와
							일치된 회원임을 확인하고 회원의 권익보호를 위하여 회원이 선정한 문자와 숫자의 조합을 말합니다.<br> ⑤
							운영자 : 서비스에 홈페이지를 개설하여 운영하는 운영자를 말합니다.<br> ⑥ 해지 : 회원이 이용계약을
							해약하는 것을 말합니다.<br> <br> 제3조 약관외 준칙<br> <br>
							운영자는 필요한 경우 별도로 운영정책을 공지 안내할 수 있으며, 본 약관과 운영정책이 중첩될 경우 운영정책이 우선
							적용됩니다.<br> <br> 제4조 이용계약 체결<br> <br> ① 이용계약은
							회원으로 등록하여 사이트를 이용하려는 자의 본 약관 내용에 대한 동의와 가입신청에 대하여 운영자의 이용승낙으로
							성립합니다.<br> ② 회원으로 등록하여 서비스를 이용하려는 자는 사이트 가입신청시 본 약관을 읽고 아래에
							있는 "동의합니다"를 선택하는 것으로 본 약관에 대한 동의 의사 표시를 합니다.<br> <br>
							제5조 서비스 이용 신청<br> <br> ① 회원으로 등록하여 사이트를 이용하려는 이용자는
							사이트에서 요청하는 제반정보(이용자ID,비밀번호, 닉네임 등)를 제공해야 합니다.<br> ② 타인의 정보를
							도용하거나 허위의 정보를 등록하는 등 본인의 진정한 정보를 등록하지 않은 회원은 사이트 이용과 관련하여 아무런 권리를
							주장할 수 없으며, 관계 법령에 따라 처벌 받을 수 있습니다.<br> <br> 제6조
							개인정보처리방침<br> <br> 사이트 및 운영자는 회원가입시 제공한 개인정보 중 비밀번호를 가지고
							있지 않으며 이와 관련된 부분은 사이트의 개인정보처리방침을 따릅니다.<br> 운영자는 관계법령이 정하는 바에
							따라 회원등록정보를 포함한 회원의 개인정보를 보호하기 위하여 노력을 합니다.<br> <br> 회원의
							개인정보보호에 관하여 관계법령 및 사이트가 정하는 개인정보처리방침에 정한 바에 따릅니다.<br> <br>
							단, 회원의 귀책사유로 인해 노출된 정보에 대해 운영자는 일체의 책임을 지지 않습니다.<br> 운영자는
							회원이 미풍양속에 저해되거나 국가안보에 위배되는 게시물 등 위법한 게시물을 등록 · 배포할 경우 관련기관의 요청이
							있을시 회원의 자료를 열람 및 해당 자료를 관련기관에 제출할 수 있습니다.<br> <br> 제7조
							운영자의 의무<br> <br> ① 운영자는 이용회원으로부터 제기되는 의견이나 불만이 정당하다고
							인정할 경우에는 가급적빨리 처리하여야 합니다. 다만, 개인적인 사정으로 신속한 처리가 곤란한 경우에는 사후에공지 또는
							이용회원에게 쪽지, 전자우편 등을 보내는 등 최선을 다합니다.<br> ② 운영자는 계속적이고 안정적인 사이트
							제공을 위하여 설비에 장애가 생기거나 유실된 때에는 이를 지체 없이 수리 또는 복구할 수 있도록 사이트에 요구할 수
							있습니다. 다만, 천재지변 또는 사이트나 운영자에 부득이한 사유가 있는 경우, 사이트 운영을 일시 정지할 수
							있습니다.<br> <br> 제8조 회원의 의무<br> <br> ① 회원은 본
							약관에서 규정하는 사항과 운영자가 정한 제반규정, 공지사항 및 운영정책 등 사이트가 공지하는 사항 및 관계법령을
							준수하여야 하며, 기타 사이트의 업무에 방해가 되는 행위, 사이트의 명예를 손상시키는 행위를 해서는 안됩니다.<br>
							② 회원은 사이트의 명시적 동의가 없는 한 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도, 증여할 수
							없으며, 이를 담보로 제공할 수 없습니다.<br> ③ 이용고객은 아이디 및 비밀번호 관리에 상당한 주의를
							기울여야 하며, 운영자나 사이트의 동의 없이 제3자에게 아이디를 제공하여 이용하게 할 수 없습니다.<br>
							④ 회원은 운영자와 사이트 및 제3자의 지적 재산권을 침해해서는 안됩니다.<br> <br> 제9조
							서비스 이용시간<br> <br> ① 서비스 이용시간은 업무상 또는 기술상 특별한 지장이 없는 한
							연중무휴 1일 24시간을 원칙으로 합니다. 단, 사이트는 시스템 정기점검, 증설 및 교체를 위해 사이트가 정한 날이나
							시간에 서비스를 일시중단 할 수 있으며 예정된 작업으로 인한 서비스 일시 중단은 사이트의 홈페이지에 사전에 공지하오니
							수시로 참고하시길 바랍니다.<br> ② 단, 사이트는 다음 경우에 대하여 사전 공지나 예고없이 서비스를
							일시적 혹은 영구적으로 중단할 수 있습니다.<br> - 긴급한 시스템 점검, 증설, 교체, 고장 혹은
							오동작을 일으키는 경우<br> - 국가비상사태, 정전, 천재지변 등의 불가항력적인 사유가 있는 경우<br>
							- 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지한 경우<br> - 서비스 이용의 폭주
							등으로 정상적인 서비스 이용에 지장이 있는 경우<br> ③ 전항에 의한 서비스 중단의 경우 사이트는 사전에
							공지사항 등을 통하여 회원에게 통지 합니다. 단, 사이트가 통제할 수 없는 사유로 발생한 서비스의 중단에 대하여
							사전공지가 불가능한 경우에는 사후공지로 대신합니다.<br> <br> 제10조 서비스 이용 해지<br>
							<br> ① 회원이 사이트와의 이용계약을 해지하고자 하는 경우에는 회원 본인이 온라인을 통하여 등록해지신청을
							하여야 합니다. 한편, 사이트 이용해지와 별개로 사이트에 대한 이용계약 해지는 별도로 하셔야 합니다.<br>
							② 해지신청과 동시에 사이트가 제공하는 사이트 관련 프로그램이 회원관리 화면에서 자동적으로 삭제됨으로 운영자는 더
							이상 해지신청자의 정보를 볼 수 없습니다.<br> <br> 제11조 서비스 이용 제한<br>
							<br> 회원은 다음 각 호에 해당하는 행위를 하여서는 아니되며 해당 행위를 한 경우에 사이트는 회원의
							서비스 이용 제한 및 적법한 조치를 취할 수 있으며 이용계약을 해지하거나 기간을 정하여 서비스를 중지할 수 있습니다.<br>
							① 회원 가입시 혹은 가입 후 정보 변경시 허위 내용을 등록하는 행위<br> ② 타인의 사이트 이용을
							방해하거나 정보를 도용하는 행위<br> ③ 사이트의 운영진, 직원 또는 관계자를 사칭하는 행위<br>
							④ 사이트, 기타 제3자의 인격권 또는 지적재산권을 침해하거나 업무를 방해하는 행위<br> ⑤ 다른 회원의
							ID를 부정하게 사용하는 행위<br> ⑥ 다른 회원에 대한 개인정보를 그 동의 없이 수집, 저장, 공개하는
							행위<br> ⑦ 범죄와 결부된다고 객관적으로 판단되는 행위<br> ⑧ 기타 관련 법령에 위배되는
							행위<br> <br> 제12조 게시물의 관리<br> <br> ① 사이트의 게시물과
							자료의 관리 및 운영의 책임은 운영자에게 있습니다. 운영자는 항상 불량 게시물 및 자료에 대하여 모니터링을 하여야
							하며, 불량 게시물 및 자료를 발견하거나 신고를 받으면 해당 게시물 및 자료를 삭제하고 이를 등록한 회원에게 주의를
							주어야 합니다.<br> 한편, 이용회원이 올린 게시물에 대해서는 게시자 본인에게 책임이 있으니 회원스스로 본
							이용약관에서 위배되는 게시물은 게재해서된 안됩니다.<br> ② 정보통신윤리위원회 등 공공기관의 시정요구가
							있는 경우 운영자는 회원의 사전동의 없이 게시물을 삭제하거나 이동 할 수 있습니다.<br> ③ 불량게시물의
							판단기준은 다음과 같습니다.<br> - 다른 회원 또는 제3자에게 심한 모욕을 주거나 명예를 손상시키는
							내용인 경우<br> - 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우<br> -
							불법복제 또는 해킹을 조장하는 내용인 경우<br> - 영리를 목적으로 하는 광고일 경우<br> -
							범죄와 결부된다고 객관적으로 인정되는 내용일 경우<br> - 다른 이용자 또는 제3자와 저작권 등 기타
							권리를 침해하는 경우<br> - 기타 관계법령에 위배된다고 판단되는 경우<br> ④ 사이트 및
							운영자는 게시물 등에 대하여 제3자로부터 명예훼손, 지적재산권 등의 권리 침해를 이유로 게시중단 요청을 받은 경우
							이를 임시로 게시중단(전송중단)할 수 있으며, 게시중단 요청자와 게시물 등록자 간에 소송, 합의 기타 이에 준하는
							관련기관의 결정 등이 이루어져 사이트에 접수된 경우 이에 따릅니다.<br> <br> 제13조
							게시물의 보관<br> <br> 사이트 운영자가 불가피한 사정으로 본 사이트를 중단하게 될 경우,
							회원에게 사전 공지를 하고 게시물의 이전이 쉽도록 모든 조치를 취하기 위해 노력합니다.<br> <br>
							제14조 게시물에 대한 저작권<br> <br> ① 회원이 사이트 내에 게시한 게시물의 저작권은
							게시한 회원에게 귀속됩니다. 또한 사이트는 게시자의 동의 없이 게시물을 상업적으로 이용할 수 없습니다. 다만 비영리
							목적인 경우는 그러하지 아니하며, 또한 서비스 내의 게재권을 갖습니다.<br> ② 회원은 서비스를 이용하여
							취득한 정보를 임의 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.<br>
							③ 운영자는 회원이 게시하거나 등록하는 사이트 내의 내용물, 게시 내용에 대해 제12조 각 호에 해당된다고 판단되는
							경우 사전통지 없이 삭제하거나 이동 또는 등록 거부할 수 있습니다.<br> <br> 제15조
							손해배상<br> <br> ① 본 사이트의 발생한 모든 민,형법상 책임은 회원 본인에게 1차적으로
							있습니다.<br> ② 본 사이트로부터 회원이 받은 손해가 천재지변 등 불가항력적이거나 회원의 고의 또는
							과실로 인하여 발생한 때에는 손해배상을 하지 하지 않습니다.<br> <br> 제16조 면책<br>
							<br> ① 운영자는 회원이 사이트의 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한
							취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.<br> ② 운영자는 본 사이트의
							서비스 기반 및 타 통신업자가 제공하는 전기통신서비스의 장애로 인한 경우에는 책임이 면제되며 본 사이트의 서비스
							기반과 관련되어 발생한 손해에 대해서는 사이트의 이용약관에 준합니다<br> ③ 운영자는 회원이 저장, 게시
							또는 전송한 자료와 관련하여 일체의 책임을 지지 않습니다.<br> ④ 운영자는 회원의 귀책사유로 인하여
							서비스 이용의 장애가 발생한 경우에는 책임지지 아니합니다.<br> ⑤ 운영자는 회원 상호간 또는 회원과
							제3자 상호간, 기타 회원의 본 서비스 내외를 불문한 일체의 활동(데이터 전송, 기타 커뮤니티 활동 포함)에 대하여
							책임을 지지 않습니다.<br> ⑥ 운영자는 회원이 게시 또는 전송한 자료 및 본 사이트로 회원이 제공받을 수
							있는 모든 자료들의 진위, 신뢰도, 정확성 등 그 내용에 대해서는 책임지지 아니합니다.<br> ⑦ 운영자는
							회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 하여 물품거래 등을 한 경우에 그로부터 발생하는 일체의
							손해에 대하여 책임지지 아니합니다.<br> ⑧ 운영자는 시삽의 귀책사유 없이 회원간 또는 회원과 제3자간에
							발생한 일체의 분쟁에 대하여 책임지지 아니합니다.<br> ⑨ 운영자는 서버 등 설비의 관리, 점검, 보수,
							교체 과정 또는 소프트웨어의 운용 과정에서 고의 또는 고의에 준하는 중대한 과실 없이 발생할 수 있는 시스템의 장애,
							제3자의 공격으로 인한 시스템의 장애, 국내외의 저명한 연구기관이나 보안관련 업체에 의해 대응방법이 개발되지 아니한
							컴퓨터 바이러스 등의 유포나 기타 운영자가 통제할 수 없는 불가항력적 사유로 인한 회원의 손해에 대하여 책임지지
							않습니다.<br> <br> 부칙<br> <br> 이 약관은 2022년 7월 8일
							부터 시행합니다.<br>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%-- *************************** footer *************************** --%>
		<div class=footer>
			<jsp:include page="/WEB-INF/views/frame/footer.jsp"></jsp:include>
		</div>
	</div>



	<script>
		/* *********** 휴대폰 본인확인 ************** */
		// 보안문자 4자리 받을 변수
		let verifyNum = "";

		// 인증번호 발송 버튼 눌렀을 때
		$("#verifyPhoneBtn").on("click", function() {

			let regexPhone = /^[0-9]{11}$/;
			let phone = $("#phone").val();

			if (!regexPhone.test(phone) || phone === "") {
				alert("휴대폰 번호를 정확히 입력해주세요");
				return false;

			} else {
				alert("입력하신 번호로 인증번호가 발송되었습니다.");
				$(".verifyPhone").removeClass("d-none");
				console.log($("#phone").val());
				verifyNum = "2222";
				console.log(verifyNum);

				/* 핸드폰 본인인증		
				$.ajax({
					type : "post",
					url : "/member/phoneCheck",
					data : {
						phone : $("#phone").val()
					},
					async : false,
					cache : false,
					success : function(data) {
						console.log(data);
						verifyNum = data;
					},
					error : function(e) {
						console.log(e);
					}
				});
				 */
			}
		});

		// 인증번호 확인
		let verifyNum2 = "";

		$("#completeBtn").on("click", function() {

			let regexNum = /^[0-9]{4}$/;
			let verifyPhone = $("#verifyNum").val();

			if (!regexNum.test(verifyPhone) || $("#verifyNum").val() === "") {
				alert("정확한 번호를 입력해주세요");
				return false;
			} else if ($("#verifyNum").val() !== verifyNum) {
				alert("정확한 번호를 입력해주세요");
				return false;
			} else { // 인증 완료
				alert("확인되었습니다");

				// 본인인증 css 변경
				$(".verifyPhone").css("display", "none");
				$("#phone").attr("readonly", true);
				$("#verifyPhoneBtn").html("인증완료");
				$("#verifyPhoneBtn").attr({
					"type" : "input",
					"disabled" : true
				});

				return verifyNum2 = "available";
			}
			;
		});

		/* *********** 유효성 검사 _ 제출시 검사 ************** */

		$("#signupBtn")
				.on(
						"click",
						function() {

							// regex
							let regexName = /^[a-zA-Z가-힣]{2,6}$/;
							let regexEmail = /^[a-zA-Z0-9][\w]+@[a-zA-z]+\.(com|net|co\.kr|or\.kr)$/;
							let regexPw = /^[a-zA-Z0-9~!@#$]{6,12}$/;
							let regexNickname = /^[a-zA-Z0-9ㄱ-힣]{2,10}$/;
							let regexPhone = /^[0-9]{11}$/;
							let regexNum = /^[0-9]{4}$/;

							// value 값
							let name = $("#name").val();
							let email = $("#email").val();
							let pw = $("#password").val();
							let nickname = $("#nickname").val();
							let phone = $("#phone").val();
							let verifyPhone = $("#verifyNum").val();

							if (!regexName.test(name) || name === "") { //이름
								alert("이름을 정확히 입력해주세요");
								$("#name").focus();
								return false;

							} else if (!regexEmail.test(email) || email === "") { // 이메일 (아이디)
								alert("아이디는 이메일 형식으로 정확히 작성해주세요");
								$("#email").focus();
								return false;

							} else if ($("#checkEmail").html() === "사용불가능한 이메일입니다.") { // 이메일 중복체킹
								alert("이메일이 중복되었습니다");
								$("#email").focus();
								return false;

							} else if (!regexPw.test(pw) || pw === "") { // 비밀번호
								alert("비밀번호를 형식에 맞게 작성해주세요")
								$("#password").focus();
								return false;

							} else if ($("#confirmPw").val() !== pw) { // 비밀번호 확인
								alert("비밀번호가 일치하지 않습니다.")
								$("#confirmPw").focus();
								return false;

							} else if (!regexNickname.test(nickname)
									|| nickname === "") { // 닉네임 유효성 검사
								alert("닉네임을 형식에 맞게 작성해주세요");
								$("#nickname").focus();
								return false;

							} else if ($("#checkNickname").html() === "중복된 닉네임입니다.") {// 닉네임 중복확인
								alert("닉네임이 중복되었습니다");
								$("#nickname").focus();
								return false;

							} else if (!regexPhone.test(phone) || phone === "") {// 핸드폰 번호
								alert("휴대폰 번호를 정확히 입력해주세요");
								$("#phone").focus();
								return false;

							} else if (!regexNum.test(verifyPhone)
									|| verifyPhone === "") {//본인인증 창 
								alert("인증번호를 입력해주세요");
								$("#verifyNum").focus();
								return false;

							} else if (verifyNum2 !== "available") {
								alert("인증번호를 정확히 입력해주세요");
								console.log("a");
								$("#verifyNum").focus();
								return false;

							}

							$("#signupForm").submit();

						});

		/* *********** input창 아래 style ************** */

		// ------------ 이름 ------------ 
		// focusIn
		$("#name").focus(function() {
			$("#blank1").css("display", "none");
			$("#checkName").html("한글 및 영문으로 2~6자 이내로 작성해주세요");
			$("#checkName").css({
				"color" : "#6E6E6E",
				"font-size" : "0.9rem",
				"padding-top" : "0.29rem",
				"padding-bottom" : "0.29rem",
				"padding-left" : "1rem"
			});
		});
		// focusOut
		$("#name").blur(function() {
			$("#blank1").show();
			$("#checkName").html("");
			$("#checkName").css({
				"padding-top" : "0rem",
				"padding-bottom" : "0rem"
			});
		});

		//  ------------ 이메일 ------------ 
		// focusIn
		$("#email").focus(function() {
			$("#blank2").css("display", "none");
			$("#checkEmail").html("이메일 형식으로 아이디를 작성해주세요");
			$("#checkEmail").css({
				"color" : "#6E6E6E",
				"font-size" : "0.9rem",
				"padding-top" : "0.29rem",
				"padding-bottom" : "0.29rem",
				"padding-left" : "1rem"
			});

		});

		// focusOut
		$("#email")
				.blur(
						function() {

							let regexEmail = /^[a-zA-Z0-9][\w]+@[a-zA-z]+\.(com|net|co\.kr|or\.kr)$/;
							let email = $("#email").val();

							if (!regexEmail.test(email) || email === "") {
								$("#blank2").css("display", "none");
								$("#checkEmail").html("이메일 형식으로 아이디를 작성해주세요");
								$("#checkEmail").css({
									"color" : "#6E6E6E",
									"font-size" : "0.9rem",
									"padding-top" : "0.29rem",
									"padding-bottom" : "0.29rem",
									"padding-left" : "1rem"
								});
							} else {
								$
										.ajax({
											url : "/member/confirmEmail",
											type : "get",
											data : {
												email : $("#email").val()
											},
											success : function(data) {
												if (data == "available") {
													$("#blank2").css("display",
															"none");
													$("#checkEmail").html(
															"사용가능한 이메일입니다.");
													$("#checkEmail")
															.css(
																	{
																		"color" : "#548B5B",
																		"font-size" : "0.9rem",
																		"padding-top" : "0.29rem",
																		"padding-bottom" : "0.29rem",
																		"padding-left" : "1rem"
																	});
												} else if (data == "unavailable") {
													$("#blank2").css("display",
															"none");
													$("#checkEmail").html(
															"사용불가능한 이메일입니다.");
													$("#checkEmail")
															.css(
																	{
																		"color" : "#D33C31",
																		"font-size" : "0.9rem",
																		"padding-top" : "0.29rem",
																		"padding-bottom" : "0.29rem",
																		"padding-left" : "1rem"
																	});
												}
											},
											error : function(e) {
												console.log(e);
											}
										})
							}
						});

		// ------------ 비밀번호 ------------ 
		// focusIn
		$("#password").focus(function() {
			$("#blank3").css("display", "none");
			$("#checkPw").html("대소문자, 숫자, 특수문자(~!@#$)를 이용해 6~12자로 작성해주세요");
			$("#checkPw").css({
				"color" : "#6E6E6E",
				"font-size" : "0.9rem",
				"padding-top" : "0.29rem",
				"padding-bottom" : "0.29rem",
				"padding-left" : "1rem"
			});
		});
		// focusOut
		$("#password").blur(function() {
			$("#blank3").show();
			$("#checkPw").html("");
			$("#checkPw").css({
				"padding-top" : "0rem",
				"padding-bottom" : "0rem"
			});
		});

		// ------------ 비밀번호 확인 ------------ 
		// focusIn
		$("#confirmPw").focus(
				function() {
					$("#blank4").css("display", "none");

					// 입력 시 확인 _ keyup
					$("#confirmPw").keyup(
							function() {
								if ($("#confirmPw").val() === ""
										|| $("#password").val() !== $(
												"#confirmPw").val()) {
									$("#checkPw2").html("정확한 비밀번호를 입력해주세요");
									$("#checkPw2").css({
										"color" : "#D33C31",
										"font-size" : "0.9rem",
										"padding-top" : "0.29rem",
										"padding-bottom" : "0.29rem",
										"padding-left" : "1rem"
									});
								} else {
									$("#checkPw2").html("일치합니다");
									$("#checkPw2").css({
										"color" : "#548B5B",
										"font-size" : "0.9rem",
										"padding-top" : "0.29rem",
										"padding-bottom" : "0.29rem",
										"padding-left" : "1rem"
									});
								}
							});

					// 입력 후 확인
					if ($("#confirmPw").val() === "") {
						$("#checkPw2").html("비밀번호를 입력해주세요");
						$("#checkPw2").css({
							"color" : "#D33C31",
							"font-size" : "0.9rem",
							"padding-top" : "0.29rem",
							"padding-bottom" : "0.29rem",
							"padding-left" : "1rem"
						});
					} else if ($("#password").val() !== $("#confirmPw").val()) {
						$("#checkPw2").html("일치하지 않습니다");
						$("#checkPw2").css({
							"color" : "#D33C31",
							"font-size" : "0.9rem",
							"padding-top" : "0.29rem",
							"padding-bottom" : "0.29rem",
							"padding-left" : "1rem"
						});
					} else {
						$("#checkPw2").html("일치합니다");
						$("#checkPw2").css({
							"color" : "#548B5B",
							"font-size" : "0.9rem",
							"padding-top" : "0.29rem",
							"padding-bottom" : "0.29rem",
							"padding-left" : "1rem"
						});
					}

				});

		// focusOut
		$("#confirmPw").blur(function() {
			$("#blank4").show();
			$("#checkPw2").html("");
			$("#checkPw2").css({
				"padding-top" : "0rem",
				"padding-bottom" : "0rem"
			});
		});

		//  ------------ 닉네임 ------------ 
		// focusIn
		$("#nickname").focus(function() {
			$("#blank5").css("display", "none");
			$("#checkNickname").html("한글 및 영문으로 2~10자 이내로 작성해주세요");
			$("#checkNickname").css({
				"color" : "#6E6E6E",
				"font-size" : "0.9rem",
				"padding-top" : "0.29rem",
				"padding-bottom" : "0.29rem",
				"padding-left" : "1rem"
			});
		});

		// focusOut
		$("#nickname").blur(function() {

			let regexNickname = /^[a-zA-Z0-9ㄱ-힣]{2,10}$/;
			let nickname = $("#nickname").val();

			if (!regexNickname.test(nickname) || nickname === "") {
				$("#blank5").css("display", "none");
				$("#checkNickname").html("한글 및 영문으로 2~10자 이내로 작성해주세요");
				$("#checkNickname").css({
					"color" : "#6E6E6E",
					"font-size" : "0.9rem",
					"padding-top" : "0.29rem",
					"padding-bottom" : "0.29rem",
					"padding-left" : "1rem"
				});
			} else {
				$.ajax({
					url : "/member/confirmNickname",
					type : "get",
					data : {
						nickname : $("#nickname").val()
					},
					success : function(data) {
						if (data == "available") {
							$("#blank5").css("display", "none");
							$("#checkNickname").html("사용가능한 닉네임입니다.");
							$("#checkNickname").css({
								"color" : "#548B5B",
								"font-size" : "0.9rem",
								"padding-top" : "0.29rem",
								"padding-bottom" : "0.29rem",
								"padding-left" : "1rem"
							});
						} else if (data == "unavailable") {
							$("#blank5").css("display", "none");
							$("#checkNickname").html("중복된 닉네임입니다.");
							$("#checkNickname").css({
								"color" : "#D33C31",
								"font-size" : "0.9rem",
								"padding-top" : "0.29rem",
								"padding-bottom" : "0.29rem",
								"padding-left" : "1rem"
							});

						}
					},
					error : function(e) {
						console.log(e);
					}
				})
			}
			;
		});

		//  ------------ 휴대폰 ------------ 
		// focusIn
		$("#phone").focus(function() {
			$("#blank6").css("display", "none");
			$("#checkPhone").html("'-'없이 핸드폰 번호 11자리를 입력해주세요");
			$("#checkPhone").css({
				"color" : "#6E6E6E",
				"font-size" : "0.9rem",
				"padding-top" : "0.29rem",
				"padding-bottom" : "0.29rem",
				"padding-left" : "1rem"
			});
		})
		// focusOut
		$("#phone").blur(function() {
			$("#blank6").show();
			$("#checkPhone").html("");
			$("#checkPhone").css({
				"padding-top" : "0rem",
				"padding-bottom" : "0rem"
			});
		});

		//  ------------ 휴대폰 인증번호 ------------ 
		// focusIn
		$("#verifyNum").focus(function() {
			$("#blank7").css("display", "none");
			$("#checkNum").html("인증번호를 입력해주세요");
			$("#checkNum").css({
				"color" : "#6E6E6E",
				"font-size" : "0.9rem",
				"padding-top" : "0.29rem",
				"padding-bottom" : "0.29rem",
				"padding-left" : "1rem"
			});
		})
		// foucusOut
		$("#verifyNum").blur(function() {
			$("#blank7").show();
			$("#checkNum").html("");
			$("#checkNum").css({
				"padding-top" : "0rem",
				"padding-bottom" : "0rem"
			});
		});
	</script>
</html>