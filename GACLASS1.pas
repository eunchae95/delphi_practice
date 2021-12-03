                          ////////////////////////////////////////////////////////////////////////////////
// MIS CLASS Define                                                           //
//  HgeAcctmt	계정과목코드                                                    //
//  HgeExCode   타시스템 코드                                                 //
////////////////////////////////////////////////////////////////////////////////

unit GACLASS1;
        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, fml, atmi,
  ComCtrls, StdCtrls, FileCtrl, ExtCtrls, quickrpt, ComObj, UltraGrid,
  Excel97, IniFiles, Grids, Printers, OleServer, Gauges, NumEdit, mask,
  Variants;


type

////////////////////////////////////////////////////////
// 사원번호 채번
// 작성일 : 2004.07.21
// 작성자 : 문태용
// 관련 테이블 : GAAOTONOT
////////////////////////////////////////////////////////
  HgaCreEmpNo = class
    sLocate        : Variant;           // 사 업 장
    sLocate_Abbr   : Variant;           // 사업장 약식 코드
    sJob_Type      : Variant;           // 직종구분
    sNo_Year       : VAriant;           // 채번연도
    sMaxEmpNo      : Variant;           // 채번번호

    function CreateEmpNo(sLocate,sLocate_Abbr,sJob_Type,sNo_Year:string):Integer;
  end;
//======================================================
// 사원조회
// 작성일 : 2002.01.15
// 작성자 : 최종윤
// 관련 테이블 : GAINSAMT , CCCOMCDT, CCDEPTCT
//======================================================
  HgaInsab1  = class
  sPredeptcdnm        : Variant;
  sPrewkplace         : Variant;
  sPrewkplacenm       : Variant;
  sPrejikmu           : Variant;
  sPrejikmunm         : Variant;

    sConcuryn          : Variant;
    sDeptcdnm          : Variant;
    sAPocd             : Variant;
    sPredeptcd         : Variant;
    sPrewkarreacd      : Variant;
    sprewkarreacdnm    : Variant;
    sApocdnm           : Variant;
    sWkplacenm         : Variant;
    sDocno             : Variant;
    sApodate        : Variant;
    sEnddate         : Variant;
    sAcaname        : Variant;

    ssLocate       : Variant;         // 사업장(조회)
    ssDeptcd       : Variant;         // 부서코드
    ssEmpno        : Variant;         // 검색자 사번
    ssNewEmpno     : Variant;         // 새로운 사번
    ssResno        : Variant;         // 주민번호 20201118
    sAppgbn        : Variant;
    sAppseqno      : Variant;
    sAppempno      : Variant;
    ssRemark       : Variant;

    ssGubun        : Variant;         // 구분값(그때그때사용)

    sEmpno         : Variant;          // 개인번호
    sRemark        : Variant;
    sPincode       : Variant;
    sLocate        : Variant;          // 사 업 장
    sLocatenm      : Variant;          // 사 업 장명
    sEmpnm         : Variant;          // 성    명
    sEngnm         : Variant;          // 영문성명
    sHanmunnm      : Variant;          // 한문성명
    sResno         : Variant;          // 주민등록번호
    sBorndt        : Variant;          // 생년월일
    sSolucd        : Variant;          // 음양구분 (+양.-음)
    sSexcd         : Variant;          // 성별     (+남.-여)
    sJikjong       : Variant;          // 직종코드
    sJikjongnm     : Variant;          // 직종명
    sJikgup        : Variant;          // 직급코드
    sJikgupnm      : Variant;          // 직급명
    sJikmu         : Variant;          // 직무코드
    sJikmunm       : Variant;          // 직무명
    sJikchek       : Variant;          // 직책코드
    sJikcheknm     : Variant;          // 직책명
    sJikwe         : Variant;          // 직위코드
    sJikwenm       : Variant;          // 직위명
    sJikgun        : Variant;          // 직군코드
    sJikgunnm      : Variant;          // 직군명
    sHobong        : Variant;          // 호    봉
    sGubho         : Variant;          // 급    호
    sConType       : Variant;          // 계약형태
    sDeptcd        : Variant;          // 부서코드
    sDeptnm        : Variant;          // 부서명
    sWLocate       : Variant;          // 근무지 사업장코드
    sWkareacd      : Variant;          // 근 무 지
    sWkareanm      : Variant;          // 근 무 지명
    sEntdt         : Variant;          // 입 사 일
    sRetdt         : Variant;          // 퇴 사 일
    sMemyn         : Variant;          // 결혼구분
    sMemdt         : Variant;          // 기 념 일
    sHeadyn        : Variant;          // 가장여부
    sBohuntyp      : Variant;          // 보훈구분
    sBohungrd      : Variant;          // 보훈등급
    sBohunno       : Variant;          // 보훈번호
    sBohunorg      : Variant;          // 보훈지청
    sJangtyp       : Variant;          // 장애구분
    sJanggrd       : Variant;          // 장애등급
    sJangno        : Variant;          // 장애인번호
    sAddrwon       : Variant;          // 원적
    sAddrbon       : Variant;          // 본적
    sSedenm        : Variant;          // 세대주성명
    sHozunm        : Variant;          // 호주성명
    sHozurela      : Variant;          // 호주와의 관계
    sLivtyp        : Variant;          // 주거구분
    sDongsan       : Variant;          // 동산
    sBudongsa      : Variant;          // 부동산
    sRgncd         : Variant;          // 종교구분
    sHobby         : Variant;          // 취    미
    sTalent        : Variant;          // 특    기
    sZip           : Variant;          // 주민등록지우편번호
    sZipnm         : Variant;          // 주민등록지우편번호명
    sAddr          : Variant;          // 주민등록지주소
    sCurzip        : Variant;          // 현주소우편번호
    sCurzipnm      : Variant;          // 현주소우편번호
    sCuraddr       : Variant;          // 현주소
    sEngaddr       : Variant;          // 영문주소
    sDincomeyn     : Variant;          // 맞벌이여부
    sTelno         : Variant;          // 집전화번호
    sIntelno       : Variant;          // 원내전화번호
    sPagerno       : Variant;          // 호출기번호
    sHphoneno      : Variant;          // 휴대폰번호
    sFaxno         : Variant;          // 팩스번호
    sEmail         : Variant;          // EMAIL 주소
    sPreempno      : Variant;          // 전번개인번호
    sMiltype       : Variant;          // 병역구분
    sMilkind       : Variant;          // 병역군별
    sMilyuk        : Variant;          // 병역역종
    sMilyn         : Variant;          // 병역미필여부
    sMilrsn        : Variant;          // 병역미필사유
    sMilsrt        : Variant;          // 복무기간fr
    sMilend        : Variant;          // 복무기간to
    sMilgrade      : Variant;          // 병역계급
    sMilbrnc       : Variant;          // 병역병과
    sMilno         : Variant;          // 군  번
    sDamdang       : Variant;          // 담당업무
    sRcmnm         : Variant;          // 추천인성명
    sRcmrel        : Variant;          // 추천인관계
    sRcmcoara      : Variant;          // 추천인근무지명
    sRcmjikwe      : Variant;          // 추천인직위명
    sRemtxt        : Variant;          // 자기신고사항
    sApptyp        : Variant;          // 채용구분
    sRstdt         : Variant;          // 휴직일
    sReturndt      : Variant;          // 복직일
    sRstmm         : Variant;          // 휴직개월수
    sTrnstdt       : Variant;          // 수습시작일
    sTrnenddt      : Variant;          // 수습만료일
    sWkmm          : Variant;          // 인정경력개월수
    sMmrant        : Variant;          // 월정계약금액
    sHramt         : Variant;          // 시간제시급
    sHrcnt         : Variant;          // 시간제계약시간
    sHrstdt        : Variant;          // 시간제계약시작일
    sHreddt        : Variant;          // 시간제계약종료일
    sRetresn       : Variant;          // 퇴직사유
    sSchship       : Variant;          // 최종학력
    sLicno         : Variant;          // 면허번호
    sMajorno       : Variant;          // 전문의번호
    sRLocate       : Variant;          // 전공의 소속사업장코드
    sInternNo      : Variant;          // 전공의 번호
    sIntHospNm     : Variant;          // 인턴수련병원
    sIntStDt       : Variant;          // 인턴시작일
    sIntEnDt       : Variant;          // 인턴종료일
    sRegStDt       : Variant;          // 레지던트 시작일
    sRegEnDt       : Variant;          // 레지던트 종료일
    sIntPoint      : Variant;          // 성적(000000) -> 000/000
    sIntAve        : Variant;          // 평균점수
    sIntSeats      : Variant;          // 석차(000000) -> 000/000
    sIntGrade      : Variant;          // 등급
    sEditid        : Variant;          // 수정자 ID
    sEditip        : Variant;          // 수정자 IP
    sEditdate      : Variant;          // 수정일
    sDeldate       : Variant;          // 삭제일
    sSggbn         : Variant;          // 승급구분
    sDepteng       : Variant;          // 영어부서명
    sInDate        : Variant;          // 전입일
    sOutDate       : Variant;          // 전출일
    sPaygbn        : Variant;          // 급여구분
    sYearsCnt      : Variant;
    sMonCnt        : Variant;
    sDayCnt        : Variant;
    sTotCnt        : Variant;
    sAppEmpnm       : Variant;

    sBankcd        : Variant;
    sAcntno        : Variant;
    sBanknm        : Variant;
    sWkplace1      : Variant;

    ssCodsrh       : Variant;          // 조회되는 사원코드
    sChoice        : Variant;          // 작업구분

    sInDt          : Variant;          // 근무시작일  추가 김용욱 2005-12-09
    sWkplace       : Variant;          // 근무지

    sPermYN        : Variant;           // 인가/비인가구분 추가 박성호2010-2-5
    sDrbtan        : Variant;           // 의사구분 박성호2010-2-5

    sIdent         : Variant;

    sAgreeyn       : Variant;
    sAppyn         : Variant;
    sType          : Variant;

    sPregnantyn    : Variant;          // 임산부여부 2015.04.02 김승철 추가
    sPatno         : Variant;          //  환자번호 2017-06-21 이종명 추가

    ssWkplace     : Variant;
    ssWkareacd    : Variant;
    ssAgreeYn     : Variant;
    ssAppyn       : Variant;
    ssStddate     : Variant;
    ssSendYn      : Variant;
    sWkareacdnm   : Variant;
    sSendyn       : Variant;

    ssSrcgbn      : Variant;
    ssRetgbn      : Variant;
    sFmnm         : Variant;
    sRelnm        : Variant;
    sFmresno      : Variant;
    sRelcd        : Variant;
    sFinalyn      : Variant;
    sInputdate    : Variant;


     sDccode        : Variant;
     sEmpResno1     : Variant;
     sEmpResno2     : Variant;
     sResno1        : Variant;
     sResno2        : Variant;
     sFmlnm         : Variant;

     ssMkdate       : Variant;
     ssEditid      : Variant;
     ssEditip       : Variant;
     ssDocyear      : Variant;
     ssFlag         : Variant;
     ssDocNo        : Variant;
    inVacData        : Variant;
     sComcdnm3       : Variant;
     sComcd3        : Variant;
     Comcd1         : Variant;
     Comcd2         : Variant;
     Comcd3         : Variant;


    sAcaplace           : Variant;    //20150414 LEE
    sVtype              : Variant;    //20150414 LEE
    sMeddept            : Variant;    //20150619 LEE
    sMeddr              : Variant;    //20150619 LEE
    sAfromdate          : Variant;    //20150619 LEE
    sAtodate            : Variant;    //20150619 LEE
    sVaccnt             : Variant;    //20150619 LEE
    sAvaccnt            : Variant;    //20150619 LEE

    sFromdate           : Variant;    //20150619 LEE
    sTodate             : Variant;    //20150619 LEE

    sNewgradenm         : Variant; //20200630
    sYeoncha            : Variant; //20200630

    sWkplacecd          : Variant; //20211123

    function SelInsab1(ssLocate,ssCodsrh:string):Integer;
    function SelInsab2(ssLocate,ssCodsrh:string):Integer;
    function insInsab1():Integer;
    function insReInsab():Integer;
    function insUpInsab():Integer;    //20201118
    function GetDeptJikwe : Integer;
    function SetDcmactSend(iCnt: Integer): Integer;
    function SelGagcmast : Integer;
    function SelGagcmast1 : Integer;
    function InsVacForApprovalAprov(iCnt:Integer) :Integer;
   //   function  InsVacData
   function SelInsab6(ssLocate,ssApodate,ssDocNo,ssFlag:String):Integer;
     function InsVacData(iCnt:Integer): Integer;

    //function delInsab1(iCnt:Integer):Integer;
  end;



//======================================================
// 식수 사원번호 없는 인원 관리
// 작성일 : 2008.08.22
// 작성자 : 여경구
// 관련 테이블 : gaoutamt , gainsamv.bcha6
//======================================================
  HgaOutamt = class
    sLocate         : Variant;
    sEmpno          : Variant;
    sEmpnm          : Variant;
    sDeptcd         : Variant;
    sDeptnm         : Variant;
    sEntdt          : Variant;
    sRetdt          : Variant;
    sJikmu          : Variant;
    sJikmuNm        : Variant;    

    sJikjong        : Variant;
    sJikjongNm      : Variant;

    sJikwe          : Variant;
    sJikweNm        : Variant;
    sPinCode        : Variant;


    ssLocate        : variant;
    ssWkareacd      : variant;
    ssUserid        : variant;

    sWkareacd       : variant;
    sWkareacdnm     : variant;
    sIdent          : variant;
    sEditid         : Variant;
    sEditip         : Variant;


  function SetPinCodeMach():Integer;
  Function GetUseridSelect() : Integer;

 end;



//======================================================
// 사원 가족 조회
// 작성일 : 2002.01.15
// 작성자 : 최종윤
// 관련 테이블 : GAFAMLDT , CCCOMCDT, CCDEPTCT
//======================================================
  HgaFamld1  = class
    sResno         : Variant;          // 가족 주민번호
    sFmlynm        : Variant;          // 가족성명
    sRelcd         : Variant;          // 가족관계코드
    sRelcdnm       : Variant;          // 가족관계명
    sSupcd         : Variant;          // 부양구분
    sSchship       : Variant;          // 최종학력코드
    sSchshipnm     : Variant;          // 최종학력명
    sJob           : Variant;          // 직업
    sSdyn          : Variant;          // 수당지급대상 여부===> 차후조정후 반영
    sDedyn         : Variant;          // 진료비감면여
    sMinsutyp      : Variant;          // 의료보험구분
    sRsdyn         : Variant;          // 동거여부
    sInjuryyn      : Variant;          // 장애인여부

    sEmpno         : Variant;    	     // 개인번호
    sLocate        : Variant;          // 사 업 장
    sCodsrh        : Variant;          // 조회되는 사원코드

    sEditid        : Variant;     	   //  수정자ID
    sEditip        : Variant;          //  수정자IP
    sEditdate      : Variant;          //  수정일
    sChoice        : Variant;          //  작업구분
    sResno_old     : Variant;          //  주민번호 old
    sFmlupdateyn   : Variant;          //  가족사항 변경여부(입력시) 20140626 김승철
    sFmleditid     : Variant;          //  가족수당 수정자(조회) 20140626 김승철
    sFmleditdate   : Variant;          //  가족수당 수정일(조회) 20140626 김승철

    sEmpnm         : Variant;
    sRgtdate       : Variant;
    sResid         : Variant; 

    function SelFamld1():Integer;
    function insFamld1():Integer;
    //function delFamld1(iCnt:Integer):Integer;
    function delFamld1:Integer;

    function SelFamld2():Integer;
    function insFamld3(iCnt: Integer):Integer;

  end;
//======================================================
// 사원 학력사항 조회
// 작성일 : 2002.01.16
// 작성자 : 최종윤
// 관련 테이블 : GASCHODT, CCCOMCDT
//======================================================
  HgaSchod1  = class
    sSchship      : Variant;          // 학력구분코드
    sSchshnm      : Variant;          // 학력구분명
    sSdt          : Variant;          // 학력시작일자
    sGrudt        : Variant;          // 학력종료일자
    sSchoolnm     : Variant;          // 학교명
    sMjrnm        : Variant;          // 전공명
    sEndyn        : Variant;          // 최종여부
    sEntGubn      : Variant;          // 입사전후 구분(A: 입사후, B: 입사전)
    sRemtxt       : Variant;          // 비고

    sLocate       : Variant;          // 사 업 장
    sCodsrh       : Variant;          // 조회되는 사원코드
    sEmpno        : Variant;      	  // 개인번호
    sSchoolcd     : Variant;          // 학교코드   null값(허용)
    sMjrcd        : Variant;          // 전공코드   null값(허용)

    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일
    sChoice       : Variant;          // 입력/수정구분(I/U)
    sSchship_old  : Variant;          // 학력구분 old
    sSdt_old      : Variant;          // 입학일자 old

    sEmpnm        : Variant;
    sRgtdate      : Variant;
    sResid        : Variant;


    function SelSchod1():Integer;
    function insSchod1():Integer;
    //function delSchod1(iCnt:Integer):Integer;
    function delSchod1():Integer;

    function SelSchod2():Integer;
    function insSchod2(iCnt: Integer):Integer;

  end;
//======================================================
// 사원 경력사항 조회
// 작성일 : 2002.01.16
// 작성자 : 최종윤
// 관련 테이블 :   GAWOIWDT, CCCOMCDT
//======================================================
  HgaWoiwd1  = class

    sSdate        : Variant;          // 근무시작일자
    sEdate        : Variant;          // 근무종료일자
    sCompnm       : Variant;          // 회사명
    sJikwe        : Variant;          // 직위
    sJikmunm      : Variant;          // 담당업무명
    sWkmm         : Variant;          // 인정개월수
    sWkRate       : Variant;          // 경력기간 인정율

    sEmpno        : Variant;          // 개인번호
    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일

    sLocate       : Variant;          // 사 업 장
    sCodsrh       : Variant;          // 조회되는 사원코드

    sChoice       : Variant;             // 입력/수정구분(I/U)
    sSdate_old    : Variant;          // 근무종료일자  수정전

    sEmpnm        : Variant;
    sRgtdate      : Variant;
    sResid        : Variant;

    function SelWoiwd1():Integer;
    function insWoiwd1():Integer;
    //function delWoiwd1(iCnt:Integer):Integer;
    function delWoiwd1():Integer;

    function SelWoiwd2():Integer;
    function insWoiwd2(iCnt: Integer):Integer;

  end;
//======================================================
// 사원 자격사항 조회
// 작성일 : 2002.01.17
// 작성자 : 최종윤
// 관련 테이블 :  GAQULIDT, CCCOMCDT
//======================================================
  HgaQulid1  = class

    sLcncd          : Variant;          // 자격코드
    sLcncdn         : Variant;          // 자격코드명
    sOrgcd          : Variant;          // 발행기관코드
    sOrgcdn         : Variant;          // 발행기관코드명
    sGetdate        : Variant;          // 취득일자
    sFnsdate        : Variant;          // 유효일자
    sChgdate        : Variant;          // 차기갱신일자
    sLcnno          : Variant;          // 자격번호
    // sSdyn        : Variant;              수당지급여부

    sEmpno        : Variant;          // 개인번호
    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일

    sLocate        : Variant;           // 사 업 장
    sCodsrh        : Variant;           // 조회되는 사원코드
    sChoice        : Variant;           // 입력/수정구분(I/U)
    sLcncd_old     : Variant;           // 자격코드 old
    sLcnNO_old     : Variant;           // 자격번호 old 20200114 오정은 추가
    sRemix         : Variant;

    sSubject       : Variant;
    sSubnm         : Variant;

    sEmpnm         : Variant;
    sRgtdate       : Variant;
    sResid         : Variant;

    sPromYn        : Variant;
    sPromSub       : Variant;

    function SelQulid1():Integer;
    function insQulid1():Integer;
    //function delQulid1(iCnt:Integer):Integer;
    function delQulid1():Integer;

    function SelQulid2():Integer;
    function insQulid2(iCnt: Integer):Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// 사원 교육사항 조회
// 작성일 : 2004.07.22
// 작성자 : 문태용
// 관련 테이블 :  GAEDUCDT, CCCOMCDT
////////////////////////////////////////////////////////////////////////////////
  HgaEducd1  = class

    sEducd        : Variant;           // 교육코드
    sSdate        : Variant;           // 교육시작일자
    sEdate        : Variant;           // 교육종료일자
    sTime         : Variant;           //이수시간
    sEduname      : Variant;           // 교육(종류)명
    sEduOrgcd     : Variant;           // 교육기관코드
    sEduOrg       : Variant;           // 교육기관명
    sEducont      : Variant;           // 교육제목
    sEduamt       : Variant;           // 교육금액
    sEduesti      : Variant;           // 교육평가
    sEdurank      : Variant;           // 교육석차
    sEduremk      : Variant;           // 비고
    sInoutyn      : Variant;           // 원외구분
    sEduyn        : Variant;           // 이수여부
    sPoint        : Variant;           // 학점
    sEditid       : Variant;           // 수정자 ID
    sEditip       : Variant;           // 수정자 IP
    sChoice       : Variant;           // 작업구분
    sInout        : Variant;           // 국내외구분 20060911 추가
    sCont         : Variant;
    sEduseq       : Variant;

    sLocate       : Variant;           // 사 업 장
    sCodsrh       : Variant;           // 조회되는 사원코드
    sEducd_old    : Variant;           // 교육코드 old
    sSdate_old    : Variant;           // 교육시작일 old
    //20060920
    sEmpno        : Variant;           // 사번
    sEditdate     : Variant;           // 수정일

    //20061001
    sEdupoint     : Variant;           // 이수점수
    sEdumonth1    : Variant;           // 1개월차
    sEdumonth2    : Variant;           // 2개월차
    sEdumonth3    : Variant;           // 3개월차
    sEdutotal     : Variant;           // 총점

    //20061002
    sJikwe        : Variant;           // 직위(승진교육때 직위)  20061002
    sJikwenm      : Variant;           // 직위명(승진교육때 직위)  20061002

    sDeptnm       : Variant;           // 소속부서명
    sWkareanm     : Variant;           // 근무부서명
    sApodate      : Variant;           // 현직위승진일자
    sEmpnm        : Variant;           // 성명

    sEduchk       : Variant;           // 무료교육 체크여부 (20061017 gawaguci 작성 전산팀 꽃미남)

    sMode        : Variant;   // 20061104 추가

    sMngcdNm     : Variant;
    sMidcdNm     : Variant;
    sEdflagNm    : Variant;
    sEducode     : Variant;
    sStime       : Variant;
    sEtime       : Variant;

    sMngcd       : Variant;
    sEduAvg      : Variant;
    sEdutitle    : Variant;
    sExecyn      : Variant;
    sMidcd       : Variant;
    sEdutime     : Variant;






    function SelEducd1():Integer;
    function SelNewEdu():Integer;
    function InsUpEducd1():Integer;
    function DelEducd1():Integer;

    function InsExcelEducd1(iCnt:integer) : integer;

    function SelEducd3():Integer;

  end;
//======================================================
// 사원 상훈사항 조회
// 작성일 : 2002.01.21
// 작성자 : 최종윤
// 관련 테이블 :  GAAWARDT, CCCOMCDT
//======================================================
  HgaAward1  = class

    sAwardate     : Variant;          // 상훈발생일
    sAwarcd       : Variant;          // 상훈코드
    sAwarcdnm     : Variant;          // 상훈코드명
    sTypecd       : Variant;          // 상훈구분코드
    sTypecdnm     : Variant;          // 상훈구분코드명
    sRemtxt       : Variant;          // 내용
    sOrgnm        : Variant;          // 상훈기관명

    sEmpno        : Variant;          // 개인번호
    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일

    sLocate       : Variant;          // 사 업 장
    sCodsrh       : Variant;          // 조회되는 사원코드
    sChoice       : Variant;          // 입력/수정구분(I/U)

    sAwardate_old : Variant;          // 상훈발생일 old
    sAwarcd_old   : Variant;          // 상훈코드 old

    sAwarder      : Variant;          // 수여자

    function SelAward1():Integer;
    function insAward1():Integer;
    function delAward1():Integer;
  end;




/////////////////////////////////////////////////////////////////////////
//  사고내용  조회 2009.06.09
/////////////////////////////////////////////////////////////////////////
//   gaAccid   : HgaAccid ;
   HgaAccid  = class

     ssLocate     : Variant;
     ssCodsrh     : Variant;
     ssEmpno      : Variant;
     sInptdt      : Variant;
     sLocate      : Variant;
     sGbn         : Variant;
     sSeqno       : Variant;
     sInEmpno     : Variant;
     sEditid      : Variant;
     sEditip      : Variant;
     sChoice      : Variant;
     sCont        : Variant;
     sResult      : Variant;
     sDeptnm      : Variant;

     sAccidate    : Variant;
     sAccicd      : Variant;
     sAccicdnm    : Variant;
     sRemtxt      : Variant;
     sYear        : Variant;
     sMon         : Variant;
     sCol1        : Variant;
     sCol2        : Variant;
     sCol3        : Variant;
     sCol4        : Variant;
     sCol5        : Variant;
     sCol6        : Variant;
     sCol7        : Variant;
     sCol8        : Variant;
     sCol9        : Variant;
     sCol10        : Variant;
     sCol11        : Variant;
     sCol12        : Variant;



    function SelAccid():Integer;        // 조회
    function insAccid():Integer;
    function delAccid():Integer;

    function ListMon1():Integer;
    function ListMon2():Integer;
    function ListMon3():Integer;
    function ListMon4():Integer;
    function ListMon5():Integer;
    function ListMon6():Integer;
    function ListMon7():Integer;




    //function DelAccid():Integer; //입력


  end;


//======================================================
// 사원 징계사항 조회
// 작성일 : 2002.01.25
// 작성자 : 최종윤
// 관련 테이블 :  GAPUNSDT, CCCOMCDT
//======================================================
  HgaPunsd1  = class

    sSdate       : Variant;          // 징계시작일
    sEdate       : Variant;          // 징계종료일
    sPuncd       : Variant;          // 징계코드
    sPuncdnm     : Variant;          // 징계코드명
    sTypecd      : Variant;          // 징계구분코드
    sTypecdnm    : Variant;          // 징계구분코드명
    sRemtxt      : Variant;          // 내용
    sOrgnm       : Variant;          // 징계기관명

    sEmpno        : Variant;          // 개인번호
    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP

    sLocate      : Variant;          // 사 업 장
    sCodsrh      : Variant;          // 조회되는 사원코드
    sChoice      : Variant;          // 입력/수정구분(I/U)

    sSdate_old    : Variant;        // 징계시작일 old
    sPuncd_old    : Variant;        // 징계코드 old

    function SelPunsd1():Integer;
    function insPunsd1():Integer;
    function delPunsd1():Integer;

  end;
//======================================================
// 사원 발령사항 조회
// 작성일 : 2002.01.25
// 작성자 : 최종윤
// 관련 테이블 :  GAAPOIDT
//======================================================
  HgaApoid1  = class

    sApodate      : Variant;          // 발 령 일
    sEnddate      : Variant;          // 발령종료

    sApoinm       : Variant;          // 발 령 명
    sDeptnm       : Variant;          // 부 서 명
    sJikgunnm     : Variant;          // 직 군 명
    sJikjongnm    : Variant;          // 직 종 명
    sJikcheknm    : Variant;          // 직 책 명
    sJikwenm      : Variant;          // 직 위 명
    sJikgupnm     : Variant;          // 직 급 명

    sWkareacdnm   : Variant;          // 근무부서명

    sApocd        : Variant;          // 발령코드
    sDeptcd       : Variant;          // 부서코드
    sJikjong      : Variant;          // 직종코드
    sJikgup       : Variant;          // 직급코드
    sJikmu        : Variant;          // 직무코드
    sJikmucd      : Variant;          // 직무코드
    sJikmunm      : Variant;          // 직무명
    sJikchek      : Variant;          // 직책코드
    sJikwe        : Variant;          // 직위코드
    sJikgun       : Variant;          // 직군코드
    sWkareacd     : Variant;          // 근 무 지
    sWkareanm     : Variant;
    sHobong       : Variant;          // 호    봉
    sRemtxt       : Variant;          // 비    고
    sdutyyy       : Variant;
    sdutymm       : Variant;
    sdutydd       : Variant;

///////////////////////////20211006 근로계약서 조회
    sSdcd         : Variant;
    sSdamt        : Variant;
    sSdcdnm       : Variant;
    sPaygbn       : Variant;
    sApplyymm     : Variant;
    sSdcd1012     : Variant;
    sSdcd1017     : Variant;
    sSdcd1027     : Variant;
    sSdcd1048     : Variant;
    sSdcd1062     : Variant;
    sSdcd1064     : Variant;
    ssApodate     : Variant;
    ssEnddate     : Variant;
    ssPreapodate  : Variant;
    ssPreenddate  : Variant;
    ssPreyn       : Variant;
    ssWkareacd    : Variant;
    ssWorktxt     : Variant;

///////////////////////////

    sLargcd       : Variant;
    sMiddlecd     : Variant;
    sSmallcd      : Variant;
    sDetailcd     : Variant;


    sLargcdnm     : Variant;   
    sMiddlecdnm   : Variant;
    sSmallcdnm    : Variant;
    sDetailcdnm   : Variant;

    sCloseyn      :Variant;
    sConCurYn     : Variant;          // 겸직주/부 구분
    sAppotno      : Variant;          // 사령장 번호
    sWLocate      : Variant;          // 근무부서 사업장 코드
    sBefhobong    : Variant;          // 인사마스터 호봉의 이전호봉
    sNexthobong   : Variant;          // 현재호봉의 다음호봉

    sEmpno        : Variant;          // 개인번호
    sEmpNm        : Variant;          // 사원명
    sLocate       : Variant;          // 사 업 장
    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일
    sGubun        : Variant;          // 20061103 추가

    sNewGrade     : Variant;  // 20200630
    sYeoncha      : Variant;  // 20200630
    sSJYeonhan    : Variant;  // 20200630
    sPromyear     : Variant;  // 20200630
    sNewGradenm     : Variant;  // 20200630
    sYeonchanm      : Variant;  // 20200630
    sSJYeonhannm    : Variant;  // 20200630

    sPreApodate   : Variant;          // 수습발 령 일
    sPreEnddate   : Variant;          // 수습발령종료


/////////////////  발령처리 관련 추가(2004.08.11)   ////////////////////////////
    sEntSYYMM     : Variant;          // 입사년월 From
    sEntEYYMM     : Variant;          // 입사년월 To
    sSgMonth      : Variant;          // 승급월
    sEntDate      : Variant;          // 입사일
    sLastDate     : Variant;          // 최종발령일
    sJikjongcd    : Variant;          // 직 종코드
    sJikgupcd     : Variant;          // 직 위코드
    sJikchekcd    : Variant;          // 직 책코드
    sJikwecd      : Variant;          // 직 급코드
    sJikguncd     : Variant;          // 호 봉코드
    sDeptcd2      : Variant;          // 소속부서코드
    sWkareacd2    : Variant;          // 근무부서코드
/////////////////  발령처리 관련 추가(2004.08.11)   ////////////////////////////

    sCode         : Variant;          // 코드
    sCodeName     : Variant;          // 코드명
    sOldKey1      : Variant;          // 발령코드(기존)
    sOldKey2      : Variant;          // 발령일자(기존)
    sCodsrh       : Variant;          // 조회되는 사원코드
    sChoice       : Variant;          // 입력/수정구분(I/U)

    sDays         : Variant;          // 휴직일수
    sSDate        : Variant;          // 조회기간
    sEDate        : Variant;          // 조회기간
    sVaCnt        : variant;

    sChargeGbn    : Variant;          // 담당자구분(3/4)  // 김용욱 추가 2005-10-26

    sWkplace      : Variant;          // 근무지  //   추가 2006-05-18
    sTotdutym     : Variant;
    sTotamt       : Variant;
    sInctax       : Variant;
    sDedtamt      : Variant;
    sRealamt      : Variant;
    sRestax       : Variant;

    sEntdt        : Variant;
    sBefore       : Variant;
    sWkTime       : Variant;
    sEnddt        : Variant;
    sAfter        : Variant;          // 후 발령 여부 2018-10-30 이지윤 추가 (조현식 계장 요청)

    sEmpno2       : Variant;          // 제증명서 출력 예외처리 사번 2019-10-25 오정은

    sMaxHobong    : Variant;          // Max 호봉 20200507 오정은

    sRetdt        : Variant;          // 퇴직일자 20210714 이은아 추가 - 장다은 요청 

    function SelApoid1():Integer;
    function SelApoid2():Integer;     // 발령현황 조회(발령정보)
    function SelApoid3():Integer;     // 발령 대상자 조회(발령처리)
    function SelApoid4():Integer;     // 휴직 발령일 조회
    function SelApoid5:Integer;
    function SelApoid6:Integer;
    function SelApoid7():Integer;     // 근로계약서 발령사항 조회 20210924
    function Dutysdamt():Integer;     // 근로계약서 급여 조회 20211005


    function insApoid2(iCnt : Integer):Integer;     // 일괄발령

    function insApoid1():Integer;
    function updApoid1():Integer;
    function delApoid1():Integer;

    function Gbapoid_List:Integer;
    function GbApoid_Save:Integer;
    function delGBApoid:Integer;


    function updApoid2():Integer; // 2006-10-27 추가

    function ListComCodeName : integer;
    function ListComCodeName1 :Integer;

    function ListProof : Integer;     // 경력증명서 관련 발령사항(채용, 부서이동)

    function CheckHobong : Integer; // 호봉 Check 20200507 오정은 추가

  end;


//======================================================
// 학회결재
// 작성일 : 20170908
// 작성자 : 이종명
// 관련 테이블 :  ? GAAPOIDT  gaDocvat
//======================================================
  HgaDocvat  = class
     sDocspnm     : Variant;
     sDocempno    : Variant;
     sCdabbrnm    : Variant;
     sEmail       : Variant;
    //20150615 LEE
     sAppdate0    : Variant;
     sAppjiknm0   : Variant;
     sAppjiknm1   : Variant;
     sAppjiknm2   : Variant;
     sAppjiknm3   : Variant;
     sAppjiknm4   : Variant;
     sAppEmpnm0   : Variant;
     sAppyn0      : Variant;
     sAppgbn0     : Variant;

     sVtype1      : Variant;
     sChoice      : Variant;

     sComCdNm     : Variant;        //2015.04.16
     sLicNo       : Variant;        //2015.04.16
     sMajorNo     : Variant;        //2015.04.16
     sEmpid       : Variant;        //2015.04.16
      //20150728 LEE
     sAproltcnt   : Variant;


   sAremcnt       : Variant;
   sYYYY         : Variant;
   sVremark       : Variant;


   sAmodcnt       : Variant;


     ssType       : Variant;        // 20161114 LEE 추가 전문의 전공의 구분

    ssRemark     : Variant;
    sApodate      : Variant;          // 발 령 일
    sEnddate      : Variant;          // 발령종료
    ssLocate      : Variant;
    ssVtype       : Variant;
    ssEmpno       : Variant;
    ssFromdt      : Variant;
    ssTodt        : Variant;
    ssYYYY        : Variant;
   // selDocvlt     : Variant; 20170908 이종명임시삭제
    sVdetail      : Variant;
    svType        : Variant;
    sVtypecd       : Variant;
    sAfromdate     : Variant;
    sAtodate        : Variant;
    sVfromdate     : Variant;
    sApocdnm       : Variant;
    sVtodate       : Variant;
    sAcaname      : Variant;
    sAcaplace      : Variant;

    sMkdate       : Variant;
    sDocno        : Variant;
    sVusecnt       : Variant;
    sCdocyn       : Variant;
    sDocstep       : Variant;
    sSubsign       : Variant;
    sOffresn       : Variant;
    sAmpmflag       : Variant;
    slmpactfr      : Variant;
    sReldoc         : Variant;
    sAdocYN         : Variant;
    sAusercnt      : Variant;

    sTelno         : Variant;
    sHphoneno      : Variant;
    sAppRemark     : Variant;
    sRemark         : Variant;
    sAppEmpno1     : Variant;
    sAppEmpno2     : Variant;
    sAppEmpno3     : Variant;
    sAppEmpno4     : Variant;
    sAppyn1         : Variant;
    sAppyn2      : Variant;
    sAppyn3       : Variant;
    sAppyn4         : Variant;
    sAppdate1       : Variant;
    sAppdate2       : Variant;
    sAppdate3       : Variant;
    sAppdate4       : Variant;
    sImpactfr       : Variant;
    sAusecnt        : Variant;
    sMeddept         : Variant;
    sMeddr           : Variant;
    sMkdeptcd        : Variant;
    ssDocno          : Variant;
    sAtotcnt          : Variant;
    sAppseqno         : Variant;
    sMkempno          : Variant;
    sAppempnm1        : Variant;
    sAppempnm2        : Variant;
    sAppempnm3        : Variant;
    sAppempnm4         : Variant;
    sAppgbn1          : Variant;
    sAppgbn2          : Variant;
    sAppgbn3         : Variant;
    sAppgbn4         : Variant;
    //insDocvat        : Variant;
    sType1           : Variant;
    sType2           : Variant;
    sType3           : Variant;
    sType4           : Variant;
    sVcnt1            : Variant;
    sVcnt2            : Variant;
    sVcnt3            : Variant;
    sVcnt4            : Variant;
    sAcnt1           : Variant;
    sAcnt2            : Variant;
    sAcnt3            : Variant;
    sAcnt4            : Variant;
    sFcnt1            : Variant;
    sFcnt2            : Variant;
    sFcnt3            : Variant;
    sFcnt4            : Variant;
    sVtotcnt          : Variant;
    sVremcnt          : Variant;
    sSubdate          : Variant;
    sSubamjik         : Variant;
    sSubamnm          : Variant;
    sSubpmjik         : Variant;
    sSubpmnm           : Variant;
    sSubamsign         : Variant;
    sSubpmsign        : Variant;
   Subpmsign           : Variant;
   sChangedateyn       : Variant;
   sChangeamyn         : Variant;
   sChangepmyn          : Variant;
   sChangedate         : Variant;
   sSubamid            : Variant;
   sSubpmid           : Variant;
   ssEditid           : Variant;
   ssEditip           : Variant;
   ssDocyear          : Variant;
   ssFlag             : Variant;
   ssMkdate           : Variant;
   sType              : Variant;
   Comcd1              : Variant;
   Comcd2               : Variant;
   Comcd3               : Variant;
    sComcdnm3            : Variant;
    sComcd3              : Variant;
     sEmpnm1          : Variant;
     sEmpnm2         : Variant;
   ssYFlag         : Variant;


    sApoinm       : Variant;          // 발 령 명
    sDeptnm       : Variant;          // 부 서 명
    sJikgunnm     : Variant;          // 직 군 명
    sJikjongnm    : Variant;          // 직 종 명
    sJikcheknm    : Variant;          // 직 책 명
    sJikwenm      : Variant;          // 직 위 명
    sJikgupnm     : Variant;          // 직 급 명

    sWkareacdnm   : Variant;          // 근무부서명

    sApocd        : Variant;          // 발령코드
    sDeptcd       : Variant;          // 부서코드
    sJikjong      : Variant;          // 직종코드
    sJikgup       : Variant;          // 직급코드
    sJikmu        : Variant;          // 직무코드
    sJikmucd      : Variant;          // 직무코드
    sJikmunm      : Variant;          // 직무명
    sJikchek      : Variant;          // 직책코드
    sJikwe        : Variant;          // 직위코드
    sJikgun       : Variant;          // 직군코드
    sWkareacd     : Variant;          // 근 무 지
    sWkareanm     : Variant;
    sHobong       : Variant;          // 호    봉
    sRemtxt       : Variant;          // 비    고
    sdutyyy       : Variant;
    sdutymm       : Variant;
    sdutydd       : Variant;

    sLargcd       : Variant;
    sMiddlecd     : Variant;
    sSmallcd      : Variant;
    sDetailcd     : Variant;


    sLargcdnm     : Variant;   
    sMiddlecdnm   : Variant;
    sSmallcdnm    : Variant;
    sDetailcdnm   : Variant;

    sCloseyn      :Variant;
    sConCurYn     : Variant;          // 겸직주/부 구분
    sAppotno      : Variant;          // 사령장 번호
    sWLocate      : Variant;          // 근무부서 사업장 코드
    sBefhobong    : Variant;          // 인사마스터 호봉의 이전호봉
    sNexthobong   : Variant;          // 현재호봉의 다음호봉

    sEmpno        : Variant;          // 개인번호
    sEmpNm        : Variant;          // 사원명
    sLocate       : Variant;          // 사 업 장
    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일
    sGubun        : Variant;          // 20061103 추가

/////////////////  발령처리 관련 추가(2004.08.11)   ////////////////////////////
    sEntSYYMM     : Variant;          // 입사년월 From
    sEntEYYMM     : Variant;          // 입사년월 To
    sSgMonth      : Variant;          // 승급월
    sEntDate      : Variant;          // 입사일
    sLastDate     : Variant;          // 최종발령일
    sJikjongcd    : Variant;          // 직 종코드
    sJikgupcd     : Variant;          // 직 위코드
    sJikchekcd    : Variant;          // 직 책코드
    sJikwecd      : Variant;          // 직 급코드
    sJikguncd     : Variant;          // 호 봉코드
    sDeptcd2      : Variant;          // 소속부서코드
    sWkareacd2    : Variant;          // 근무부서코드
/////////////////  발령처리 관련 추가(2004.08.11)   ////////////////////////////

    sCode         : Variant;          // 코드
    sCodeName     : Variant;          // 코드명
    sOldKey1      : Variant;          // 발령코드(기존)
    sOldKey2      : Variant;          // 발령일자(기존)
    sCodsrh       : Variant;          // 조회되는 사원코드


    sDays         : Variant;          // 휴직일수
    sSDate        : Variant;          // 조회기간
    sEDate        : Variant;          // 조회기간
    sVaCnt        : variant;

    sChargeGbn    : Variant;          // 담당자구분(3/4)  // 김용욱 추가 2005-10-26

    sWkplace      : Variant;          // 근무지  //   추가 2006-05-18
    sTotdutym     : Variant;
    sTotamt       : Variant;
    sInctax       : Variant;
    sDedtamt      : Variant;
    sRealamt      : Variant;
    sRestax       : Variant;

    sEntdt        : Variant;
    sBefore       : Variant;
    sWkTime       : Variant;
    sSupDept      : Variant;
    sRetdt        : Variant;
    sGrudt        : Variant;
    sVmodcnt      : Variant;

     function SelDocvat():Integer;
     function insDocvat():Integer;
     function insDocvat1():Integer;
     function insDocvat2():Integer;

     function insDocvat3(iCnt:integer):Integer;
     function delDocvat(iCnt:Integer):Integer;
     function insDocvat4(iCnt:integer):Integer;  //20150514 진료대체 저장...
     function insCalcVacation():Integer;       //20151215 의사휴가학회신청

     //20150409 LEE
     function SelDocvlt():Integer;

     //20150416 LEE
     function SelDeptNm():Integer;
     function SelDrNm():Integer;
     function SelReason():Integer;
     function SelSubDrInfo():Integer;
     //20150504 LEE
     function SelSubDrSign():Integer;
     function insSubDrSign(iCnt:integer):Integer;
     //20150508 LEE
     function SelVacInfo(ssLocate,ssMkdate,ssFlag,ssEmpno,ssDocyear,ssMkdate1,ssYFlag:String):Integer;
     //20150511 LEE ssLocate,ssMkdate,ssDocNo,ssFlag
     function SelAppInfo(ssLocate,ssMkdate,ssDocno,ssFlag:String):Integer;
     function SelSubDrInfo1():Integer;
     function delDocvat1():Integer;
     function insAppHitory():Integer;
     function SelAppReturnInfo():Integer;

     //20150602 lee 결재취소 프로세서..
     function insDocvat5():Integer;
     //20150610 LEE 결재시 마스터에서 차감
     function insDocvat6():Integer;
     //20150616 LEE 결재취소 사유입력 부분
     function insDocvat7():Integer;
     //20150624 LEE 인사팀 기입력건 데이터 처리
     function insDocvat8():Integer;
     //20150728 LEE
     function SelAprolt():Integer;
     //20161104 LEE 전공의 인턴 추가되면서 의사이름 조회 부분 전체적으로 수정
     function SelDrNm_New():Integer;
//20170908
end;


/////////////////////////////////////////////////////////////////////////
//      정원관리      2013-05-23
//       Create by 허장원
/////////////////////////////////////////////////////////////////////////
  HgaTomng = class
    sLocate     : Variant;
    sWkareacd   : Variant;
    sJikjong    : Variant;
    sStdate     : Variant;
    sDptto      : Variant;
    sPmto       : Variant;
    sPreto      : Variant;
    sRemark     : Variant;
    sEditid     : Variant;
    sEditip     : Variant;
    sSelgbn     : Variant;
    sJikgun     : Variant;
    sJikmu      : Variant;

    ssWkareanm  : Variant;
    ssWkareacd  : Variant;
    ssJikjongnm : Variant;
    ssJikjong   : Variant;
    ssDptto     : Variant;
    ssStdate    : Variant;
    ssRemark    : Variant;

    ssEddate    : Variant;
    ssPmto      : Variant;
    ssPreto     : Variant;
    ssEditdate  : Variant;
    ssEditemp   : Variant;

    ssNcnt      : Variant;
    ssNcnt1     : Variant;
    ssNcnt2     : Variant;
    ssNcnt3     : Variant;
    ssNcnt4     : Variant;
    ssNcnt5     : Variant;
    ssNcnt6     : Variant;
    ssNcnt7     : Variant;
    ssNcnt8     : Variant;
    ssNcnt9     : Variant;
    ssNcnt10    : Variant;
    ssNcnt11    : Variant;
    ssNcnt12    : Variant;
    ssNcnt13    : Variant;
    ssJikgun    : Variant;
    ssJikgunnm  : Variant;

    ssPcnt      : Variant;
    ssRcnt      : Variant;

    ssEmpno     : Variant;
    ssEmpnm     : Variant;
    ssApoinm    : Variant;
    ssApodate   : Variant;
    ssEnddate   : Variant;
    ssJikmunm   : Variant;
    ssJikcheknm : Variant;
    ssJikwenm   : Variant;
    ssDeptnm    : Variant;
    ssRemtxt    : Variant;

    function TomngInsert : Integer;
    function TomngSelect : Integer;
    function DptToSelect : Integer;
    function NowTOCntSel : Integer;
    function DptEmplist : Integer;
  end;


//0306 추가 (최종윤)+++++++++++++++++++++++++++++++++++++
//======================================================
// 공통정보 사항
// 작성일 : 2002.02.18
// 작성자 : 최종윤
// 관련 테이블 :  CCCOMCDT
//======================================================
  HgaComcd1  = class
    // 검색조건변수
    ssLocate     : Variant;          // 사업장
    ssLargcd     : Variant;          // 대분류코드


    sLargcd     : Variant;          // 대분류코드
    sComcddtl   : Variant;          // 중분류코드
    sCdabbrnm   : Variant;          // 약명
    sComcdnm    : Variant;          // 중분류코드명
    sCdprtnm    : Variant;          //
    sCdprtseq   : Variant;          // code seqence
    sEditid     : Variant;          // 수정자 ID
    sEditip     : Variant;          // 수정자 IP

    sInCode1    : Variant;          // 조회 대분류코드
    sChoice     : Variant;          // 조회분류1:중분류코드,2:중분류코드명
    sCodsrh     : Variant;          // 조회값

    sRemark     : Variant;          // 비고
    sSaveGbn    : Variant;          // 저장구분 ('I':입력, 'U':수정)

    sEngcomCdNm : Variant;          // 20061019 영문명 추가
    sCdseqno    : Variant;

    function SelComcd1():Integer;
    function insComcd1():Integer;

    function SelComcd2():Integer;    // 공통코드를 조회한다.       (GAG006U1)
    function InsComcd2():Integer;    // 공통코드를 등록/수정한다.  (GAG006U1)
                                     // 저장구분 'I':입력, 'U':수정

    function DelComcd2():Integer;    // 공통코드를 삭제한다.       (GAG006U1)

  end;
//======================================================
// 근태코드관리
// 작성일 : 2002.02.25
// 작성자 : 최종윤
// 관련 테이블 :  GAVACACT
//======================================================
  HgaVacact1  = class

    sRefwkcd    : Variant;      // 근태코드
    sWknm       : Variant;      // 근태명
    sWkgbn      : Variant;      // 근태구분
    sDaytime    : Variant;      // 시간 일수 구분
    sBasdedyn   : Variant;      // 기본급차감여부
    sWkday      : Variant;      // 근무일수 포함여부
    sAttdtcnt   : Variant;      // 출근일수 포함여부
    sDeldate    : Variant;      // DELDATE  폐기일자
    sEditid     : Variant;      // 수정자id
    sEditip     : Variant;      // 수정자ip
    sChoice     : Variant;      // 입력/수정구분 (I/U)

    function SelVacac1():Integer;
    function insVacac1():Integer;
    function delVacac1(iCnt:Integer):Integer;
  end;
//======================================================
// 발령코드관리
// 작성일 : 2002.02.25
// 작성자 : 최종윤
// 관련 테이블 :  GAAPOICT
//======================================================
  HgaApoict1  = class

    sApoicd   : Variant;      // 발령코드
    sApoinm   : Variant;      // 발령명
    sYn1      : Variant;      // 휴직적용
    sYn2      : Variant;      // 복직적용
    sYn3      : Variant;      // 퇴직적용
    sYn4      : Variant;      // 징계적용
    sYn5      : Variant;      // 유급구분
    sYn6      : Variant;      // 예비구분1
    sYn7      : Variant;      // 예비구분2
    sYn8      : Variant;      // 예비구분3
    sYn9      : Variant;      // 예비구분4
    sDeldate  : Variant;      // DELDATE  폐기일자
    sEditid   : Variant;      // 수정자id
    sEditip   : Variant;      // 수정자ip
    sChoice   : Variant;      // 입력/수정구분 (I/U)

    function SelApoic1():Integer;
    function insApoic1():Integer;
    function delApoic1(iCnt:Integer):Integer;
  end;
//======================================================
// 근무형태코드관리
// 작성일 : 2002.02.25
// 작성자 : 최종윤
// 관련 테이블 :  GAWRKTCT
//======================================================
  HgaWrktct  = class
    ssLocate    : Variant;     // 사업장코드(조회)
    ssFlag      : Variant;     // 근무형태(행정-A, 간호-N)(조회)
    ssDeptcd    : Variant;

    sLocate     : Variant;     // 사업장코드
    sFlag       : Variant;     // 근무형태(행정-A, 간호-N);
    sWrktcd     : Variant;     // 근무형태코드
    sWrktnm     : Variant;     // 근무형태명
    sStm        : Variant;     // 시작시간
    sEtm        : Variant;     // 종료시간
    sOtm        : Variant;     // 시간외적용
    sNtm        : Variant;     // 심야적용
    sWtm        : Variant;     // 특근적용
    sSortord    : Variant;     // 정렬순서
    sDeldate    : Variant;     // 폐기일자
    sEditid     : Variant;     // 수정자id
    sEditip     : Variant;     // 수정자ip
    sChoice     : Variant;     // 입력/수정구분 (I/U)
    sVtm        : Variant;     // 입력/수정구분 (I/U)
    sOvm        : Variant;     // 입력/수정구분 (I/U)
    sOfm        : Variant;     // 입력/수정구분 (I/U)
    ssYYMM      : Variant;
    sEmpno      : Variant;
    sEmpnm      : Variant;
    sEntdt      : Variant;
    sDeptnm     : Variant;
    sCnt        : Variant;
    sPregyn     : Variant;     // 2015.04.14 김승철 추가  산모제외 근무여부

    // 2020.01.05 오정은 추가  전공의 근태
    sDtytime    : Variant;
    sDutytime   : Variant;
    sLevel      : Variant;// 레벨
    sType       : Variant;// 근태구분
    sWotime     : Variant;// 당직시간

    function SelWrktc1():Integer;
    function SelWList():Integer;
    function insWrktc1():Integer;
    function ListWrktc:Integer; //근무형태코드 조회
    function delWrktc1(iCnt:Integer):Integer;

    // 전공의 근태. 2020.01.05 오정은 추가
    function TreeSelWrktc1():Integer;

  end;


   HgaUsGrpt = class
    ssEmpno      : Variant;           // 사번
    ssDeptcd     : Variant;           // 부서
    ssGrpid      : Variant;           // 그룹

    sDeptcd     : VAriant;           // 인증된 부서장

    function SelUsGrpt : Integer;
  end;



//============================================================================//
// 인력현황 통계                                                              //
// 작성일 : 2008.06.17                                                        //
// 작성자 : gawaguci                                                          //
// 관련 테이블 GAINSAMT, GASTATST                                             //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                       //
//----------------------------------------------------------------------------//
//   gawaguci | 2008.06.17  | 최초작성                                        //
//============================================================================//
  HgaStatst = class
    sEmpno      : Variant;
    sLocate     : Variant;
    sYyyymm     : Variant;
    sPremm      : Variant;
    sFlag       : Variant;



    ssEmpno     : Variant;
    ssLocate    : Variant;
    ssYyyymm    : Variant;

    function SelChaStatst() : Integer;
    


  end;


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>고영관 작성 시작>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//============================================================================//
// 부서별인원현황                                                             //
// 작성일 : 2002.01.14                                                        //
// 작성자 : 고 영 관                                                          //
// 관련 테이블 GAINSAMT, CCDEPTCT                                             //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                       //
//----------------------------------------------------------------------------//
//   고영관   | 2002.01.11  | 최초작성                                        //
//============================================================================//
    HgaInsamt = class

      sType1   		: Variant;    // 검색조건1: 사업장
      sType2   		: Variant;    // 검색조건2: 부서구분
      sType3   		: Variant;    // 검색조건3: 선택부서
      sType4   		: Variant;    // 검색조건4: 선택부서
      sType5      : Variant;    // 통합조회인지 아닌지 구분하기 위한것 추가 김홍덕 2006-02-02

      ssLocate    : Variant;    // 사업장
      ssWkareacd  : Variant;    // 근무부서코드

       ssLoate     : Variant;
       ssEmpno     : Variant;
       ssEmpnm     : Variant;
       ssEntdt     : Variant;
       ssDeptcd    : Variant;
       ssDeptnm    : Variant;
       ssWkareacdnm: Variant;
       ssJikcheknm : Variant;
       ssJikwenm   : Variant;
       ssHphoneno  : Variant;
       ssIntelno   : Variant;

      ssSdate     : Variant;
      ssEdate     : Variant;

      sLocate  		: Variant;    // 사업장코드
      sLocatenm		: Variant;    // 사업장명
      sDeptcd  		: Variant;    // 부서코드
      sDeptnm  		: Variant;    // 부서명
      sCount   		: Variant;    // 인원수
      sGayn    		: Variant;    // 구분

      sEmpno         : Variant;    // 사번
      sEmpnm         : Variant;    // 성명
      sResno         : Variant;    // 주민번호
//    sDeptnm        : Variant;
      sEntdt         : Variant;    // 입사일
      sPatno         : Variant;    // 환자번호 이종명추가 20170621
      sRetdt         : Variant;    // 퇴사일
      sJikjongnm     : Variant;    // 직종
      sJikwenm       : Variant;    // 직위
      sSexcd         : Variant;    // 성별  // 김용욱 추가 2005-10-26

      sWkareacd      : Variant;    // 근무부서코드
      sWkareanm      : Variant;    // 근무부서명
      sJikwe         : Variant;    // 직위코드
      sHobong        : Variant;    // 호봉

      sCdprtseq      : Variant;    // 직위정렬순서
      sSortseq       : Variant;    // 부서내 사원정렬순서

      sEditid        : Variant;    // 수정자
      sEditip        : Variant;    // 수정아이피

      sTelno         : Variant;    // 전화번호 20060602  

      sMilyuk        : Variant;    // 군필여부 (역종)
      sMilbrnc       : Variant;    // 병과
      sMilkind       : Variant;    // 군별
      sMilno         : Variant;    // 군번
      sMilgrade      : Variant;    // 계급
      sMilsrt        : Variant;    // 복무기간시작
      sMilend        : Variant;    // 복무기간종료

      sMilyuknm      : Variant;    // 역종이름  20060604   추가
      sMilkindnm     : Variant;    // 군별이름  20060604   추가
      sMilgradenm    : Variant;    // 계급이름  20060604   추가

      sDeptjang      : Variant;    // 부서장  20060923   추가
      sJikgunnm      : Variant;    // 직군명  20061013   추가
      sJikmunm       : Variant;    // 직무명  20061103 추가



      function ListGaInsamt(sType1,sType2,sType3,sType4: String):Integer;    // 부서코드, 부서명, 인원조회.
      function List2GaInsamt() : integer;                             // 부서현황 상세정보 조회.
      function ListGaInsamt4 : integer;                               // 특근일괄입력 대상자 => 해당근무부서의 사원조회

      function ListGaInsamt5 : integer;                               // 해당근무부서에 재직중인 사원들 => 부서인원 순위지정에서 사용

      function SaveGaInsamt3(iCnt :Integer) :Integer;                 // 해당근무부서에 사원들의 정렬순서를 수정한다.

      function ListgaInsamt6 : Integer;                               // 예비군대상자조회 20060602

      function SaveGaInsamt4 : Integer;

      function ListgaInsamt7 : Integer;

      function ListgaInsamt8 : Integer;

      function List2GaInsamt2 : Integer;




    end;

//============================================================================//
// 자격면허현황(GAQULIDT)                                                     //
// 작성일 : 2002.01.18                                                        //
// 작성자 : 고 영 관                                                          //
// 관련 테이블 GAINSAMT, CCDEPTCT, CCCOMCDT                                   //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                       //
//----------------------------------------------------------------------------//
//   고영관   | 2002.01.18  | 최초작성                                        //
//============================================================================//
    HgaQulidt = class

      sType1   	: Variant;    // 검색조건1:  자격면허
      sType2   	: Variant;    // 검색조건2:  부서
      sType3   	: Variant;    // 검색조건3:  직종
      sType4   	: Variant;    // 검색조건4:  재직여부
      sType5   	: Variant;    // 검색조건5:  사업장
      sType6   	: Variant;    // 검색조건6:  사번

      sLcncdnm    : Variant;    // 자격면허
      sDeptnm 	   : Variant;    // 소속부서
      sWkareanm   : Variant;    // 근무부서
      sResno      : Variant;
      sJikmu      : Variant;
      sJikjongnm  : Variant;    // 직종
      sEmpnm    	: Variant;    // 성명
      sEmpno      : Variant;    // 사번
      sGetdate    : Variant;    // 취득일
      sLcnno    	: Variant;    // 자격면허번호
      sOrgcdnm    : Variant;    // 발행기관

      function ListGaQulidt : integer; //자격면허사항 조회

    end;

HgaDptto  = class

    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일

    strLocate       : Variant;         //
    strDeptcd       : Variant;         //
    strSinbun       : Variant;         //
    strJikjong      : Variant;         //
    strDate         : Variant;         //

    sLocate       : Variant;          //
    sWkareacd     : Variant;          //
    sWkareanm     : Variant;
    sDeptcd       : Variant;          //
    sDeptnm       : Variant;          //
    sJikmu        : Variant;          //
    sJikjong      : Variant;          //
    sSDATE        : Variant;          //
    sUpdown       : Variant;          //
    sDPTTO        : Variant;          //
    sBIGO         : Variant;          //



    sEmpnm        : Variant;
    sResno        : Variant;
    sEntdt        : Variant;
    sRetdt        : Variant;
    sIdent        : Variant;
    sEmpno        : Variant;

    sMode         : Variant;


    function SelDptto1():Integer;
    function SelDiet():Integer;

    function SaveDptto1 :Integer;
    function SaveDiet :Integer;



  end;


HgaTalkht  = class

    sEditid       : Variant;          // 수정자ID
    sEditip       : Variant;          // 수정자IP
    sEditdate     : Variant;          // 수정일
    sEditNm       : Variant;

    sLocate       : Variant;          //
    sWkareacd     : Variant;          //
    sDeptcd       : Variant;          //
    sTalkdate     : Variant;          //
    sWritedate    : Variant;          //
    sTalk         : Variant;
    sGubun        : Variant;
    sGubun1        : Variant;

    sEmpno        : Variant;
    ssEmpno       : Variant;

    sTemp1        : Variant;
    sTemp2        : Variant;
    sTemp3        : Variant;
    sTemp4        : Variant;

    sFlag         : Variant;

    function SelTalk():Integer;
    function SaveTalk :Integer;

    function SelTalkList:Integer;

  end;

//============================================================================//
// 공통코드관리(CCCOMCDT)                                                     //
// 작성일 : 2002.01.18                                                        //
// 작성자 : 고 영 관                                                          //
// 관련 테이블                                                                //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                       //
//----------------------------------------------------------------------------//
//   고영관   | 2002.01.18  | 최초작성                                        //
//============================================================================//
    HccComcdt = class

      sLargcd   : Variant;    // 대분류코드
      sCdabbrnm : Variant;    // 코드약어명
      sCdetca   : Variant;    // 기타사용A
      sCdetcb   : Variant;    // 기타사용B
      sCdetcc   : Variant;    // 기타사용C
      sCdmaxval : Variant;    // 최대값
      sCdminval : Variant;    // 최소값
      sCdprtnm  : Variant;    // 출력코드명
      sCdprtseq : Variant;    // 출력순서
      sCdvalue  : Variant;    // 코드값
      sComcddtl : Variant;    // 소분류코드
      sComcdnm  : Variant;    // 코드명
      sDeldate  : Variant;    // 삭제일
      sEditdate : Variant;    // 수정일
      sEditid   : Variant;    // 수정자ID
      sEditip   : Variant;    // 수정자IP

      sCode     : Variant;    // 수정자IP
      sName     : Variant;    // 수정자IP

      //function ListCcComcdt(sLrgcd : String) : Integer;

    end;

//============================================================================//
// 상훈현황(GAAWARDT)                                                         //
// 작성일 : 2002.01.21                                                        //
// 작성자 : 고 영 관                                                          //
// 관련 테이블                                                                //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                       //
//----------------------------------------------------------------------------//
//   고영관   | 2002.01.21  | 최초작성                                        //
//============================================================================//
    HgaAwardt = class

      sType1     : Variant;    // 검색조건1: 사업장코드
      sType2     : Variant;    // 검색조건2: 소속부서코드
      sType3     : Variant;    // 검색조건3: 상훈구분
      sType4     : Variant;    // 검색조건4: 발생일 START
      sType5     : Variant;    // 검색조건5: 발생일 END
      sType6     : Variant;    // 검색조건6: 재직구분

      sEmpnm     : Variant;    // 성명
      sEmpno     : Variant;    // 개인번호
      sDeptnm    : Variant;    // 부서명
      sAwardate  : Variant;    // 상훈발생일
      sAwarcdnm  : Variant;    // 상훈코드명
      sTypecdnm  : Variant;    // 상훈구분코드명
      sRemtxt    : Variant;    // 내용
      sOrg       : Variant;    // 상훈기관명

      sAwarder   : Variant;    // 수여자 20061010
      sWkareanm  : Variant;    // 근무부서 20061229

      function ListGaAwardt() : Integer;

    end;

//============================================================================//
// GAPUNSDT(징계사항)                                                         //
// 작성일 : 2002.01.22                                                        //
// 작성자 : 고 영 관                                                          //
// 관련 테이블                                                                //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                       //
//----------------------------------------------------------------------------//
//   고영관   | 2002.01.22  | 최초작성                                        //
//============================================================================//
    HgaPunsdt = class

      sType1     : Variant;    // 검색조건1: 사업장
      sType2     : Variant;    // 검색조건2: 부서
      sType3     : Variant;    // 검색조건3: 징계일자 START
      sType4     : Variant;    // 검색조건4: 징계일자 END
      sType5     : Variant;    // 검색조건5: 재직구분
      sType6     : Variant;    // 검색조건6: 징계구분명

      sEmpnm     : Variant;    // 성명
      sEmpno     : Variant;    // 개인번호
      sDeptnm    : Variant;    // 부서명
      sSdate     : Variant;    // 징계시작일
      sEdate     : Variant;    // 징계종료일
      sPuncdnm   : Variant;    // 징계명
      sTypecd    : Variant;    // 징계구분명
      sRemtxt    : Variant;    // 내용
      sOrg       : Variant;    // 징계기관명

      sWkareanm  : Variant;    // 근무부서명  20061009

      function ListGaPunsdt() : Integer;

    end;

//============================================================================//
// GAMASTER(인원현황)                                                         //
// 작성일 : 2002.01.23                                                        //
// 작성자 : 고 영 관                                                          //
// 관련 테이블                                                                //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                       //
//----------------------------------------------------------------------------//
//   고영관   | 2002.01.23  | 최초작성                                        //
//============================================================================//
    HgaMaster = class
      sType1     : Variant;    // /* 사업장       */
      sType2     : Variant;    // /* 부서코드     */
      sType3     : Variant;    // /* 근무부서코드 */
      sType4     : Variant;    // /* 제직구분 '0'=전체, '1'=재직, '2'=퇴직  */
      sType5     : Variant;    // /* 직군코드   */
      sType6     : Variant;    // /* 직책코드   */
      sType7     : Variant;    // /* 직종코드   */
      sType8     : Variant;    // /* 직위코드   */
      sType9     : Variant;    // /* 직무코드   */
      sType10    : Variant;    // 기준일 20061010

      sEmpno     : Variant;    // 개인번호
      sEmpnm     : Variant;    // 성명
      sEntdt     : Variant;    // 입사일
      sRetdt     : Variant;    // 퇴사일
      sJikgunnm  : Variant;    // 직군명
      sJikjongnm : Variant;    // 직종명
      sJikwenm   : Variant;    // 직위명  
      sJikcheknm : Variant;    // 직책명  
      sJikgupnm  : Variant;    // 직급명  
      sHobong    : Variant;    // 호봉    
      sDeptnm    : Variant;    // 부서명
      sWkareanm  : Variant;    // 근무지명
      sResno     : Variant;    // 근무지명



      function ListGaMaster() : Integer;

    end;
//============================================================================//
// CCDEPTCT(부서조회)                                                          //
// 작성일 : 2002.01.24                                                         //
// 작성자 : 고 영 관                                                           //
// 관련 테이블                                                                 //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                        //
//----------------------------------------------------------------------------//
//   고영관   | 2002.01.24  | 최초작성                                         //
//============================================================================//
    HccDeptct = class

      sType1	    : Variant;    // 검색조건1: 사업장코드

      sChadate    : Variant;    //변경일자
      sChadept    : Variant;    //변경전부서코드
      sConsyn 	  : Variant;    //외래진료단위부서(클리닉 등 포함)
      sCostyn 	  : Variant;    //원가단위 여부
      sDeldate    : Variant;    //폐기일자
      sDeptcd 	  : Variant;    //부서코드
      sDepteng    : Variant;    //부서영문명
      sDeptlvl    : Variant;    //부서레벨
      sDeptnm 	  : Variant;    //부서명
      sDpcd 	    : Variant;    //OCS사용코드
      sEditdate   : Variant;     //수정일
      sEditid 	  : Variant;    //수정자개인번호
      sEditip 	  : Variant;    //수정자 IP
      sGaseq 	    : Variant;    //조회순서(인사) - 성가추가
      sGayn 	    : Variant;    //인사사용 여부
      sGcyn 	    : Variant;    //재무사용 여부
      sGeyn 	    : Variant;    //구매사용 여부
      sLocate 	  : Variant;    //사업장(병원코드)
      sLocateyn   : Variant;    //현위치부서여부
      sOlddepcd   : Variant;    //구시스템부서코드
      sOrdisyn    : Variant;    //오더수행부서
      sPhone 	    : Variant;    //전화번호(하승수요청)
      sPrsgwcd    : Variant;    //진료부 대표과코드
      sPrthseq    : Variant;    //원무출력순서
      sReqyn 	    : Variant;    //타과의뢰(컨설트) 가능부서 (영양과 등 포함)
      sRootflag   : Variant;    //하위레벨 존재여부
      sSeq1 	    : Variant;    //일반적 조회순서
      sSeq2 	    : Variant;    //조회순서(의무기록)
      sSeq3 	    : Variant;    //조회순서(진료)
      sSerialno   : Variant;    //레벨내 순서
      sSpclass    : Variant;    //심평원진료분야
      sSpdept 	  : Variant;    //심평원진료과코드
      sSpseq 	    : Variant;    //심평원진료과순번
      sSupdept    : Variant;    //상위부서코드
      sSupyn 	    : Variant;    //진료지원 사용여부(남궁수경요청)
      sTrndyn 	  : Variant;    //전달체계필요여부
      sWardtype   : Variant;    //병동구분(1.병동,2.중환자)
      sWardyn 	  : Variant;    //병동단위부서
      //sWkseq 	    : Variant;    //조회순서(인사 근무부서) - 성가추가
      //sWkyn 	    : Variant;    //인사사용(근무부서) 여부 - 성가추가

      sCode 	    : Variant;
      sName       : Variant;


    // 소속부서를 가지고 온다.
    function ListGaDeptct  : integer;
    // 소속부서를 가지고 온다.
    function ListGaDeptct1 : integer;
    end;


//============================================================================//
// GAWRKSDT(근태사항조회)                                                      //
// 작성일 : 2002.02.04                                                         //
// 작성자 : 고 영 관                                                           //
// 관련 테이블                                                                 //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                        	//
//----------------------------------------------------------------------------//
//   고영관   | 2002.02.04  | 최초작성                                         //
//============================================================================//
	HgaWrksdt = class

		sType1      : Variant;   // 검색조건1: 개인번호
		sType2      : Variant;   // 검색조건2: 사업장
		sType3      : Variant;   // 검색조건3: 근태코드
		sType4      : Variant;   // 검색조건4: 부서코드
		sType5      : Variant;   // 검색조건5: 인사확인여부
		sType6      : Variant;   // 검색조건6: 근태시작일
		sType7      : Variant;   // 검색조건7: 근태종료일

    sAppDate    :	Variant;	  // 문서 작성일
    sDeptcd     :	Variant;	  // 부서코드
    sSeqno      :	Variant;	  // 작성일련번호
    sAllconyn   :	Variant;	  // 현업결제완료여부
    sFlag       :	Variant;	  // 현업/인사 구분(N/A)
		sIndeptnm   :	Variant;	  // 입력부서
		sEmpno      :	Variant;	  // 개인번호
		sEmpnm      :	Variant;	  // 성명
    sWkcd       :	Variant;	  // 근태코드
		sWknm       :	Variant;	  // 근태구분
		sWksdate    :	Variant;	  // 근태시작일자
		sWkedate    :	Variant;	  // 근태종료일자
		sCnt        :	Variant;	  // 근태일수
    sIndeptcd   : Variant;	  // 입력부서
    sDeptnm     : Variant;	  // 입력부서명
		sRemtxt     :	Variant;	  // 근태사유
		sChkyn      :	Variant;	  // 결제여부(인사부서확인)
    sGenconID   : Variant;    // 인사부서확인자ID
		sEditnm     :	Variant;	  // 입력자  명
		sEditdate   : Variant;    // 수정일
    sEditid     : Variant;    // 수정자ID
    sEditip     : Variant;    // 수정자IP
    sChoice     : Variant;    // 작업구분

    sWkdate     : Variant;    // 근태일
		sLocate     :	Variant;	  // 사업장
		sRefwkcd    :	Variant;	  // 근태코드
    sOldRefwkcd : Variant;    // 이전 근태 코드
    sOldWksdate : Variant;    // 이전 근태시작일
    sOldWkedate : Variant;    // 이전 근태종료일

    sMkDeptcd   : Variant;    // 부서코드
    sMkDeptnm   :	Variant;	  // 작성부서명
    sMkEmpno    : Variant;    // 작성자 사번
    sMkEmpnm    : Variant;    // 작성자 성명
    sAppSeqno   : Variant;    // 작성일련번호
    sDoctype    : Variant;    // 문서종류(W, O, P)
    sRettxt     : Variant;    // 반송사유
    sAppCnt     : Variant;    // 결제진행수
    sInsayn     : Variant;    // 인사부서 여부
    sAppYn      : Variant;

    sNewvcnt    : Variant;    // 신규생성연차(연월차현황 조회시 사용)

    sOldappdate : Variant;   // 이전문서작성일 (저장시 Delete 후에 다시 Insert 하는데 Delete때 사용)

    sWkyymm     : Variant;
    sSat1       : VARIANT;
    sSat2       : VARIANT;
    sSat3       : VARIANT;
    sSat4       : VARIANT;
    sSat5       : VARIANT;
    sSat6       : VARIANT;
    sSat7       : VARIANT;
    sSat8       : VARIANT;
    sSat9       : VARIANT;
    sSat10      : VARIANT;


    sMdate1     : VARIANT;
    sMdate2     : VARIANT;
    sMdate3     : VARIANT;
    sMdate4     : VARIANT;
    sMdate5     : VARIANT;
    sMdate6     : VARIANT;
    sMdate7     : VARIANT;
    sMdate8     : VARIANT;
    sMdate9     : VARIANT;
    sMdate10    : VARIANT;

    sCode1      : VARIANT;
    sCode2      : VARIANT;
    sCode3      : VARIANT;
    sCode4      : VARIANT;
    sCode5      : VARIANT;
    sCode6      : VARIANT;
    sCode7      : VARIANT;
    sCode8      : VARIANT;
    sCode9      : VARIANT;
    sCode10     : VARIANT;

    sReason1    : VARIANT;
    sReason2    : VARIANT;
    sReason3    : VARIANT;
    sReason4    : VARIANT;
    sReason5    : VARIANT;
    sReason6    : VARIANT;
    sReason7    : VARIANT;
    sReason8    : VARIANT;
    sReason9    : VARIANT;
    sReason10   : VARIANT;

    sStm        : Variant;
    sEtm        : Variant;
    sTtm        : Variant;

    sTGempno    : Variant;
    sTGdate     : Variant;
    sTGstime    : Variant;
    sResbstm    : Variant;
    sSnchngyn   : Variant;
    sLoginuser  : Variant;

    ssLocate       : Variant;          
    ssAppdate      : Variant;
    ssMkdeptcd     : Variant;
    ssMkempno      : Variant;
    ssDoctype      : Variant;
    ssAppseqno     : Variant;
    ssLoginuser    : Variant;

    sJikwe         : Variant;


      //여기 다 수정해야함^^
      function ListGaWrksdt2 : Integer;
      function DelGaWrksdt(iCnt : integer) : Integer;

      function DelGaWrksdt2 :Integer;      // 해당문서번호에 해당하는 근태사항을 삭제한다.

      function DelGaSatret :Integer;

      function InsGaWrksdt(iCnt : Integer):Integer;
      function UpdGaWrksdt:Integer;

      function UpdGaWrksdt5:Integer;       // 일근태신청 결재화면에서 총무결재권자이면 근태데이터에 대하여 수정(근태시작일, 종료일, 근태코드)

      function ListGaVacamt : Integer;
      function InsGasatret(iCnt : Integer):Integer;

      function CloseYn : Integer;

      function InsTGsudang(iCnt : Integer) :Integer;
      function ListTGsudang : Integer;

      end;

//============================================================================//
// GAVACACT(근태코드)                                                          //
// 작성일 : 2002.02.04                                                         //
// 작성자 : 고 영 관                                                           //
// 관련 테이블                                                                 //
//----------------------------------------------------------------------------//
//   수정자   | 수정일      |  수정내용                                        //
//----------------------------------------------------------------------------//
//   고영관   | 2002.02.04  | 최초작성                                         //
//============================================================================//
	HgaVacact = class

		sCode1    : Variant;   // 검색조건1:
    sCode2    : Variant;   // 검색조건1:




    sCode     : Variant;   //
    sCodeName : Variant;   //
    SFlag     : Variant;   // 추가 김용욱 2005-12-23
    sWktime   : Variant;

		sRefwkcd  : Variant;	  // 출근일수포함여부
		sWkseq    : Variant;	  // 기본급차감여부
		sWknm     : Variant;	  // 시간/일수구분
		sWkgbn    : Variant;	  // 데이타 Expired Date
		sDaytime  : Variant;	  // 수정일
		sBasdedyn : Variant;	  // 수정자 ID
		sWkday    : Variant;	  // 수정자 IP
		sAttdtcnt : Variant;	  // 근태코드
    sWeekyn   : Variant;   // 주차적용여부
    sEditid   : Variant;   // 근무일수포함여부
    sEditip   : Variant;   // 근태구분 W-근태, O-특근
    sEditdate : Variant;   // 근 태 명
    sDeldate  : Variant;   // 순번

      // 근태코드(GAWRKTCT) 사항을 나타낸다.
    function ListGaVacact(Code1, Code2:String) : integer;
    function ListGaVacact1(Code1, Code2, Code3, Code4 :String) : integer;    
  end;

////////////////////////////////////////////////////////////////////////////////
// 사원 보증사항 조회
// 작성자 : 문태용
// 작성일 : 2004.07.24
// 관련테이블 : GAGUARDT
////////////////////////////////////////////////////////////////////////////////

  HgaGuardt  = class

    sWrntNm1      : Variant;        // 보증인 성명1
    sWrntRel1     : Variant;        // 보증인 관계 1
    sWrntJik1     : Variant;        // 보증인 직업 1
    sWrntJik3     : Variant;        // 보증인 근무부서  20061009
    sWrntSsn1     : Variant;        // 보증인 주민등록 번호1
    sWrntAddr1    : Variant;        // 보증인 주소 1
    sWrntTax1     : Variant;        // 보증인 소득세 1
    sWrntNm2      : Variant;        // 보증인 성명2
    sWrntRel2     : Variant;        // 보증인 관계 2
    sWrntJik2     : Variant;        // 보증인 직업 2
    sWrntSsn2     : Variant;        // 보증인 주민등록 번호2
    sWrntAddr2    : Variant;        // 보증인 주소 2
    sWrntTax2     : Variant;        // 보증인 소득세 2
    sWrntInnm     : Variant;        // 보증보험명
    sWrntConm     : Variant;        // 보증회사명
    sWrntAmt      : Variant;        // 보험금
    sWrntFee      : Variant;        // 보험료
    sWrntInno     : Variant;        // 보험번호

    sEmpno        : Variant;        // 개인번호
    sLocate       : Variant;        // 사 업 장
    sEditid       : Variant;         // 수정자ID
    sEditip       : Variant;         // 수정자IP
    sEditdate     : Variant;         // 수정일

    sCodsrh       : Variant;        // 조회되는 사원코드
    sChoice       : Variant;        // 입력/수정구분(I/U)
    sWrntcls      : Variant;        // 보증구분(P인보증, C보증보험)
    sWrntSdate    : Variant;        // 보증시작일
    sWrntEdate    : Variant;        // 보증종료일
    sWrntSDate_Old: Variant;        // 보증시작일(변경전)
    sWrntEDate_Old: Variant;        // 보증종료일(변경전)
    sWrntcls_Old  : Variant;        // 보증구분(변경전)

    function SelGuardt():Integer;
    function SelGuardtAll(sLocate,                       // 사업장
                          sDeptCd,                       // 부서코드
                          sWrntCls,                      // 보증구분
                          sWrntSDate,                    // 보증시작일
                          sWrntEDate,                    // 보증종료일
                          sJejikGbn :String):Integer;    // 재직구분


    function InUpdGuardt():Integer;
    function DelGuardt():Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// 사원 건강사항 조회
// 작성자 : 문태용
// 작성일 : 2004.07.25
// 관련테이블 : GAHEALTT
////////////////////////////////////////////////////////////////////////////////
  HgaHealth  = class

    sGaHight      : Variant;        //신장
    sWaWeight     : Variant;        //체중
    sEyeLeft      : Variant;        //시력(좌)
    sEyeRight     : Variant;        //시력(우)
    sGlsLeft      : Variant;        //교정시력(좌)
    sGlsRight     : Variant;        //교정시력(우)
    sColorTyp     : Variant;        //색맹
    sBloodTy      : Variant;        //혈액형
    sBloodPle     : Variant;        //혈압
    sEarLeft      : Variant;        //청력(좌)
    sEarRight     : Variant;        //청력(우)
    sGaTooth      : Variant;        //치주질환
    sGaLiver      : Variant;        //간염여부
    sCholestrol   : Variant;        //콜레스테롤
    sGaCloseexm   : Variant;        //정밀건진여부
    sGaxray       : Variant;        //방사선 결과
    sGaTotView    : Variant;        //종합소견

    sEmpno        : Variant;        //개인번호
    sLocate       : Variant;        //사 업 장
    sGenDate      : Variant;         //건강검진일
    sEditid       : Variant;        //수정자ID
    sEditip       : Variant;        //수정자IP

    sCodsrh       : Variant;        //조회되는 사원코드
    sChoice       : Variant;        //입력/수정구분(I/U)
    sGenDate_Old  : Variant;        //건강검진일(변경전)

    function SelHealth():Integer;
    function InUpdHealth():Integer;
    function DelHealth():Integer;
  end;

  HgaOffdrt  = class

    sFromDate     : Variant;
    sToDate       : Variant;
    sOffResnNm    : Variant;
    sRemark       : Variant;
    sAMPMFLAG     : Variant;
    sType1        : Variant;
    sDeptcd       : Variant;
    sLocate       : Variant;

    ssEmpno       : variant;
    ssUsername    : variant;    

    ssFromDate    : variant;
    ssToDate      : variant;
    ssOffResnNm   : variant;
    ssRemark      : variant;
    ssAMPMFlag    : variant;
    ssMeddr       : variant;
    
  function ListDrOff :Integer;

  end;

 {HAPMEDSHT  // 의사진료일정, 의사휴진일정 (진료의 MDSCHDRT, MDOFFDRT 테이블) }
   HGAMEDSHT = class
      sMeddept   : Variant;   // 진료과/진료부서
      sMeddr     : Variant;   // 진료의사(발행의사)
      sEmpno     : Variant;
      sMeddate   : Variant;   // 진료일자/입원일자
      sExamtm    : Variant;   // 진료(예정)시간
      lFstcnt    : Variant;   // 초진가능인원
      lRecnt     : Variant;   // 재진가능인원
      lTotcnt    : Variant;   // 총환자수/총가능인원
      lOfstcnt   : Variant;   // 최초초진가능인원
      lOrecnt    : Variant;   // 최초재진가능인원
      lOtotcnt   : Variant;   // 최초총환자수/총가능인원
      lRsvfcnt   : Variant;   // 초진예약인원
      lRsvrcnt   : Variant;   // 재진예약인원
      lRsvtcnt   : Variant;   // 총예약인원
      sCnt       : Variant;   // 예약인원/예약정원(초/재진)
      sFromdate  : Variant;   // 휴진시작일자
      sTodate    : Variant;   // 휴진종료일자
      sOffresn   : Variant;   // 휴진사유코드
      sRemark    : Variant;   // 비고
      sEditid    : Variant;   // 수정자 ID
      sEditip    : Variant;   // 수정자 IP
      sEditdate  : Variant;   // 수정일시
      sDd        : Variant;   // 일자
      sAmpm      : Variant;   // 오전,오후구분(AM,PM)
      sMeddeptnm : Variant;   // 부서명
      sMeddrnm   : Variant;   // 의사명
      sOffresnnm : Variant;   // 휴진사유명
      sLicno     : Variant;   // 의사면허
      sComments  : Variant;   // 코멘트
      sAmpmflag  : Variant;   // 오전오후구분
      holcnt     : Variant;
      sFlag      : variant;   // 조회구분      
      sNoFlag    : variant;   // 초/재진 구분
      sUseyn     : variant;
      sSpcdryn   : variant;
      sHolyday   : variant;
      sDays      : variant;
      sOffdr     : variant;   // 휴진 구분

      //-----------------------------------------------------------
      function MEDSH_S1 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S1
      //-----------------------------------------------------------
      // 의사의 월별 진료예약현황을 집계한다.
      //
      // argument : sMeddept, sMeddr, sMeddate('YYYY-MM')
      //-----------------------------------------------------------

      //-----------------------------------------------------------
      function MEDSH_S2 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S2
      //-----------------------------------------------------------
      // 의사의 일별 진료예약현황조회
      //
      // argument : sMeddept, sMeddr, sMeddate('YYYY-MM-DD')
      //-----------------------------------------------------------

      //-----------------------------------------------------------
      function MEDSH_S3 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S3
      //-----------------------------------------------------------
      // 진료과별 일별 진료가능의사및 시간조회
      // argument : sMeddept, sMeddate('YYYY-MM-DD')
      //-----------------------------------------------------------

      //-----------------------------------------------------------
      function MEDSH_S4 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S4
      //-----------------------------------------------------------
      // 휴진일자(from, to) 에 따른 진료과, 진료의사별 휴진일정조회
      // argument : sMeddept, sMeddr, sFromdate, sTodate
      //-----------------------------------------------------------
   end;


  HgaSchult  = class
    sGivyymm      : Variant;
    sDutydate     : Variant;
    sDuty01       : Variant;
    sMkEmpno      : Variant;

    sFromdate1    : Variant;
    sFromdate2    : Variant;
    sFromdate3    : Variant;

    sTodate1      : Variant;
    sTodate2      : Variant;
    sTodate3      : Variant;
    sMemo         : Variant;

    sEmpnm        : Variant;
    sFlag         : Variant;
    sMKDeptcd     : Variant;
    sEmpno        : Variant;        //개인번호
    sGmode        : Variant;        //
    sLocate       : Variant;        //사 업 장
    sDeptcd       : Variant;        //사 업 장
    sSeqno        : Variant;
    sDays         : Variant;
    sWkareacd     : Variant;
    sJikjong      : Variant;
    sSelectEmp    : Variant;
    sGbn          : Variant;
    sRemtxt       : Variant;
    sStdt         : Variant;        //시작일
    sSttime       : Variant;        //시작시간
    sEndtime      : Variant;        //종료시간
    sEditid       : Variant;        //수정자ID
    sEditip       : Variant;        //수정자IP
    sIntelno      : Variant;        //수정자IP
    sPagerno      : Variant;        //수정자IP
    sHphoneno     : Variant;        //수정자IP
    ssEmpno       : Variant;
    ssEmpnm       :variant;
    ssFromdate    :variant;
    ssTodate      : Variant;
    ssHobong      :variant;
    ssEntdt       :variant;
    ssFromdt      :variant;
    ssGiyymm      :variant; 
    ssRetdt       :variant;
    ssDeptcd      :variant;
    ssDeptnm      :variant;
    ssWkareacd    :variant;
    ssWkareanm    :variant;
    ssDpcd        :variant;
    ssJikmu       :variant;
    ssJikmunm     :variant;
    ssJikmuseq    :variant;
    ssDutydate    : Variant;
    ssDuty         : Variant;
    ssDutynm      : Variant;
    ssJikchek     :variant;
    ssJikchecknm  :variant;
    ssJikcheckseq :variant;
    ssJikwe       :variant;
    ssJikwenm     :variant;
    ssRemark      :variant;
    ssJikweseq    :variant;

    ssFromdate1   :Variant;
    ssFromdate2   :Variant;
    ssFromdate3   :Variant;
    ssFromdate4   :Variant;
    ssFromdate5   :Variant;
    ssFromdate6   :Variant;
    ssFromdate7   :Variant;
    ssFromdate8   :Variant;
    ssFromdate9   :Variant;
    ssFromdate10   :Variant;
    ssFromdate11   :Variant;
    ssFromdate12   :Variant;
    ssFromdate13   :Variant;

    ssTodate1     :Variant;
    ssTodate2     :Variant;
    ssTodate3     :Variant;
    ssTodate4     :Variant;
    ssTodate5     :Variant;
    ssTodate6     :Variant;
    ssTodate7     :Variant;
    ssTodate8     :Variant;
    ssTodate9     :Variant;
    ssTodate10     :Variant;
    ssTodate11     :Variant;
    ssTodate12     :Variant;
    ssTodate13     :Variant;    

    ssMeMo        :Variant;

    ssDeptcd1     :Variant;
    ssDeptcd2     :Variant;
    ssDeptcd3     :Variant;
    ssDeptcd4     :Variant;
    ssDeptcd5     :Variant;
    ssDeptcd6     :Variant;
    ssDeptcd7     :Variant;
    ssDeptcd8     :Variant;
    ssDeptcd9     :Variant;
    ssDeptcd10     :Variant;
    ssDeptcd11     :Variant;
    ssDeptcd12     :Variant;
    ssDeptcd13     :Variant;


    ssLocate      : Variant;
    ssGivyymm     : Variant;
    ssMonth       : Variant;
    ssStdt        : Variant;
    ssSttime      : Variant;
    ssEndtime     : Variant;
    ssWkareacdnm  : Variant;
    ssDeptcdnm    : Variant;
    ssRemtxt      : Variant;
    ssEditid      : Variant;
    ssFlag        : Variant;
    ssEditip      : Variant;
    ssGbn         : Variant;
    ssTelno       : Variant;
    ssSeqno       : Variant;
    ssIntelno     : Variant;
    ssPagerno     : Variant;
    ssHphoneno    : Variant;
    ssInPhoneno   : Variant;
    ssDays        : Variant;
   ssDay1        :Variant;
    ssDay2        :Variant;
    ssDay3        :Variant;
    ssDay4        :Variant;
    ssDay5        :Variant;
    ssDay6        :Variant;
    ssDay7        :Variant;
    ssDay8	      :Variant;
    ssDay9        :Variant;
    ssDay10       :Variant;
    ssDay11       :Variant;
    ssDay12       :Variant;
    ssDay13       :Variant;
    ssDay14	      :Variant;
    ssDay15	      :Variant;
    ssDay16	      :Variant;
    ssDay17	      :Variant;
    ssDay18	      :Variant;
    ssDay19	      :Variant;
    ssDay20	      :Variant;
    ssDay21	      :Variant;
    ssDay22	      :Variant;
    ssDay23	      :Variant;
    ssDay24	      :Variant;
    ssDay25       :Variant;
    ssDay26       :Variant;
    ssDay27       :Variant;
    ssDay28	      :Variant;
    ssDay29       :Variant;
    ssDay30	      :Variant;
    ssDay31	      :Variant;


    ssDeptnm1     :Variant;
    ssDeptnm2     :Variant;
    ssDeptnm3     :Variant;
    ssDeptnm4     :Variant;
    ssDeptnm5     :Variant;
    ssDeptnm6     :Variant;
    ssDeptnm7     :Variant;
    ssDeptnm8     :Variant;
    ssDeptnm9     :Variant;
    ssDeptnm10    :Variant;
    ssDeptnm11    :Variant;
    ssDeptnm12    :Variant;
    ssDeptnm13    :Variant;



    function SelSchList1() :Integer;
    function SelSchList2() :Integer;
    function SetInformat() :Integer;
    function GetEmpInfomat() : Integer;
    function DelInformat(iCnt : Integer) : Integer;
    function GetEmpSelectList() : Integer;

    function SetDoctorList(iCnt :Integer) : Integer;
    function SetDoctorList1(iCnt :Integer) : Integer;

    function GetItList() : Integer;

    function SetList(iCnt : Integer) : Integer;

    function selectIntenList() : Integer;    

    function GetList : Integer;
    function GetDutylist() : Integer;
    function GetDutylist1() : Integer;

    function MainSave()    : Integer;

    function MainWorkList() : Integer;

  end;

 


////////////////////////////////////////////////////////////////////////////////
// 사원 연월차 현황 조회
// 작성자 : 문태용
// 작성일 : 2004.07.27
// 관련테이블 : GAHEALTT
////////////////////////////////////////////////////////////////////////////////
  HgaVacamt  = class
    ssLocate      : Variant;        //사업장
    ssEmpno       : Variant;        //사원번호
    ssYear        : Variant;        //년도
    ssSDate       : Variant;        //검색시작일
    ssEDate       : Variant;        //검색종료일
    ssGrade       : Variant;
    sgbn          : Variant;        //구분

    sEmpnm        : Variant;        //사원명
    sResNo        : VAriant;        //주민번호
    sCuryymm      : Variant;        //적용년월
    sEnterDate    : Variant;        //입사일
    sTotVCnt      : Variant;        //누적연차
    sNewVCnt      : Variant;        //신규발생연차
    sUseVCnt      : Variant;        //사용월차
    sRemVCnt      : Variant;        //잔여월차
    sTotMCnt      : Variant;        //누적월차
    sNewMCnt      : Variant;        //신규발생월차
    sUseMCnt      : Variant;        //사용월차
    sRemMCnt      : Variant;        //잔여월차
    sNewWCnt      : Variant;        //신규발생생휴
    sUseWCnt      : Variant;        //사용생휴

    sEmpno        : Variant;        //개인번호
    sLocate       : Variant;        //사 업 장
    sDeptCd       : Variant;        //부서
    sEditid       : Variant;        //수정자ID
    sEditip       : Variant;        //수정자IP

    sCodsrh       : Variant;        //조회되는 사원코드
    sChoice       : Variant;        //입력/수정구분(I/U)
    sCuryymm_Old  : Variant;        //적용년월
    sDutydate     : Variant;        //근태일자

    sRetdt        : Variant;        //퇴사일자 추가 박종화 JI 2006-01-03
    sDeptGubn     : Variant;        // 추가 김용욱 2006-01-07

    sFirst        : Variant;        //처음 여부 추가 김용욱 2006-01-31
    sGubn         : Variant;
    sTsamt        : Variant;        //년차 수당

    sDuty         : Variant;        // 근무코드
    sAppseqno     : Variant;        // 일별근태 문서번호
    sRemtxt       : Variant;        // 근태사유
    sWrktnm       : Variant;        // 근태명

    sDeptnm       : Variant;        // 부서명  2006-09-11 추가
    sWkareanm     : Variant;        // 근무부서명  2021-05-13 추가
    sVaCnt        : Variant;

    ssDeptcd      : Variant;        //부서코드 2006-09-12 추가

    sUsePre         : Variant;     // 사용율           2006-09-12 추가
    sPreYearNewVCnt : Variant;     // 전년도 발생연차  2006-09-12 추가
    sAccloc         : Variant;
    sWkareacd       : Variant;
    sPreYearUseVCnt : Variant;     
    sDeptnm1        : Variant;     

    function SelVacamtEmp():Integer;    // 해당사원의 신규발생년차, 사용년차, 잔여년차를 조회
    function SelVacamtEmp2():Integer;   // 해당사원의 년차사용 상세내역을 조회
    function SelVacamt():Integer;       // 해당사원의 해당년도 년차현황을 조회

    function SelVacamtDept():Integer;
    function SelVacamtAll():Integer;
    function InUpdVacamt(iCnt : Integer):Integer;
    function InUpdVacamtAll(iCnt : Integer):Integer;

    function SelYearUseVCnt() : Integer;
    function SelYearUseVCnt2() : Integer;
    function SelYearUseVCnt3() : Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// 연봉계약현황 조회
// 작성자 : 문태용
// 작성일 : 2004.08.10
// 관련테이블 : GAINSAMT, GBPMSTMT
////////////////////////////////////////////////////////////////////////////////
  HgaSalary = class
    sType1        : Variant;  // 소속부서
    sType2        : Variant;  // 근무부서
    sType3        : Variant;  // 직군
    sType4        : Variant;  // 직종
    sType5        : Variant;  // 직급
    sType6        : Variant;  // 계약연월(From)
    sType7        : Variant;  // 계약연월(To)
    sType8        : Variant;  // Locate
    sType9        : Variant;  // 재직자구분 20061009
    sGubn         : Variant;  // 조회구분(0 : 연봉계약현황 조회, 1 : 만료 예정자 조회)

    sEmpNm        : Variant;  // 성명
    sEmpNo        : Variant;  // 사원번호
    sDeptNm       : Variant;  // 소속부서
    sJikGun       : Variant;  // 직군
    sJikJong      : Variant;  // 직종
    sJikGup       : Variant;  // 직급
    sConSDate     : Variant;  // 계약시작일
    sConEDate     : Variant;  // 계약만료일
    sMonthPay     : Variant;  // 월지급액
    sConMoney     : Variant;  // 연봉

    sWkareanm     : Variant;
    sJikmu        : Variant;
    sJikong       : Variant;
    sEnddate      : Variant;
    sJikwe        : Variant;
    sAponm        : Variant;





    function GetSalary():Integer;
    function GetSalary2():Integer;


  end;

////////////////////////////////////////////////////////////////////////////////
// 동호회/협회 코드관리
// 작성자 : 문태용
// 작성일 : 2004.08.14
// 관련테이블 : GASOCICT
////////////////////////////////////////////////////////////////////////////////
  HgaAssoct = Class
    sSocscd       : Variant;    // 동호회코드
    sLocate       : Variant;    // 사업장코드
    sSocsnm       : Variant;    // 동호회명
    //sGbn          : Variant;    // 구분
    sSort         : Variant;    // 조회순서
    sAmt          : Variant;    // 동호회비
    sYn           : Variant;    // 사용여부
    sEditid       : Variant;    // 수정자 ID
    sEditip       : Variant;    // 수정자 IP
    sDeldate      : Variant;    // 삭제일
    sChoice       : Variant;    // 작업구분

    function SelAssociation : Integer;
    function InsUpAssociation : Integer;
    function DelAssociation(iCnt : Integer):Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// 동호회/협회 코드관리
// 작성자 : 문태용
// 작성일 : 2004.08.14
// 관련테이블 : GASOCIDT
////////////////////////////////////////////////////////////////////////////////
  HgaSocidt = Class
    ssLocate      : Variant;    // 사업장코드
    ssEmpno       : Variant;    // 사원번호
    ssSocscd      : Variant;    // 동호회/협회코드

    sSocscd       : Variant;    // 동호회코드
    sLocate       : Variant;    // 사업장코드
    sEmpno        : Variant;    // 사원번호
    sEmpnm        : Variant;    // 사원명
    sDeptcd       : Variant;    // 부서코드
    sDeptnm       : Variant;    // 부서명
    sSocsnm       : Variant;    // 동호회명
    sAmt          : Variant;    // 동호회비
    sDt           : Variant;    // 가입일
    sEnddt        : Variant;    // 탈퇴일
    sJikcheknm    : Variant;    // 직책명
    sRemtxt       : Variant;    // 비고
    sEditid       : Variant;    // 수정자 ID
    sEditip       : Variant;    // 수정자 IP
    sDeldate      : Variant;    // 삭제일
    sChoice       : Variant;    // 작업구분

    function ListGaSocidt : Integer;
    function SaveGaSocidt : Integer;
  end;


////////////////////////////////////////////////////////////////////////////////
// 근태 결재권자 등록
// 작성자 : 문태용
// 작성일 : 2004.08.20
// 관련테이블 : GADPOVTT
////////////////////////////////////////////////////////////////////////////////
  HgaConfirm = class
    sEmpno        : Variant;    // 사원번호
    sEmpnm        : Variant;    // 사원명
    sLocate       : Variant;    // 사업장코드
    sDeptCD       : Variant;    // 부서코드(승인부서코드)
    sDeptnm       : Variant;    // 부서명
    sDeptGBN      : Variant;    // 부서구분(0 : 소속, 1: 근무부서)
    sRQDegreeCD   : Variant;    // 등급(1: 승인자, 2 : 결재자)
    sRQDegreeNM   : Variant;    // 등급(1: 승인자, 2 : 결재자)
    sRemtxt       : Variant;    // 비고

    sType1        : Variant;    // 조회조건 1
    sType2        : Variant;    // 조회조건 2
    sType3        : Variant;    // 조회조건 3
    sEditid       : Variant;    // 수정자 ID
    sEditip       : Variant;    // 수정자 IP
    sDeldate      : Variant;    // 삭제일
    sChoice       : Variant;    // 작업구분

    function SelConfirmList : Integer;
    function InsUpConfirmList : Integer;
    function DelConfirmList(iCnt : Integer) : Integer;

  end;

////////////////////////////////////////////////////////////////////////////////
// 일특근사항
// 작성자 : 문태용
// 작성일 : 2004.08.20
// 관련테이블 : GAOVEDDT
////////////////////////////////////////////////////////////////////////////////
  HgaOverddt = Class
    ssLocate     : Variant;    // 사업장 코드
    ssSDate      : Variant;    // 조회 시작일자
    ssEDate      : Variant;    // 조회 종료일자
    ssMkdeptcd   : Variant;    // 작성부서 코드
    ssFromAppdate: Variant;    // 작성부서 코드
    ssToAppdate  : Variant;    // 작성부서 코드

    ssDeptcd     : Variant;
    ssWkareacd   : Variant;



    ssAppDate    : Variant;    // 작성일자
    ssAppSeqno   : Variant;    // 작성 일련번호
    ssMkEmpno    : Variant;    // 작성자 사번
    ssDocType    : Variant;    // 문서종류
    ssLoginuser  : Variant;    // 로그인사원 사번
    ssAppEmpno   : Variant;    // 특근 결재 조회 사번 20200403 오정은 추가 

    sLocate      : Variant;    // 사업장 코드
    sAppdate     : Variant;    // 작성일자
    sMkdeptcd    : Variant;    // 작성부서
    sAppseqno    : Variant;    // 작성 일련번호
    sMkempno     : Variant;    // 작성자 사번
    sDoctype     : Variant;    // 문서종류
    sEmpno       : Variant;    // 사원번호
    sWkdate      : Variant;    // 특근일자
    sWkstime     : Variant;    // 특근시작시간
    sWketime     : Variant;    // 특근종료시간
    sWeekcnt     : Variant;    // 주차
    sCnt         : Variant;    // 특근시간수
    sCntovr      : Variant;    // 시간외
    sCntnig      : Variant;    // 심야
    sRemtxt      : Variant;    // 특근사유
    sRettxt      : Variant;    // 반송사유
    sAllconyn    : Variant;    // 결재완료 여부
    sChkyn       : Variant;    // 인사확인 여부
    sGenconid    : Variant;    // 인사부서 확인자
    sEmpnm       : Variant;    // 성명
    sMkempnm     : Variant;    // 작성자 성명
    sJikwe       : Variant;    // 사원 직위
    sEditid      : Variant;    // 수정자 ID
    sEditip      : Variant;    // 수정자 IP
    sInsayn      : Variant;    // 인사부서 여부
    sAppyn       : Variant;    // 결재여부
    sZyn         : Variant;    // 보상휴가여부   2018-07 이지윤 추가

    sDeptnm      : Variant;    // 부서명
    sCompayt     : Variant;    // 통상임금
    sDocstep     : Variant;    // 문서단계

    sFlag        : Variant;    // 특근취소여부Flag
    ssEmpno      : Variant;    // 

    sMkDeptnm    : Variant;    // // 작성부서명 김용욱 추가 2005-11-04
    sOldappdate  : Variant;    // 이전문서작성일 (저장시 Delete 후에 다시 Insert 하는데 Delete때 사용)
    sOldWkstime  : Variant;    // 이전근태시작시간
    sOldWketime  : Variant;    // 이전근태종료시간

    sAmt         : Variant;    // 시간외 수당

    


    //function SelOverddT   : Integer;
    function ListOveddt   : Integer;    // 일별 특근 신청 조회
    function DelOverddt(iCnt : Integer) : Integer;


    function ListOveddt6 : Integer;      // 일별특근신청 마스터조회 (ga_ovedt_l6.pc)
    function ListOveddt7 : Integer;      // 일별특근신청 디테일조회 (ga_ovedt_l7.pc)
    function ListOveddt8 : Integer;      // 일별특근신청화면 특근취소 팝업창 => 총무결재완료된 특근취소할 데이터 조회(ga_ovedt_l8.pc)
    function ListOveddt9 : Integer;      // 총무팀 일별특근조회 (ga_ovedt_l9.pc)
    function ListOveddt10 : Integer;      // 총무팀 일별특근조회 (ga_ovedt_l9.pc)


    function DelOverddt2 : Integer;      // 일별특근신청 삭제(문서전체삭제)
    function UpdateOverddt5 : Integer;   // 특근결재에서 결재권자 로그인시에 근태시간, 시간외, 심야 UPDATE


    function SaveOvedt(iCnt : Integer) : Integer; // 일 특근신청 저장 김용욱 수정 2005-10-31

    function InsOveddt2(iCnt : Integer) :Integer;  // 일 특근신청 저장
    function ListOveddt1  : Integer;    // 일별 특근 신청 조회(중복Check)

{
    function SelOverddT2  : Integer;    // 인사부서 결재용 조회
    function InsOverddT   : Integer;
    function InsOverddT2(iCnt : Integer) : Integer;

}
  end;

////////////////////////////////////////////////////////////////////////////////
// 결재선 지정
// 작성자 : 문태용
// 작성일 : 2004.10.13
// 관련테이블 : GASIGNLT
////////////////////////////////////////////////////////////////////////////////
  HgaSignlt = Class
    ssLocate        : Variant;
    ssYYMM          : Variant;
    ssDeptcd        : Variant;

    sLocate         : Variant;
    sMkDept         : Variant;
    sMkYYMM         : Variant;
    sRemTxt         : Variant;
    sJikwe1         : Variant;
    sEmpno1         : Variant;
    sJikwe2         : Variant;
    sEmpno2         : Variant;
    sJikwe3         : Variant;
    sEmpno3         : Variant;
    sChkyn          : Variant;
    sInsaJikwe1     : Variant;
    sInsaEmpno1     : Variant;
    sInsaJikwe2     : Variant;
    sInsaEmpno2     : Variant;
    sInsaJikwe3     : Variant;
    sInsaEmpno3     : Variant;
    sReturnTx       : Variant;
    sEditid         : Variant;
    sEditip         : Variant;
    sChoice         : Variant;
    sJikwenm1       : Variant;
    sJikwenm2       : Variant;
    sJikwenm3       : Variant;
    sInsaJikwenm1   : Variant;
    sInsaJikwenm2   : Variant;
    sInsaJikwenm3   : Variant;

    function SelSignlt : Integer;
    function SaveSignlt : Integer;
    //function ConfirmSignlt : Integer;

  end;


  HgaWMdutyt = Class
  ssLocate          : Variant;
  ssYYMM            : Variant;
  sSunCnt           : Variant;
  sRullCnt          : Variant;
  sDualSun          : Variant;

  function SelMDutytholy : Integer;

  end;

////////////////////////////////////////////////////////////////////////////////
// 제증명 문자 전송
// 2021.05.26
////////////////////////////////////////////////////////////////////////////////
  HgbSndSms = Class
  in_Sendtm         : Variant;
  in_SendPhone      : Variant;
  in_RevPhone       : Variant;
  in_Msg            : Variant;
  in_Editid         : Variant;
  in_Editip         : Variant;

  function SndMsgText(iCnt: Integer) :Integer;
  function SndMsgText2(iCnt: Integer) :Integer;

   end;

////////////////////////////////////////////////////////////////////////////////
// 월별 근무스케쥴 코드 (약속코드)
// 작성자 : 여경구
// 작성일 : 2009.05.08
// 관련테이블 : GAMDUTYT
////////////////////////////////////////////////////////////////////////////////
  HgaDtytpt = class

  

  end;


////////////////////////////////////////////////////////////////////////////////
// 월별 근무 스케줄
// 작성일 : 2004.10.13
// 관련테이블 : GAMDUTYT
////////////////////////////////////////////////////////////////////////////////
  HgaMdutyt = Class
    // 조회조건 파라메터
    ssLocate        : Variant;      // 사업장
    ssFromdate      : Variant;
    ssTodate        : Variant;
    ssDays          : Variant;
    ssDayCnt        : Variant;
    ssDD            : Variant;
    ssYYMM          : Variant;      // 작성월
    ssDeptcd        : Variant;      // 작성부서
    ssFlag          : Variant;      // 간호(N)/행정(A) 구분
    ssSDate         : Variant;      // 조회시작일
    ssEDate         : Variant;      // 조회종료일
    ssEmpno         : Variant;      // 사원번호(조회)
    ssPaygbn        : Variant;      // 급여구분
    ssGbfGn        : Variant;      // 급여구분

    ssMainDept      : Variant;
    ssUserid        : Variant;

    ssDutydate      : Variant;      // 근무일자  추가 김용욱 2005-12-22
    ssAppYN         : Variant;      // 현업 확인여부 김용욱 2006-01-14
    ssInsaYN        : Variant;      // 인사부서 여부 김용욱 2006-01-14
    sCnt            : Variant;      // 저장된 근태코드 수 (appyn = 'Y')
    ssANFlag        : Variant;      // 간호/행정 구분 (A: 행정, N: 간호)
    ssYear          : Variant;      // 년도

    ssAppdate       : Variant;      // 문서작성일
    ssMkdeptcd      : Variant;      // 작성 부서코드
    ssMkempno       : Variant;      // 작성자 사번
    ssDoctype       : Variant;      // 문서형태
    ssAppseqno      : Variant;      // 작성일련번호
    ssWkyymm        : Variant;      // 근무년월

    ssAppempno      : Variant;      // 결재자사번
    ssMeddept       : Variant;      // 간호부 근무장소

    ssGubun         : Variant;      // 구분 2006-09-26 추가
    ssGhgb          : Variant;      // 간호간병 구분 20200504 오정은 추가   

    sSunCnt         : Variant;
    sRullCnt        : Variant;
    sDualSun        : Variant;


    sDutydate1      : Variant;
    sDutydate2      : Variant;
    sDutydate3      : Variant;
    sDutydate4      : Variant;
    sDutydate5      : Variant;
    sDutydate6      : Variant;
    sDutydate7      : Variant;

    sWardYn         : Variant;

    // 2020.01.03 오정은 추가. 전공의 근태
    ssYYMMst        : Variant;
    ssYYMMed        : Variant;
    ssMinDays       : Variant;
    ssMaxDays       : Variant;

    // 입/출력 파라메터
    sLocate         : Variant;  // 사업장
    sEmpno          : Variant;  // 사원번호
    sWkdate         : Variant;
    sWksTime        : Variant;
    sWkeTime        : Variant;
    sCnt25          : Variant;
    sCnt50          : Variant;
    sCntnig         : Variant;
    sDuty1          : Variant;
    sDuty2          : Variant;
    sDuty3          : Variant;
    sDuty4          : Variant;
    sDuty5          : Variant;
    sDuty6          : Variant;
    sDuty7          : Variant;
    sDuty8          : Variant;
    sDuty9          : Variant;
    sVCnt           : Variant;
    sNowork         : Variant;
    sNowork1        : Variant;
    sWorkMM         : Variant;
    sConDate        : Variant;

    sNight          : Variant;
    sD12CNT         : Variant;
    sFA0CNT         : Variant;
    sFA4CNT         : Variant;
    sDeptgbn        : Variant;
    sFACILCNT       : Variant;   //시설당직 추가 20171017 이종명

    sEmpnm          : Variant;  // 사원명
    sWkmonth        : Variant;  // 사원명
    sEntdt          : Variant;  // 입사일
    sJikwe          : Variant;  // 직위
    sJikwenm        : Variant;  // 직위명
    sMkyymm         : Variant;  // 작성년월
    sDutydate       : Variant;  // 근무일자
    sDutyCode       : Variant;  // 근무코드
    sDutyFlag       : Variant;  // 근태코드 구분(A:행정근태코드, N: 간호근태코드) ex) 간호부(A16C),한방간호(A26B),응급의학과(A14K)
    sDutyName       : Variant;  // 당직코드명
    sDeptcd         : Variant;  // 작성부서

    sDeptNm         : Variant;  // 부서명
    sWkareacd       : Variant;  // 근무부서
    sDayWeek        : Variant;  // 요일
    sOvertime       : Variant;  // 시간외근무시간
    sTottime        : Variant;  // 총근무시간
    sYear           : Variant;
    sOcnt           : Variant;
    sNighttime      : Variant;  // 심야근무시간
    sHolytime       : Variant;  // 국경일근무시간
    sCloseyn        : Variant;  // 마감여부
    sOtm            : Variant;  // 시간외근무(근무코드)
    sNtm            : Variant;  // 심야근무(근무코드)
    sTotvcnt        : Variant;  // 총연차
    sUsevcnt        : Variant;  // 사용연차
    scntduty15      : Variant;  // 사용연차
    scntduty30      : Variant;  // 사용연차
    sWeekcnt        : Variant;  // 주차
    sInputid        : Variant;  // 입력자 ID
    sInputip        : Variant;  // 입력자 IP
    sEditid         : Variant;  // 수정자 ID
    sEditip         : Variant;  // 수정자 IP
    sChoice         : Variant;  // 작업구분(I/U)
    sFlag           : Variant;  // 행정/간호 구분(A/N)
    sInTime         : Variant;  // 출근시간
    sOutTime        : Variant;  // 퇴근시간

    sDutycd         : Variant;
    sDutynm         : Variant;
    sUseYn          : Variant;
    stm             : Variant;
    etm             : Variant;

    sAppdate        : Variant;  // 문서작성일
    sMkdeptcd       : Variant;  // 작성자 근무부서코드
    sMkdeptnm       : Variant;  // 작성자 근무부서명
    sMkempno        : Variant;  // 작성자 사번
    sMkempnm        : Variant;  // 작성자명
    sDoctype        : Variant;  // 문서형태
    sAppseqno       : Variant;  // 작성일련번호
    sAllconyn       : Variant;  // 결재완료 여부
    sChkyn          : Variant;  // 인사부서 결재완료 여부
    sDocstep        : Variant;  // 문서단계


    sVccnt          : Variant;  // 휴가      
    sD4cnt          : Variant;  // 당직4
    sD8cnt          : Variant;  // 당직8
    sN1CNT          : Variant;  // 당직4
    sFACNT          : Variant;  // 당직8
    sFA1CNT          : Variant;  // 당직8
    sFA2CNT          : Variant;  // 당직8
    sFA3CNT          : Variant;  // 당직8

    sConctype       : Variant;
    sJIKCHEK        : Variant;

    sGubun          : Variant;


    sCntSat         : Variant;

    sVTM            : Variant;
    sOVM            : Variant;
    sOFM            : Variant;

    sComcdnm        : Variant;
    sWday           : Variant;
    sDuty           : Variant;
    sSeqno          : Variant;

    sDuty01         : Variant;  // 01 일 근무
    sDuty02         : Variant;  // 02 일 근무
    sDuty03         : Variant;  // 03 일 근무
    sDuty04         : Variant;  // 04 일 근무
    sDuty05         : Variant;  // 05 일 근무
    sDuty06         : Variant;  // 06 일 근무
    sDuty07         : Variant;  // 07 일 근무
    sDuty08         : Variant;  // 08 일 근무
    sDuty09         : Variant;  // 09 일 근무
    sDuty10         : Variant;  // 10 일 근무
    sDuty11         : Variant;  // 11 일 근무
    sDuty12         : Variant;  // 12 일 근무
    sDuty13         : Variant;  // 13 일 근무
    sDuty14         : Variant;  // 14 일 근무
    sDuty15         : Variant;  // 15 일 근무
    sDuty16         : Variant;  // 16 일 근무
    sDuty17         : Variant;  // 17 일 근무
    sDuty18         : Variant;  // 18 일 근무
    sDuty19         : Variant;  // 19 일 근무
    sDuty20         : Variant;  // 20 일 근무
    sDuty21         : Variant;  // 21 일 근무
    sDuty22         : Variant;  // 22 일 근무
    sDuty23         : Variant;  // 23 일 근무
    sDuty24         : Variant;  // 24 일 근무
    sDuty25         : Variant;  // 25 일 근무
    sDuty26         : Variant;  // 26 일 근무
    sDuty27         : Variant;  // 27 일 근무
    sDuty28         : Variant;  // 28 일 근무
    sDuty29         : Variant;  // 29 일 근무
    sDuty30         : Variant;  // 30 일 근무
    sDuty31         : Variant;  // 31 일 근무

    sMeddept        : Variant;  // 간호부서코드       추가 김용욱 2006-01-09
    sUserid         : Variant;  // 간호부서사용userid
    sSchustep       : Variant;  // 현재 조회된 문서의 단계를 나타낸다.
    sRemtxt         : Variant;  // 결재선지정 테이블의 비고(GAAPROVT.REMTXT)

    sRemark         : Variant;  // 문서마스터의 비고(GADOCMAT.REMARK)
    sCount          : Variant;  // 건수를 받을때 사용 => 예) 문서마스터에 기저장된 문서건수를 받을때
    sOldappseqno    : Variant;      // 저장하려는 문서번호의 이전 문서번호(반환된 경우에 해당된다)

    sIntelno        : Variant;  // 원내번호 20061015
    sPagerno        : Variant;  // 호출기번호 20061015
    sHphoneno       : Variant;  // 휴대폰번호 20061015

    sConfirmyn      : Variant;
    sConfirmDt      : Variant;

    // 전공의 근태 2020.01.05 오정은 추가
    sWkareacdnm     : Variant;
    sHobong         : Variant;
    sDutytime       : Variant;
    sDutytime1      : Variant;
    sMagamyn        : Variant;
    sNdutytime      : Variant;
    sDutytime11     : Variant;
    sNdutytime1     : Variant;
    sYearcnt        : Variant;
    sDuty90         : Variant;
    sDuty91         : Variant;
    sGbn            : Variant;
    sDuty32         : Variant;
    sDuty33         : Variant;
    sDuty34         : Variant;
    sDuty35         : Variant;
    sOtcnt          : Variant;
    sItcnt          : Variant;
    sP1cnt          : Variant;
    sP2cnt          : Variant;
    sFromDt         : Variant;
    sToDt           : Variant;
    sYYMM           : Variant;
    ssNmonths       : Variant;
    ssWkareacd      : Variant;
    ssHobong        : Variant;
    ssEmpnm         : Variant;
    ssGbn           : Variant;
    ssRemark1       : Variant;
    ssWeeks1        : Variant;
    ssWeeks2        : Variant;
    ssWeeks3        : Variant;
    ssWeeks4        : Variant;
    ssWeeks5        : Variant;
    ssVflag         : Variant;
    ssRemark        : Variant;
    ssDutycode      : Variant;
    ssWeekcnt       : Variant;
    ssTimegap       : Variant;
    ssDutytime      : Variant;
    ssResttime      : Variant;

    sNtmcnt         : Variant;     //20210726 전공의 심야시간 추가

    { 오정은 지우기
    sStartDay : Variant; //오정은 2019.03.29
    sLastDay  : Variant; //오정은 2019.03.29
    sEndDay   : Variant; //오정은 2019.03.29

    dutyAvg80Flag  : Variant;   // 오정은. 수련시간평균 80 이하 체크 플래그 변수
    gdAvg3Flag     : Variant;   // 오정은. 당직 평균 3일 이하 체크 플래그 변수
    MaxDuty36      : array [0..31] of Variant;   // 오정은. 연속근무합 36시간 이상인 Date 담는 배열
    MinFree10      : array [0..31] of Variant;   // 오정은. 최소휴식 10시간 이하인 Date 담는 배열
    }

    function IsAppEmp : Boolean;       // 해당사번이 특정사원의 결재권자인지를 반환
    function IsFirstAppEmp : Boolean;  // 해당사원이 특정사원의 최초결재권자 인지를 반환
    function IsFirstAppEmp1: Boolean;

    function IsFirstAppEmp2: Boolean;  //New로직 적용

    function IsRequest: Boolean;  //New로직 적용


    function SelMasterInfo : Integer;  // 월별 근무 스케줄의 마스터성 데이터 조회
    function SelExistCount : Integer;  // 월별 근무 스케줄에 기저장된 데이터의 건수조회

    function SelMDutyt : Integer;
    function SelMDutyt2 : Integer;

    function SelMDutyt3 : Integer;     // 월별 근무 스케줄 여부 조회 (일단위) 추가 김용욱 2006-01-13
    function SelMDutyt4 : Integer;     // 해당사원이 해당월에 월스케줄 데이터가 존재하는지 검사

    function SelMDutyt5 : Integer;


    function ListMDutyt5 : Integer;    // 월별 근무 스케줄 조회(결재화면)
    function SaveDocmat : Integer;
    function List : Integer;

    function SaveMDutyt3(iCnt : Integer) : Integer;
    function UpdateMDutyt1(iCnt : Integer) : Integer;  // 추가 김용욱 2006-01-21
    function UpdateMDutyt2(iCnt : Integer) : Integer;  // 추가 김용욱 2006-01-23
    function ListMdutyOp : Integer;    //월별 당직자 리스트 조회
    function ListMdutyOpAll : Integer; //월별 당직자 전체 리스트 조회
    function ListDutySelect1 :Integer; //급여마스터 상의 근태사항 조회
    function ListMdutyOp_A : Integer;    //월별 당직자 리스트 조회

    function ListFromDutySelect :Integer; //근태 변경시, 이전 근무표 리스트 업

    function ListSpecialDp :Integer;
    function gaUsgrmt_List():Integer;

    function GetCalendar:Integer;
    function SelMDutyCD : Integer;
    function SetMDutyCD(sRowNo:Integer): Integer;

    function ListLast : Integer;

    function InsertConfirm : Integer;
//    function SelDocDuty : Integer; // 오정은 추가 지우기

    // 2020-01-05 오정은 추가. 전공의 근태
    function SelMDutyt20 : Integer;
    function SelMdutyt8 : Integer;
    function GetCalendar2:Integer;
    function GetCalendar1:Integer;
    function GetCalendar3:Integer;
    function SaveMDutyt4: Integer;
    function SelMdutyt26 : Integer;
    function SelMdutyt26_1 : Integer;
    function SelMdutyt22 : Integer;
    function SelMdutyt8n: Integer;
    function SelMdutyt9 : Integer;
    function SaveMDutyt9: Integer;
    function CloseDuty: Integer;
    function SelMDutyt21 : Integer;

  end;

////////////////////////////////////////////////////////////////////////////////
// 월별 근무 스케줄
// 작성자 : 문태용
// 작성일 : 2004.10.13
// 관련테이블 : GAMDUTYT
////////////////////////////////////////////////////////////////////////////////
  HgaHolydt = Class
    sStdt         : Variant;    // 조회시작일자
    sEndt         : Variant;    // 조회종료일자
    sSatyn        : Variant;    // 토요일 포함여부
    sHolycnt      : Variant;    // 공휴일 수
    sDay          : Variant;
    sMonth        : Variant;

    sHolyDt       : Variant;    // 공휴일 날짜
    sGuseyn       : Variant;    // 공휴일 성격(일요일-N, 평일-Y, 일요일이면서 공휴일-H)

    // 전공의 근태. 2020.01.05 오정은 추가.
    sfStdt        : Variant;
    sfEndt        : Variant;

    function  GetHolyday : Integer;
    function  GetHolycnt : Integer;
    function  ListHolyday(sMonth : String): Integer;

    // 전공의 근태. 2020.01.05 오정은 추가
    function  GetHolyday41 : Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// 재증명 관리
// 작성자 : 문태용
// 작성일 : 2004.10.30
// 관련테이블 : GATENUAT
////////////////////////////////////////////////////////////////////////////////
  HgaTenuat = Class
    ssEmpno       : Variant;    // 조회 사원번호
    ssLocate      : Variant;    // 조회 사업장 코드
    ssTenutype    : Variant;    // 조회 재증명 종류
    ssTenudate1   : Variant;    // 조회 신청일자(from)
    ssTenudate2   : Variant;    // 조회 신청일자(to)
    ssPrnYn       : Variant;    // 미발급 여부
    ssInsaGubun   : Variant;    // 현업/인사/인사팀장 구분 ('HYUN'/'INSA'/'INST')


    sEmpno        : Variant;    // 사원번호
    sLocate       : Variant;    // 사업장코드
    sTenusdate    : Variant;    // 신청일시  yyyymmdd -> yyyymmddhhnnss 변경
    sTenutype     : Variant;    // 재증명종류
    sTenutypenm   : Variant;    // 재증명종류명
    sTenupubno    : Variant;    // 발급번호
    sTenuuse      : Variant;    // 재증명 용도
    sRetxt        : Variant;    // 반송사유 추가     차수성 2007-01-03
    sTenucnt      : Variant;    // 발행부수
    sUsedate      : Variant;    // 사용일자
    sTenuprnyn    : Variant;    // 발급여부(Y/N)
    sPrintdate    : Variant;    // 최종발급일
    sJikjong      : Variant;    // 직종코드
    sJikjongnm    : Variant;    // 직종명
    sEmpnm        : Variant;    // 성명
    sEntdt        : Variant;    // 입사일
    sRetdt        : Variant;    // 퇴사일
    sHannm        : Variant;    // 한문성명
    sResno        : Variant;    // 주민등록번호
    sAddr1        : Variant;    // 주민등록지 우편번호 주소값
    sAddr2        : Variant;    // 주민등록지 주소
    sDeptcd       : Variant;    // 부서코드
    sDeptnm       : Variant;    // 부서명
    sJikwe        : Variant;    // 직위코드
    sJikwenm      : Variant;    // 직위명
    sOffice       : Variant;    // 제출처
    sCdetcb       : Variant;    //
    sCdetcc       : Variant;    //
    sJobtype      : Variant;    // 영문직종명
    sEngaddr      : Variant;    // 영문주소명
    sEngname      : Variant;    // 영문성명
    sSexcd        : Variant;    // 성별코드
    sInsaEngAddr  : Variant;    // 인사 영문 주소
    sBorndt       : Variant;    // 생일
    sDepteng      : Variant;    // 영문부서명
    sAppEmpno     : Variant;    // 결재권자 사번
    sAppyn        : Variant;    // 결재여부
    sInsayn       : Variant;    // 총무팀 결재여부
    sInsaEmpno    : Variant;    // 총무팀 결재권자 사번

    sResnoyn      : Variant;    // 주민등록번호 출력여부 2014.12.08 김승철 추가

    sPrintcnt     : Variant;    // 출력횟수 추가 20210427 이은아
    sAppyndate    : Variant;    // 결재일자 추가 20210427 이은아
    sHphoneno     : Variant;    // 핸드폰 번호 추가 20210526 이은아
    sphoneno      : Variant;    // 문자 수신 핸드폰 번호 추가 20210526 이은아
    sSendYn       : Variant;    // 문자 전송 여부 추가 20210611 이은아

    sEditid       : Variant;    // 수정자 ID
    sEditip       : Variant;    // 수정자 IP
    sChoice       : Variant;    // 작업구분(I/U/D)

    sBaseDateFr   : Variant;    // 기준신고일자To 김용욱 추가 2005-12-01
    sBaseDateTo   : Variant;    // 기준신고일자To 김용욱 추가 2005-11-01

    sJikmunm      : Variant;    // 직무name(=신분) 추가 김용욱 2006-01-17
    sJikcheknm    : Variant;    // 직책name(=보직) 추가 김용욱 2006-01-17

    sErrCheck     : variant;    // 에러구분을 위해 추가. 1일떄 에러

    //제증명 문의사항 20211101
    smYjyear       : Variant;
    smLocate       : Variant;
    smChkgbn       : Variant;
    smAnsgbn       : Variant;
    smEmpno        : Variant;
    smQusgbn       : Variant;

    ssQusno        : Variant;
    ssQusdate      : Variant;
    ssQusempno     : Variant;
    ssQusempnm     : Variant;
    ssQustitle     : Variant;
    ssAnsyn        : Variant;
    ssAnsdate      : Variant;

    sInsgbn        : Variant;
    sYjyear        : Variant;
    sQusempno      : Variant;
    sQustitle      : Variant;
    sQusdetail     : Variant;
    sQusno         : Variant;
    sQusgbn        : Variant;
    sAnsdetail     : Variant;
    sAnsempno      : Variant;

    sdYjyear       : Variant;
    sdLocate       : Variant;
    sdQusno        : Variant;
    sdEmpno        : Variant;

    sqQusno        : Variant;
    sqQusempno     : Variant;
    sqQusempnm     : Variant;
    sqQustitle     : Variant;
    sqQusdetail    : Variant;
    sqAnsdetail    : Variant;
    sqAnsempno     : Variant;
    sqAnsempnm     : Variant;

    function RsqtTenuat : Integer;
    function RsqtTenuat2 : Integer; //20210427 이은아 추가
    function SetRsqtTenuat : Integer; //20210611 이은아 추가
    function ApprTenuat(iCnt : Integer) : Integer;
    function ListTenuat : Integer;
    function ListTenuat2 : Integer;
    function ListTenuat5 : Integer;
    function TnQAMaster : Integer;  //20211101 LEA추가
    function TnQASave   : Integer;  //20211101 LEA추가
    function TnQADetail : Integer;  //20211101 LEA추가
  end;

////////////////////////////////////////////////////////////////////////////////
//  병원 정보 조회
// 작성자 : 문태용
// 작성일 : 2004.11.03
// 관련테이블 : CCHOSIFT
////////////////////////////////////////////////////////////////////////////////
  HccHosift = Class
    sLocate       : Variant;    // 사업장코드

    sHsptname     : Variant;    // 병원명칭
    sPrsdname     : Variant;    // 대표자명
    sPrsdreno     : Variant;    // 대표자 주민번호
    sAddress      : Variant;    // 병원주소
    sTelno        : Variant;    // 전화번호
    sFaxno        : Variant;    // FAX 번호
    sZipcd        : Variant;    // 우편번호
    sEhsptnm      : Variant;    // 영문병원명
    sEaddress     : Variant;    // 영문주소

    function ListHosift : Integer;

  end;

  HgaSdate = Class
    sSysdate      : Variant;

    function GetSysDate : Integer;
    function GetSysTime : Integer;

  end;


////////////////////////////////////////////////////////////////////////////////
// 그룹메세지 전송
// 작성자 : 여 경 구 
// 작성일 : 2007.09.07
////////////////////////////////////////////////////////////////////////////////
  HgaGrpmgt  = class
     sGrpcd    : Variant;
     sGrpnm    : Variant;

     sMember   : Variant;
     sMembernm : Variant;
     sLocate   : Variant;
     slocate_at: Variant;
     sjobtype  : Variant; 
     sTitle    : Variant;
     sMsg      : Variant;
     sHponeNo  : Variant;
     sRemtxt   : Variant;
     sMsseq    : Variant;
     sEditid   : Variant;
     sEditip   : Variant;
     sGubun    : Variant;
     sDeptnm   : Variant;
     sSeqno    : Variant;
     sRowid    : Variant;

     v_Grpcd   : Variant;
     v_Grpnm   : Variant;     
     v_Members : Variant;
     v_Empnm   : Variant;
     v_Hpnmber : Variant;
     v_Deptnm  : Variant;
     v_Rowid   : Variant;
     v_Seqno   : Variant;

     ssLocate  : Variant;
     ssTitle   : Variant;
     ssMsg     : Variant;
     ssRemix   : Variant;
     ssMsgdt   : Variant;
     ssSmseq   : Variant;

  function InsMsgGrp()  : Integer;
  function DisplyMember : Integer;
  function DelMsgGrp    : Integer;
  function DisplyGrp    : Integer;

  function InsMsgMember()  : Integer;
  function DelMsgMember(iCnt:integer)  : Integer;
  function InsSmsMgt   : Integer;
  FUNCTION DISmsMgt() : Integer;


  end;



////////////////////////////////////////////////////////////////////////////////
// 월별 특근내역 집계
// 작성자 : 문 태 용
// 작성일 : 2005.01.18
////////////////////////////////////////////////////////////////////////////////
  HgaOvermt = Class
    ssLocate      : Variant;      // 사업장
    ssYYMM        : Variant;      // 근태년월
    ssDeptcd      : Variant;      // 부서코드
    ssPaygbn      : Variant;      // 급여구븐
    ssCgubun      : Variant;      // 계약형태구분 (P:파견근로, R:나머지, A:all) 추가 김용욱 2006-01-16
    ssJikmu       : Variant;      // Sinbun(Jikmu) 추가 김용욱 2006-01-16
    ssHolycnt     : Variant;      // 공유일수

    ssSunCnt      : Variant;
    ssRullCnt     : Variant;
    ssDualSun     : Variant;


    sEmpno        : Variant;      // 사원번호
    sEmpnm        : Variant;      // 사원명
    sJikwe        : Variant;      // 직위코드
    sJikwenm      : Variant;      // 직위명
    sDeptcd       : Variant;      // 부서코드
    sDeptnm       : Variant;      // 부서명
    sEntdt        : Variant;      // 입사일자
    sLocate       : Variant;      // 사업장코드
    sWkmonth      : Variant;      // 특근월
    sCnt          : Variant;      // 특근시간수
    sCnt25        : Variant;      // 연장 25% 적용

    sDuty1        : Variant;      
    sDuty2        : Variant;      
    sDuty3        : Variant;      
    sDuty4        : Variant;      
    sDuty5        : Variant;      
    sDuty6        : Variant;
    sNowork       : Variant; 
    sNowork1      : Variant;

    sDuty7        : Variant;      
    sDuty8        : Variant;      
    sDuty9        : Variant;      
    sVcnt         : Variant;
    sWorkMM       : Variant; 

    sCnt50        : Variant;      // 연장 50% 적용
    sCntnig       : Variant;      // 심야적용
    sNight        : Variant;      // Night근무

    sCntDuty15    : Variant;      // 당직일수(4시간)        // 수정 김용욱 2005-11-29
    sCntDuty30    : Variant;      // 당직일수(8시간)        // 추가 김용욱 2005-11-29
    sCntDuty40A   : Variant;      // 당직일수(부서장 반일)  // 추가 김용욱 2005-11-29
    sCntDuty40B   : Variant;      // 당직일수(부서장 종일)  // 추가 김용욱 2005-11-29

    sCnthol       : Variant;      // 휴공시수
    sOffcnt       : Variant;      // 휴일수(토,일)
    sOffholy      : Variant;      // 휴일수(국경일)
    sUseoffcnt    : Variant;
    sCondate      : Variant;      // 마감일자
    sConid        : Variant;      // 마감자 ID
    sEditid       : Variant;      // 수정자 IP
    sEditip       : Variant;      // 수정자 IDP
    sPayGbn       : Variant;      //

    // 20060928 추가
    sScnt         : Variant;      // 병가   2006-09-27
    sRcnt         : Variant;      // 휴직   2006-09-27
    sOcnt         : Variant;      // 공가   2006-09-27
    sCcnt         : Variant;      // 경조   2006-09-27
    sUsevcnt      : Variant;      // 총사용연차  2006-09-27

    sBCnt         : Variant;
    sBCnt50       : Variant;
    sBCntNig      : Variant;

    sCntFa0       : Variant;
    sCntFa1       : Variant;
    sCntFa2       : Variant;
    sCntFa3       : Variant;
    sCntFa4       : Variant;
    sCntD12       : Variant;
    sDeptgbn      : Variant;
    sFACILCNT     : Variant;  //시설팀당직
    function CalcOverMT : Integer;    // 월 특근 내역 집계 및 집계
    function CalcOverMT1 : Integer;    // 월 특근 내역 집계 및 집계
    function GetOverMT : Integer;     // 월 특근 내역 집계 및 집계결과 조회
    function SaveOverMT(iCnt : Integer) : Integer;    // 월 특근 내역 결재
    function MagamOverMT(sMagamGbn: String) : Integer;   // 월 특근 내역 마감/마감취소 (전체)
    function GetOverMT1 : Integer;
                                                         // sMagamGbn(마감구분):마감('Y'),마감취소('N')

  end;


////////////////////////////////////////////////////////////////////////////////
// 결재선 지정
// 작성자 : 문 태 용
// 작성일 : 2005.02.10
////////////////////////////////////////////////////////////////////////////////
  HgaAprovt = Class
    ssLocate      : Variant;      // 사업장(조회)
    ssFromAppdate : Variant;
    ssToAppdate   : Variant;    
    ssMkDeptcd    : Variant;      // 부서코드(조회)
    ssDeptcd      : Variant;      // 부서코드(조회)
    ssnCount      : Variant;
    ssMkEmpno     : Variant;      // 작성자 사번(조회)
    ssRefwkcd     : Variant;      // 근태코드
    ssAppSeqno    : Variant;      // 작성일련번호
    ssSeqno       : Variant;      // 작성일련번호
    ssSDate       : Variant;      // 조회시작일(조회)
    ssEDate       : Variant;      // 조회종료일(조회)
    ssEmpno       : Variant;      // 사원번호(조회)
    ssAppDate     : Variant;      // 문서작성일(조회)
    ssDocType     : Variant;      // 문서종류(W:근태, O:특근, P:재증명)
    ssGrade       : Variant;      // 사용권한
    ssInsaYn      : Variant;      // 총무결재선 여부
    ssFlag        : Variant;      //
    ssMkYymm      : Variant;      // 간호부 조회년월
    ssinsafirstyn : Variant;      // 총무최초 결재권자 여부
    ssLoginuser   : Variant;      // 로그인한 유저
    ssAppempno    : Variant;      // 결재자 사번


    sCloseYn      : Variant;      // 재작성 여부
    sLocate       : Variant;      // 사업장
    sAppdate      : Variant;      // 문서작성일
    sDeptcd       : Variant;      // 부서코드
    sMkDeptcd     : Variant;      // 작성부서코드
    sMkEmpno      : Variant;      // 작성자 사번
    sDocType      : Variant;      // 문서종류(W:근태, O:특근, P:재증명)
    sAppSeqno     : Variant;      // 결재순번
    sSeqno        : Variant;      // 작성일련번호
    sAppseq       : Variant;      // 결제자 순번
    sAppempno     : Variant;      // 결제권자 사번
    sAppempnm     : Variant;      // 결제권자 성명
    sEmpno        : Variant;      // 사원번호
    sEmpnm        : Variant;      // 사원명
    sJikwe        : Variant;      // 직위코드
    sJikwenm      : Variant;      // 결제권자 직위
    sAppyn        : Variant;      // 결제여부
    sFlag         : Variant;      // 현업/인사팀여부(N/A);
    sCnt          : Variant;      // 결제 진행 Count 수
    sAllconyn     : Variant;      // 결제완료여부
    sChkyn        : Variant;      // 인사팀 확인여부
    sIndeptcd     : Variant;      // 입력부서코드
    sDeptnm       : Variant;      // 부서명
    sWksdate      : Variant;      // 근태시작일
    sWkedate      : Variant;      // 근태종료일
    sRefwkcd      : Variant;      // 근태코드
    sWknm         : Variant;      // 근태명
    sGenconid     : Variant;      // 인사부서 확인자
    sRemtxt       : Variant;      // 결제 사유
    sRettxt       : Variant;      // 반송 사유
    sEditid       : Variant;      // 수정자 ID
    sEditip       : Variant;      // 수정자 IP
    sInsayn       : Variant;      // 인사부서 여부 YN
    sFinalyn      : Variant;      // 인사부서 여부 YN
    sInsaEmpno    : Variant;      // 인사부서 사번
    sInsaDpcd     : Variant;      // 인사부서 부서코드
    sMeddept      : Variant;      // 간호부서코드 (ex W071, W072)
    sMedDeptnm    : Variant;      // 간호부서명
    sMakedate     : Variant;      // 작성년월
    sSignseni     : Variant;      // 간호부장
    sInputid      : Variant;      // 작성자
    sInputdt      : Variant;      // 작성일
    sStatusW      : Variant;      // 결재상태
    sMkempnm      : Variant;      // 작성자 이름  추가 김용욱 2005-12-09
    sANFlag       : Variant;      // A(행정)/N(간호) 구분 추가 김용욱 2005-12-20
    sBefwkcd      : Variant;
    sWkareacd     : Variant;      //               추가 김용욱 2005-12-27
    sWkareanm     : Variant;      //               추가 김용욱 2006-01-09
    sInputEmpno   : Variant;      // 작성자(Empno) 추가 김용욱 2006-01-09
    sEditdate     : Variant;
    sAppinfo      : Variant;

    sNurseYn      : Variant;      // 간호부 스케줄 여부
    sInsafirstyn  : Variant;      // 총무팀 결재라인중에서 최초 결재자 여부
    sFinal_firstyn: Variant;      // 총무팀 결재라인중에서 최초 결재자 여부
    sRemark       : Variant;      // 결재요청자 비고
    sDeptgbn      : Variant;      // 부서구분 ('N': 간호부에서 문서생성,
                                  //           'A': 행정에서   문서생성)
    sDocstep      : Variant;      // 문서단계

    sWkyymm       : Variant;      // 근무년월
    sSchustep     : Variant;      // 현재 조회된 문서의 단계를 나타낸다.

    sAprol1       : Variant;
    sAprol2       : Variant;


    sSat1         : Variant;
    sSat2         : Variant;
    sSat3         : Variant;
    sSat4         : Variant;
    sSat5         : Variant;
    sSat6         : Variant;
    sSat7         : Variant;
    sSat8         : Variant;
    sSat9         : Variant;
    sSat10        : Variant;


    sMdate1       : Variant;
    sMdate2       : Variant;
    sMdate3       : Variant;
    sMdate4       : Variant;
    sMdate5       : Variant;
    sMdate6       : Variant;
    sMdate7       : Variant;
    sMdate8       : Variant;
    sMdate9       : Variant;
    sMdate10      : Variant;

    sCode1        : Variant;
    sCode2        : Variant;
    sCode3        : Variant;
    sCode4        : Variant;
    sCode5        : Variant;
    sCode6        : Variant;
    sCode7        : Variant;
    sCode8        : Variant;
    sCode9        : Variant;
    sCode10       : Variant;

    sReason1        : Variant;
    sReason2        : Variant;
    sReason3        : Variant;
    sReason4        : Variant;
    sReason5        : Variant;
    sReason6        : Variant;
    sReason7        : Variant;
    sReason8        : Variant;
    sReason9        : Variant;
    sReason10       : Variant;

    sStm            : Variant;
    sEtm            : Variant;
    sTtm            : Variant;



    function DeleteAprovt : Integer;            // 기존 결재선 정보 삭제
    function DeleteAprovt2 : Integer;           // 근태, 일 특근신청내역 삭제
    function SaveAprovt(iCnt : Integer) : Integer;  // 결제선 지정 저장
    function SaveAprovt2 : Integer;  // 결재선 전결 처리
    function SaveAprovt4 : Integer;  // 결재선 결재 처리(근태신청)
    function SaveAprovt5 : Integer;  // 결재선 저장(근무스케줄)
    function SaveAprovt6 : Integer;  // 결재선 결재 처리(특근신청)
    function SaveAprovt7 : Integer;  // 결재선 결재 처리(월별 근무 스케줄)
    function SaveAprovt19 : Integer;  // 결재선 결재 처리(월별 근무 스케줄)

    function SaveAprovt8 : Integer;  // 결재선 결재 처리(총무팀 결재선 생성)

    function SaveAprovt9 : Integer;  // 일별근태신청의 결재신청
    function SaveAprovt10: Integer;  // 일별근태신청의 결재 또는 반송처리

    function SaveAprovt14: Integer;

    function SaveAprovt11: Integer;  // 일별특근신청의 결재신청
    function SaveAprovt12: Integer;  // 일별특근신청의 결재 또는 반송처리

    function SaveAprovt13 : Integer;  // New 일별근태신청의 결재신청

    function SaveAprovt15 : Integer;
    function SaveAprovt16 : Integer;

    function SaveAprovt17 : Integer; // 전공의 근태. 2020.01.05 오정은 추가.

    function ListApprovt : Integer;   // 결재권자 List up
    function GetApprovalYn : Integer; // 결재 진행 여부
    function ListApprovt5 : Integer;  // 일별 근태 변경신청 디테일 조회
    function ListApprovt4 : Integer;  // 결재 대기 문서 List Up(Master)
    function ListApprovt6 : Integer;  // 일별 근태 변경신청 마스터 조회
    function ListApprovt26 : Integer; // 토요근무수당

    function ListApprovt7 : Integer;  // 결재 대기 문서 List Up(인사부서 기준)
    function ListApprovt8 : Integer;  // 월 근무스케줄 결제진행상태 조회
    function ListApprovt9 : Integer;  // 월 근무스케줄 결제진행상태 조회
    function ListApprovt10: Integer;  // 월 근무스케줄 결제진행상태 조회(전체, 결재전, 결재후)
    function ListApprovt11: Integer;  // 월 근무스케줄 결재 조회(간호부 조회)
    function ListApprovt12: Integer;  // 월 근무스케줄 결재 상태 조회

    function ListApprovt14: Integer;  // 월 근무스케쥴 결재선데이터 조회(결재화면 마스터 그리드)
    function ListApprovt15: Integer;  // 월 근무스케줄 문서에 대한 결재권자 데이터

    function ListApprovt16: Integer;  // 일별 근태신청 결재선데이터 조회(결재화면 마스터 그리드)
    function ListApprovt17: Integer;  // 일별 특근신청 결재선데이터 조회(결재화면 마스터 그리드)

    function ListApprovt18: Integer;

    function ListApprovt19: Integer;
    function ListApprovt21: Integer;
    function ListApprovt22: Integer;
    function ListApprovt23: Integer;

    function ListApprovt24: Integer;

    function ListApprovt25: Integer;

    function ListApprovt27: Integer;
    function ListApprovt28: Integer;
    function ListApprovt29: Integer;


    function ListEnd: Integer;     // 마감결재 대상 조회






    function UpdateSignlt : Integer;  // 간호부 결재선 정보 Update(인사 확인)

  end;

////////////////////////////////////////////////////////////////////////////////
// 결재권자 등록
// 작성자 : 문 태 용
// 작성일 : 2005.02.28
////////////////////////////////////////////////////////////////////////////////
  HgaAprolt = Class
    ssLocate      : Variant;      // 사업장(조회)
    ssEmpno       : Variant;      // 사원번호(조회)
    ssDeptcd      : Variant;      // 부서코드(조회)
    ssWkareacd    : Variant;      // 부서코드(소속조회)
    ssDocType     : Variant;      // 문서종류(W:근태, O:특근, P:재증명)
    ssSeqno       : Variant;      // 작성일련번호
    ssAppEmpno    : Variant;      // 문서작성일(조회)
    sAppdeptcd    : Variant;      // 관리부서 코드  20070108 차수성
    sAppdeptnm    : Variant;      // 관리부서 이름  20070108 차수성
    sFlag         : Variant;
    sAppgbn       : Variant;      // 결재

    sLocate       : Variant;      // 사업장
    sEmpno        : Variant;      // 사원번호
    sEmpnm        : Variant;      // 사원명
    sDeptcd       : Variant;      // 부서코드
    sDocType      : Variant;      // 문서종류(W:근태, O:특근, P:재증명)
  //sAppdate      : Variant;      // 문서작성일
    sSeqno        : Variant;      // 작성일련번호
    sAppempno     : Variant;      // 결제권자 사번
    sAppempnm     : Variant;      // 결제권자 성명
    sJikwenm      : Variant;      // 결제권자 직위
    sCnt          : Variant;      // 등록된 결재권자 수
    sEditid       : Variant;      // 수정자 ID
    sEditip       : Variant;      // 수정자 IP

    function ListApprolt : Integer;  // 결제권자 List up
    function CntApprolt : Integer;   // 결제권자 등록여부 Cnt
    function SaveAprolt(iCnt : Integer) : Integer;      // 결제권자 저장
    function RemoveAprolt(iCnt : Integer) : Integer;    // 결재권자 삭제

{
    function SaveAprovt(iCnt : Integer) : Integer;  // 결제선 지정 저장
    function SaveAprovt2(iCnt : Integer) : Integer;  // 결제선 전결 처리
    function SaveAprovt3(iCnt : Integer) : Integer;  // 결제선 결제 처리
    function GetApprovalYn : Integer; // 결제 진행 여부
    function ListApprovt3 : Integer;  // 결제 대기 문서 List Up
}
  end;

////////////////////////////////////////////////////////////////////////////////
// 출퇴근관리,
// 작성자 : 최 주 용
// 작성일 : 2005.04.07
////////////////////////////////////////////////////////////////////////////////
  HgaInoutt = Class
    sLocate  : Variant;      // 사업장(조회)
    sResno   : Variant;      // 부서코드(조회)
    sFlag    : Variant;      // 부서코드(조회)
    sInoutdt : Variant;      // 부서코드(조회)
    sJikwe   : Variant;      // 부서코드(조회)
    sEmpno   : Variant;      // 부서코드(조회)
    sEmpnm   : Variant;      // 부서코드(조회)
    sDuty    : Variant;      // 부서코드(조회)
    sStm     : Variant;      // 부서코드(조회)
    sEtm     : Variant;      // 부서코드(조회)
    sDutstm  : Variant;      // 부서코드(조회)
    sDutetm  : Variant;      // 부서코드(조회)

    sDeptcd  : Variant;      // 부서코드(조회)

    function ListDateInout : Integer;   // 결제권자 List up
  end;

  //////////////////////////////////////////////////////
  HgaTsamtt = class
    sLocate   : Variant; //사업자
    sEmpno    : Variant; //개인번호
    sAppldt   : Variant; //적용일자
    sCuryymm  : Variant; //기준년도
    sRemvcnt  : Variant; //잔여년차

    sTsamtRst : Variant; //년차수당 결과값..

    function SelTsamtt1():Integer;
  end;

  HgaVacamt_up = class
    sLocate   : Variant; //사업자
    sBasyy    : Variant; //기준년도
    sAppyymm  : Variant; //적용일자

    function UpgaVacamt_up:Integer;
  end;

  HgaTenuat_1 = Class
    sEmpno     : Variant;
    sLocate    : Variant;
    sUsedtyymm : Variant;

    sEmpnm     : Variant;
    sEmpno1    : Variant;
    sRetxt     : Variant;

    sTenusdate : Variant;
    sTenutype  : Variant;
    sUsedate   : Variant;
    sComcdnm   : Variant;
    sRowcnt    : Variant;    

    sTenupubno, sTenuuse, sTenucnt, sTenuprnyn,
    sPrintdate, sJobtype, sEngaddr, sOffice, sAppempno,
    sAppyn, sBsasedateto, sBasedatefr, sInsayn, sSubmyn, sResnoyn, sPhoneno, sSendyn : Variant;


    sEditid  : Variant;
    sEditip  : Variant;

    function SelTenuat :integer;
    function SelTenuatRow :integer;
    function UpTenuat_Submyn :integer;
  end;

  //============================================================================
  // 각종 업무구분에 따른 특정값가져오기
  //============================================================================
  HgaEtc = class
    sParam1   : Variant;  // 업무구분 스트링값을 받은다.
    sParam2   : Variant;  // 각각의 값을 가져오기 위해 사용하는 파라미터
    sParam3   : Variant;  //                    ''
    sParam4   : Variant;  //                    ''
    sParam5   : Variant;  //                    ''
    sParam6   : Variant;  //                    ''
    sParam7   : Variant;  //                    ''
    sParam8   : Variant;  //                    ''
    sParam9   : Variant;  //                    ''
    sParam10  : Variant;  //                    ''

    sResult   : Variant;  // 결과값

    function GetSchuStep :Integer;
  end;

/////////////////////////////////////////////////////////////////////////
//
//      총무서식, 관리서식 파일 다운로드  20060928 김과장님
//
/////////////////////////////////////////////////////////////////////////
  HgaUpLoad = Class
    sFileGbn  : Variant;      // 사업장(조회)
    sFileNo   : Variant;      // 부서코드(조회)
    sFileName : Variant;      // 부서코드(조회)
    sMkdate   : variant;
    sDocno    : variant;
    
    sEditid   : Variant;
    sEditip   : Variant;

    sType1    : Variant;
    sType2    : Variant;
    sType3    : Variant;
    sType4    : Variant;


    function SaveUpLoadFile(iCnt : Integer) : Integer;
    function DownLoadList : Integer;
    function DeleteUpLoadFile(iCnt : Integer) : Integer;
    function DownLoadListGn : Integer;
    function SaveUpLoadFilefn(iCnt:Integer) :Integer;
    function UpdateUpLoadFilefn(iCnt:Integer) :Integer; //20200623 오정은

  end;


/////////////////////////////////////////////////////////////////////////
//  핫라인 조회 2007.10.23
/////////////////////////////////////////////////////////////////////////
  HgaHotlnk  = class

     ssLocate     : Variant;
     ssCodsrh     : Variant;
     ssEmpno      : Variant;
     sInptdt      : Variant;
     sLocate      : Variant;
     sGbn         : Variant;
     sSeqno       : Variant;
     sInEmpno     : Variant;
     sEditid      : Variant;
     sEditip      : Variant;
     sChoice      : Variant;
     sCont        : Variant;
     sResult      : Variant;
     sDeptnm      : Variant;

    function SelHotlnk():Integer;        // 조회
    function InsUdt_ts13HotLn():Integer; //입력
    function DelHotLn():Integer; //입력


  end;

/////////////////////////////////////////////////////////////////////////
//  근무평점점수 서식 20060929
/////////////////////////////////////////////////////////////////////////
  HgaWkrank = Class
    sWkyear    : Variant;      // 연도
    sLoc1      : Variant;
    sSeqno     : Variant;      // 차수
    sNum       : Variant;      // 본인평정
    sNum1      : Variant;      // 1차평가자
    sNum2      : Variant;      // 2차평가자
    sNum3      : Variant;      // 3차평가자
    sNum4      : Variant;      // 4차평가자
    sNum5      : Variant;      // 상향평가
    sNum6      : Variant;      // 교육평가
    sNum7      : Variant;      // 상벌점수
    sEmpno     : Variant;      // 사번
    sEmpnm     : Variant;      // 성명
    sEditid    : Variant;
    sEditip    : Variant;
    sEditdate  : Variant;
    sMode      : Variant;
    sLocate    : Variant;
    sCodsrh    : Variant;
    sComcdnm   : Variant;
    sApodate   : Variant;
    sChoice    : Variant;    


    sDeptnm    : Variant;
    sWkareanm  : Variant;
    ssEmpno    : Variant;      // 사번
    sAvg       : Variant;      // 평균
    sGrade     : Variant;

    sYear      : Variant;

    sWkpoint2  : Variant;
    sWkpoint1  : Variant;
    sWkpoint0  : Variant;
    sWkavg     : Variant;
    sEdupoint2 : Variant;
    sEdupoint1 : Variant;
    sEdupoint0 : Variant;
    sEduavg    : Variant;
    sEduyn     : Variant;
    sGbgubun   : Variant;


    function InsWkrank():Integer;
    function InsExcelWkrank(iCnt:Integer) : Integer;  // 20061106 추가
    function SelWkrank():Integer;  // 조회
    function SelWkrank2014():Integer;  // 20150331 김승철 추가 2013년 이후 근무평점 조회
    function ListGawkrank:Integer;  // 20061001
    function DelWkrank():Integer;
    function ListGawkrankGaeducdt:Integer;  // 20061001
  end;

/////////////////////////////////////////////////////////////////////////
//
//      근로계약서   20211008
//
/////////////////////////////////////////////////////////////////////////
    HgaDconmt = class
    sEmpno           : Variant;
    sLocate          : Variant;
    ssApodate        : variant;
    ssEnddate   		 : variant;
    ssPreapodate  	 : variant;
    ssPreenddate     : Variant;
    ssPreyn          : Variant;
    ssWkareacd   		 : variant;
    ssWorktxt			   : variant;
    sEditid          : Variant;
    sEditip          : Variant;
    sPrintdate       : Variant;
    sPrintid         : Variant;
    sChoice          : Variant;

    function ListDutycon: Integer;      //근로계약서 수정사항 조회
    function insDutycon: Integer;       //근로계약서 수정사항 저장          

  end;

/////////////////////////////////////////////////////////////////////////
//
//      부서장 근태관리 2007. 10.22
//
/////////////////////////////////////////////////////////////////////////
    HgaUsgrmt = class
    sEmpno           : Variant;
    sLocate          : Variant;
    ssEmpno          : variant;
    ssEmpnm   			 : variant;
    ssLocate  			 : variant;
    ssdeptnm         : Variant;   
    sswkareanm       : Variant;
    ssJikwe   			 : variant;
    ssWkareacd			 : variant;
    ssDeptcd  			 : variant;
    ssJikwenm        : variant;
    sEditid          : variant;
    sEditip          : variant;
    ssHphone         : variant;
    ssIntelno        : variant;
    sgbn             : variant; //20210614 구분 추가
    ssRetdt          : variant; //20210616 퇴직일자 추가

   function gaUsgrmt_List_l1: Integer;
   function gaUsgrmt_List_I1: Integer;
   function gaUsgrmt_List_D1: Integer;      

  end;

/////////////////////////////////////////////////////////////////////////
//
//      파견직 퇴직률      2006-09-29
//
/////////////////////////////////////////////////////////////////////////
  HgaRetList = Class
    sLocate  : Variant;    // 사업장
    sYear    : Variant;    // 조회년
    sJikmu   : Variant;    // 파견업채

    sYearMon : Variant;

    sEntCnt1 : Variant;
    sRetCnt1 : Variant;
    sMonTot1 : Variant;
    sMonCnt1 : Variant;
    sMonPer1 : Variant;

    sEntCnt2 : Variant;
    sRetCnt2 : Variant;
    sMonTot2 : Variant;
    sMonCnt2 : Variant;
    sMonPer2 : Variant;

    sEntCnt3 : Variant;
    sRetCnt3 : Variant;
    sMonTot3 : Variant;
    sMonCnt3 : Variant;
    sMonPer3 : Variant;

    sEntCnt4 : Variant;
    sRetCnt4 : Variant;
    sMonTot4 : Variant;
    sMonCnt4 : Variant;
    sMonPer4 : Variant;

    sEntCntSum : Variant;
    sRetCntSum : Variant;
    sMonTotSum : Variant;
    sMonCntSum : Variant;
    sMonPerSum : Variant;

    function DataList : Integer;
  end;

/////////////////////////////////////////////////////////////////////////
//
//      결핵검진,채용검진 관리      이지윤 2018-04-18
//
/////////////////////////////////////////////////////////////////////////

  HgaGyeolhack = class
    ssEmpno       : Variant;
    ssLoc         : Variant;
    ssExamDate    : Variant;   // 수정 전 검사날짜
    ssSDateCnt    : Variant;   // 같은 날짜 CNT
    ssGJType      : Variant;   // (오정은 2019-03-18 추가)

    sExamDate     : Variant;   // 검사일시
    sExamHspt     : Variant;   // 검사기관
    sExamName     : Variant;   // 검사명
    sExamRslt     : Variant;   // 검사결과
    sExamMemo     : Variant;   // 비고
    sSDateCnt     : Variant;   // 같은 날짜 CNT

    sChoice       : Variant;   // 작업구분

    sFdate        : Variant;   //조회 시작날짜 오정은 2019-09-20
    sTdate        : Variant;   //조회 종료날짜 오정은 2019-09-20
    sRetYn        : Variant;   //퇴사자 구분   오정은 2019-09-20
    sGubun        : Variant;   //전입자 구분   오정은 2019-09-20
    sLocate       : Variant;   //전입자 구분   오정은 2019-09-20
    sPatno        : Variant;   //환자 번호     오정은 2019-09-20
    sDeptnm       : Variant;   //소속 부서     오정은 2019-09-20
    sWkareanm     : Variant;   //근무 부서     오정은 2019-09-20
    sEmpno        : Variant;   //사원 번호     오정은 2019-09-20
    sEmpnm        : Variant;   //사원 이름     오정은 2019-09-20
    sEntdt        : Variant;   //입사일        오정은 2019-09-20
    sJindt        : Variant;   //전입일        오정은 2019-09-20
    sRetdt        : Variant;   //퇴직일        오정은 2019-09-20
    sJikjong      : Variant;   //직종명        오정은 2019-09-20
    sHsptGbn      : Variant;   //기관 구분     오정은 2019-09-20

    sCdgbn    : Variant;
    sA01      : Variant;
    sA02      : Variant;
    sA03      : Variant;
    sA04      : Variant;
    sA05      : Variant;
    sA06      : Variant;
    sA07      : Variant;
    sA08      : Variant;
    sA09      : Variant;
    sA10      : Variant;
    sA11      : Variant;
    sA12      : Variant;
    sTotamt   : Variant;
    sAveamt   : Variant;

    function SelGyeolhack     : Integer;
    function InsUpdGyeolhack  : Integer;
    function InsUpdCyGunjin   : Integer;  //오정은 추가 2019-03-19
    function InsUpdYbGunjin   : Integer;  //오정은 추가 2019-03-19
    function InsExcelYbGunjin(iCnt:Integer) : Integer; //오정은 추가 2019-05-03
    function DelGyeolhack     : Integer;
    function DelChaeYong      : Integer;  //오정은 추가 2019-03-19
    function DelYeBang        : Integer;  //오정은 추가 2019-03-19
    //채용검진
    function SelChaeyong      : Integer;
    //예방접종
    function SelYebang        : Integer;

    //수두예방 통계
    function SelSDYBTonggye    : Integer; //오정은 추가 2019-09-20
    //홍역예방 통계
    function SelMMRYBTonggye   : Integer; //오정은 추가 2019-09-20
    //백일해예방 통계
    function SelBIHYBTonggye   : Integer; //오정은 추가 2019-09-20
    //B형간염예방 통계
    function SelBHGYYBTonggye   : Integer; //오정은 추가 2019-09-20
    //인플루엔자예방 통계
    function SelInfluYBTonggye   : Integer; //오정은 추가 2019-09-20
    //결핵검진1 통계
    function SelGH1YBTonggye   : Integer; //오정은 추가 2019-09-20
    //결핵검진2 통계
    function SelGH2YBTonggye   : Integer; //오정은 추가 2019-09-20
    //코로나19 검사 통계
    function SelCRYBTonggye    : Integer; //이은아 추가 2020-10-12
    //코로나19 예방접종 통계
    function SelCRYBTonggye2   : Integer; //이은아 추가 2021-05-10
    // 건진사항 년도별 통계
    function SelGJYearTongye   : Integer; //오정은 추가 2020-04-20


  end;

/////////////////////////////////////////////////////////////////////////
//
//      보상휴가 관리      이지윤 2018-07-11
//
/////////////////////////////////////////////////////////////////////////

  HgaBosang = class
    ssEmpno       : Variant;   // 사원번호
    ssLocate      : Variant;   // 사업장
    ssDeptCD      : Variant;   // 부서코드
    ssYear        : Variant;   // 조회년
    ssSdate       : Variant;
    ssEdate       : Variant;
    ssGubun       : Variant;

    sBsgbn        : Variant;    //보상 구분 (발생, 사용, 잔여 등)
    sEmpno        : Variant;   // 사원번호
    sBsdate       : Variant;   // 관련날짜
    sNewTime      : Variant;   // 발생시간
    sUseTime      : Variant;   // 사용시간
    sAvbTime      : Variant;   // 잔여시간
    sDeptnm       : Variant;   // 부서명
    sEmpnm        : Variant;   // 사원이름
    sWkstime      : Variant;   // 특근시작시간

    function SelBSHistroty    : Integer;
    function SelAvbBS         : Integer;

  end;


var


  gaAccid  : HgaAccid;
  gaOutamt : HgaOutamt;    //식수 사용자 수작업 입력
  gaInsab1 : HgaInsab1;    // 사원기본정보
	gaFamld1 : HgaFamld1;    // 가족현황관리
	gaSchod1 : HgaSchod1;    // 학력사항관리
	gaWoiwd1 : HgaWoiwd1;    // 경력사항관리
	gaQulid1 : HgaQulid1;    // 자격사항관리
	gaEducd1 : HgaEducd1;    // 교육사항관리
	gaAward1 : HgaAward1;    // 상훈사항관리
	gaPunsd1 : HgaPunsd1;    // 징계사항관리
	gaApoid1 : HgaApoid1;    // 발령사항관리
  gaDocvat : HgaDocvat;    // 학회관리
  gaTomng  : HgaTomng;    // 정원관리
  gaGyeolhack : HgaGyeolhack; //결핵검진관리 이지윤 2018-04

// 0306 최종윤 추가
  gaComcd1 : HgaComcd1;     // 공통정보코드 조회/입력
  //gaComict : HgaComict;     // 사업자정보
  gaVacact1: HgaVacact1;     // 근태코드관리
  gaApoict1: HgaApoict1;    // 발령코드관리
  gaWrktct : HgaWrktct;     // 근무형태코드관리

// 고영관작성.
	gaInsamt : HgaInsamt;    // 인사마스터
  gaStatst : HgaStatst;
	gaQulidt : HgaQulidt;
	ccComcdt : HccComcdt;    // 코드공통처리
	gaAwardt : HgaAwardt;    // 상훈현황
	gaPunsdt : HgaPunsdt;    // 징계사항
	gaMaster : HgaMaster;    // 인원현황
	ccDeptct : HccDeptct;    // 부서코드
	//gaApoidt : HgaApoidt;    // 발령사항
	//gaApoict : HgaApoict;    // 발령코드
	gaWrksdt : HgaWrksdt;    // 근태사항조회

  gaGrpmgt : HgaGrpmgt;       //그룹메세지 전송 gawaguci
  gaVacact : HgaVacact;    // 근태코드
///////////////////////////////////////////////////////////////////Create by MTY
  gaCreEmpNo  : HgaCreEmpNo;  // 사번 채번
  gaGuardt    : HgaGuardt;    // 보증사항
  gaHealth    : HgaHealth;    // 건강검진 사항
  gaVacamt    : HgaVacamt;    // 개인별 연월차 현황
  gaSchult    : HgaSchult;
  gaUsGrpt    : HgaUsGrpt;

  gaOffdrt    : HgaOffdrt;

  GAMEDSHT    : HGAMEDSHT;

  gaSalary    : HgaSalary;    // 연봉계약자현황
  gaASsoct    : HgaAssoct;    // 동호회/협회 코드관리
  gaSocidt    : HgaSocidt;    // 동호회/협회 관리
  gaConfirm   : HgaConfirm;   // 근태 결재권자
  gaOverddt   : HgaOverddt;   // 일특근사항
  
  gaSignlt    : HgaSignlt;    // 결재선 지정
  gaMdutyt    : HgaMdutyt;    // 월별 근무 스케줄

  gaDtytpt    : HgaDtytpt;
  gaDptto     : HgaDptto;     //정원관리
  gaTalkht    : HgaTalkht;    // 면담관리

  gbSndSms    : HgbSndSms;    //문자전송 20210526

  gaWMdutyt   : HgaWMdutyt;
  gaHolydt    : HgaHolydt;    // 휴일 가져오기
  gaTenuat    : HgaTenuat;    // 재증명 관리
  ccHosift    : HccHosift;    // 병원정보관리
  gaSdate     : HgaSdate;     // 서버 시스템 날짜 가져오기
  gaOvermt    : HgaOvermt;    // 특근사항 집계
  gaAprovt    : HgaAprovt;    // 결재선 지정

  gaAprolt    : HgaAprolt;    // 결제권자 등록

  gaUsgrmt    : HgaUsgrmt;
  gaDconmt    : HgaDconmt;
  gaInoutt    : HgaInoutt;    // 출퇴근관리
  gaTsamtt    : HgaTsamtt;
  gaTenuat_1  : HgaTenuat_1;
  gaVacamt_up : HgaVacamt_up;

  gaEtc       : HgaEtc;        // 각종 업무구분에 따른 특정값가져오기
  gaUpLoad    : HgaUpLoad;     // 총무서식, 관리서식 업로드 20060928

  gaWkrank    : HgaWkrank;     // 근무평점 20060929

  gaHotlnk    : HgaHotlnk;

  gaRetList   : HgaRetList;    // 파견직 퇴직률 통계

  gaBosang    : HgaBosang;     //보상휴가 관련

	ge_UserId   : string;    // 사용자ID
	ge_UserNm   : string;    // 사용자명
	ge_DeptCd   : string;    // 소속부서
	ge_DeptNm   : string;    // 소속부서명
	ge_JicJong  : string;    // 직종(사용자구분 HAA:의사 HAB:간호사  HAC : 기사)
	ge_JikGup   : string;    // 직급
	ge_JikGupNm : string;    // 직급명 (추가)
  GU_FirstShow :Boolean;



implementation

uses TuxCom, TuxMsg;

{>>>>>>>>>>>>>>>>>>>>>>>>>>>최종윤 시작>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>}

{===============================================================================
   HgaInsab1 사원 기본정보
   조회    
   작성자 : 최종윤  02/01/15
===============================================================================}
function HgaInsab1.SelInsab1(ssLocate,ssCodsrh:string):Integer; // 사원 기본정보 조회
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue32(0,[ssLocate,ssCodsrh] );
   //ga_insam_l1.pc
   if (txGetF32('GA_INSAM_L1')) then begin //Tuxedo Service Call  ga_insam_l1.pc
// 기본정보0  고정좌측
      GetFldVar32('S_STRING1'   , sEmpno       );      // 개인번호
      GetFldVar32('S_STRING2'   , sLocate      );      // 사 업 장
      GetFldVar32('S_STRING3'   , sLocatenm    );      // 사 업 장명
      GetFldVar32('S_STRING4'   , sEmpnm       );      // 성    명
      GetFldVar32('S_STRING5'   , sEngnm       );      // 영문성명
      GetFldVar32('S_STRING6'   , sHanmunnm    );      // 한문성명
      GetFldVar32('S_STRING7'   , sResno       );      // 주민등록번호
      GetFldVar32('S_STRING8'   , sBorndt      );      // 생년월일
      GetFldVar32('S_STRING9'   , sSolucd      );      // 음양구분 (+양.-음)
      GetFldVar32('S_STRING10'  , sSexcd       );      // 성별     (M남.F여)
      GetFldVar32('S_STRING11'  , sJikjong     );      // 직종코드
      GetFldVar32('S_STRING12'  , sJikjongnm   );      // 직종명
      GetFldVar32('S_STRING13'  , sJikgup      );      // 직급코드
      GetFldVar32('S_STRING14'  , sJikgupnm    );      // 직급명
      GetFldVar32('S_STRING15'  , sJikmu       );      // 직무코드
      GetFldVar32('S_STRING16'  , sJikmunm     );      // 직무명
      GetFldVar32('S_STRING17'  , sJikchek     );      // 직책코드
      GetFldVar32('S_STRING18'  , sJikcheknm   );      // 직책명
      GetFldVar32('S_STRING19'  , sJikwe       );      // 직위코드
      GetFldVar32('S_STRING20'  , sJikwenm     );      // 직위명
      GetFldVar32('S_STRING21'  , sJikgun      );      // 직군코드
      GetFldVar32('S_STRING22'  , sJikgunnm    );      // 직군명
      GetFldVar32('S_STRING23'  , sHobong      );      // 호    봉
      GetFldVar32('S_STRING24'  , sWLocate     );      // 근무부서 사업장코드
      GetFldVar32('S_STRING25'  , sConType     );      // 계약형태
      GetFldVar32('S_STRING26'  , sDeptcd      );      // 부서코드
      GetFldVar32('S_STRING27'  , sDeptnm      );      // 부서명
      GetFldVar32('S_STRING28'  , sWkareacd    );      // 근 무 지  => 근무부서
      GetFldVar32('S_STRING29'  , sWkareanm    );      // 근 무 지명  => 근무부서명
      GetFldVar32('S_STRING30'  , sEntdt       );      // 입 사 일(임용일자)
      GetFldVar32('S_STRING31'  , sRetdt       );      // 퇴 사 일(퇴직일자)
      GetFldVar32('S_STRING32'  , sMemyn       );      // 결혼구분
      GetFldVar32('S_STRING33'  , sMemdt       );      // 기 념 일
      GetFldVar32('S_STRING34'  , sHeadyn      );      // 가장여부
      GetFldVar32('S_STRING35'  , sBohuntyp    );      // 보훈구분
      GetFldVar32('S_STRING36'  , sBohungrd    );      // 보훈등급
      GetFldVar32('S_STRING37'  , sBohunno     );      // 보훈번호
      GetFldVar32('S_STRING38'  , sBohunorg    );      // 보훈지청
      GetFldVar32('S_STRING39'  , sJangtyp     );      // 장애구분
      GetFldVar32('S_STRING40'  , sJanggrd     );      // 장애등급
      GetFldVar32('S_STRING41'  , sJangno      );      // 장애인번호
      GetFldVar32('S_STRING42'  , sRLocate     );      // 전공의 소속사업장코드
      GetFldVar32('S_STRING43'  , sAddrbon     );      // 본적
      GetFldVar32('S_STRING44'  , sSedenm      );      // 세대주성명
      GetFldVar32('S_STRING45'  , sHozunm      );      // 호주성명
      GetFldVar32('S_STRING46'  , sHozurela    );      // 호주와의 관계
      GetFldVar32('S_STRING47'  , sLivtyp      );      // 주거구분
      GetFldVar32('S_STRING48'  , sDongsan     );      // 동산
      GetFldVar32('S_STRING49'  , sBudongsa    );      // 부동산
      GetFldVar32('S_STRING50'  , sRgncd       );      // 종교구분
      GetFldVar32('S_STRING51'  , sHobby       );      // 취    미
      GetFldVar32('S_STRING52'  , sTalent      );      // 특    기
      GetFldVar32('S_STRING53'  , sZip         );      // 주민등록지우편번호
      GetFldVar32('S_STRING54'  , sZipnm       );      // 주민등록지우편번호명
      GetFldVar32('S_STRING55'  , sAddr        );      // 주민등록지주소
      GetFldVar32('S_STRING56'  , sCurzip      );      // 현주소우편번호
      GetFldVar32('S_STRING57'  , sCurzipnm    );      // 현주소우편번호명
      GetFldVar32('S_STRING58'  , sCuraddr     );      // 현주소
      GetFldVar32('S_STRING59'  , sEngaddr     );      // 영문주소
      GetFldVar32('S_STRING60'  , sTelno       );      // 집전화번호
      GetFldVar32('S_STRING61'  , sIntelno     );      // 원내전화번호
      GetFldVar32('S_STRING62'  , sPagerno     );      // 호출기번호
      GetFldVar32('S_STRING63'  , sHphoneno    );      // 휴대폰번호
      GetFldVar32('S_STRING64'  , sFaxno       );      // 팩스번호
      GetFldVar32('S_STRING65'  , sEmail       );      // EMAIL 주소
      GetFldVar32('S_STRING66'  , sPreempno    );      // 전번개인번호
      GetFldVar32('S_STRING67'  , sMiltype     );      // 병역구분
      GetFldVar32('S_STRING68'  , sMilkind     );      // 병역군별
      GetFldVar32('S_STRING69'  , sMilyuk      );      // 병역역종
      GetFldVar32('S_STRING70'  , sMilyn       );      // 병역미필여부
      GetFldVar32('S_STRING71'  , sMilrsn      );      // 병역미필사유
      GetFldVar32('S_STRING72'  , sMilsrt      );      // 복무기간fr
      GetFldVar32('S_STRING73'  , sMilend      );      // 복무기간to
      GetFldVar32('S_STRING74'  , sMilgrade    );      // 병역계급
      GetFldVar32('S_STRING75'  , sMilbrnc     );      // 병역병과
      GetFldVar32('S_STRING76'  , sMilno       );      // 군  번
      GetFldVar32('S_STRING77'  , sDamdang     );      // 담당업무
      GetFldVar32('S_STRING78'  , sRcmnm       );      // 추천인성명
      GetFldVar32('S_STRING79'  , sRcmrel      );      // 추천인관계
      GetFldVar32('S_STRING80'  , sRcmcoara    );      // 추천인근무지명
      GetFldVar32('S_STRING81'  , sRcmjikwe    );      // 추천인직위명
//    GetFldVar32('S_STRING82'  , sRemtxt      );      // 자기신고사항
      GetFldVar32('S_STRING83'  , sApptyp      );      // 채용구분
      GetFldVar32('S_STRING84'  , sRstdt       );      // 휴직일
      GetFldVar32('S_STRING85'  , sReturndt    );      // 복직일
      GetFldVar32('S_STRING86'  , sRstmm       );      // 휴직개월수
      GetFldVar32('S_STRING87'  , sTrnstdt     );      // 수습시작일
      GetFldVar32('S_STRING88'  , sTrnenddt    );      // 수습만료일
      GetFldVar32('S_STRING89'  , sWkmm        );      // 인정경력개월수
      GetFldVar32('S_STRING95'  , sRetresn     );      // 퇴직사유
      GetFldVar32('S_STRING96'  , sSchship     );      // 최종학력
      GetFldVar32('S_STRING97'  , sLicno       );      // 면허번호
      GetFldVar32('S_STRING98'  , sMajorno     );      // 전문의번호
      GetFldVar32('S_STRING99'  , sEditid      );      // 수정자 ID
      GetFldVar32('S_STRING100' , sEditip      );      // 수정자 IP
      GetFldVar32('S_STRING101' , sEditdate    );      // 수정일
      GetFldVar32('S_STRING102' , sDeldate     );      // 삭제일
      GetFldVar32('S_STRING103' , sSggbn       );      // 승급구분
      GetFldVar32('S_STRING104' , sDepteng     );      // 영어부서명
      GetFldVar32('S_STRING105' , sInternNo    );      // 전공의 번호
      GetFldVar32('S_STRING106' , sIntHospNm   );      // 인턴수련병원
      GetFldVar32('S_STRING107' , sIntStDt     );      // 인턴시작일
      GetFldVar32('S_STRING108' , sIntEnDt     );      // 인턴종료일
      GetFldVar32('S_STRING109' , sRegStDt     );      // 레지던트 시작일
      GetFldVar32('S_STRING110' , sRegEnDt     );      // 레지던트 종료일
      GetFldVar32('S_STRING111' , sIntPoint    );      // 성적(000000) -> 000/000
      GetFldVar32('S_STRING112' , sIntAve      );      // 평균점수
      GetFldVar32('S_STRING113' , sIntSeats    );      // 석차(000000) -> 000/000
      GetFldVar32('S_STRING114' , sIntGrade    );      // 영어부서명
      GetFldVar32('S_STRING115' , sInDate      );      // 전입일
      GetFldVar32('S_STRING116' , sOutDate     );      // 전출일
      GetFldVar32('S_STRING117' , sPaygbn      );      // 전출일
      GetFldVar32('S_STRING118' , sInDt        );      // 근무시작일  추가 김용욱 2005-12-09
      GetFldVar32('S_STRING119' , sDincomeyn   );      // 맞벌이여부
      GetFldVar32('S_STRING120' , sWkplace     );      // 근무지  추가 :   2006-05-18

      GetFldVar32('S_STRING121' , sYearsCnt    );      // 근속년수 추가
      GetFldVar32('S_STRING122' , sMonCnt      );      // 근속월수 추가
      GetFldVar32('S_STRING123' , sDayCnt      );      // 근속일수 추가 gawaguci 2008-03-11
      GetFldVar32('S_STRING124' , sTotCnt      );      // 근속일수 추가 gawaguci 2008-03-11

      GetFldVar32('S_STRING125' , sBankcd      );      // 근속일수 추가 gawaguci 2008-03-11
      GetFldVar32('S_STRING126' , sAcntno      );      // 근속일수 추가 gawaguci 2008-03-11
      GetFldVar32('S_STRING127' , sBanknm      );      // 근속일수 추가 gawaguci 2008-03-11
      GetFldVar32('S_STRING128' , sRemark      );      // 개인별 비고항목 추가  gawaguci 2008-05-15
      GetFldVar32('S_STRING129' , sWkplace1    );      // 개인별 비고항목 추가  gawaguci 2008-05-15
      GetFldVar32('S_STRING130' , sPincode     );      // 개인별 비고항목 추가  gawaguci 2008-05-15
      GetFldVar32('S_STRING131' , sPermYN      );      // 인가/비인가분류  박성호 2010-2-5
      GetFldVar32('S_STRING132' , sDrbtan      );      // 의사구분   박성호 2010-2-5
      GetFldVar32('S_STRING133' , sIdent       );      // 의사구분   박성호 2010-2-5
      GetFldVar32('S_STRING134' , sAgreeyn     );      // 의사구분   박성호 2010-2-5

      // 2015.04.02 김승철 추가  임산부여부 조회추가
      GetFldVar32('S_STRING135' , sPregnantyn  );      // 임산부여부  2015.04.02 김승철 추가

      GetFldVar32('S_STRING136' , sPatno  );      // 임산부여부  2017.06.21 이종명 추가

      GetFldVar32('S_STRING137' , sNewgradenm  ); //20200630
      GetFldVar32('S_STRING138' , sYeoncha     ); //20200630
      GetFldVar32('S_STRING139' , sWkplacecd   ); //20211123  근무지코드 추가 

      Result := 1 ;
      txFree32;
   end;
end;

{===============================================================================
   HgaInsab1 사원 기본정보
   신규입력/수정
   작성자 : 최종윤  02/02/06
   수정자 : 문태용  04/07/08
   수정내용 : 입력, 수정, 삭제 한 Service에서 처리
              전공의 성적 관련사항 추가
===============================================================================}
function HgaInsab1.insInsab1():Integer;    // 사원 기본정보 신규입력/수정
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
// transf := tpalloc('FIELD', nil, 4096);
// Finit(transf,Fsizeof(transf));

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;'     +
              'S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;'    +
              'S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;'+
              'S_CODE16;S_CODE17;S_CODE18;S_CODE19;S_CODE20;'+
              'S_CODE21;S_CODE23;S_CODE24;S_CODE25;S_CODE26;'+
              'S_CODE27;S_CODE28;S_CODE29;S_CODE30;S_CODE31;'+
              'S_CODE32;S_CODE33;S_CODE34;S_CODE35;S_CODE36;'+
              'S_CODE37;S_CODE38;S_CODE39;S_CODE40;S_CODE41;'+
              'S_CODE42;S_CODE43;S_CODE44;S_CODE45;S_CODE46;'+
              'S_CODE47;S_CODE48;S_CODE49;S_CODE50;S_NAME1;' +
              'S_NAME2;S_NAME3;S_NAME4;S_NAME5;S_NAME6;'     +
              'S_NAME7;S_NAME8;S_NAME9;S_NAME10;S_NAME11;'   +
              'S_NAME12;S_NAME18;S_NAME19;S_NAME20;S_NAME21;'+
              'S_NAME22;S_NAME23;S_NAME24;S_NAME25;S_NAME26;'+
              'S_NAME27;S_NAME28;S_NAME29;S_NAME30;S_NAME31;'+
              'S_NAME32;S_NAME33;S_NAME34;S_NAME35;S_NAME36;'+
              'S_NAME37;S_NAME38;S_NAME39;S_NAME40;S_NAME41;'+  // 37 InDt입력용 추가 김용욱 2005-12-09 // 38 JikMu 추가용 김용욱 2005-12-12
              'S_NAME42;S_NAME43;S_NAME44;S_NAME45;S_NAME46;'); // 42 notpemi, 43 educode 추가 박성호 2010-2-5
                                                                // 46 Pregnantyn 추가   2015.04.02 김승철
                                      //

   SetFldValue(0 ,[sEmpno     ,sLocate      ,sEmpnm     ,sEngnm     ,sHanmunnm    ,
                   sResno     ,sBorndt      ,sSolucd    ,sSexcd     ,sConType     ,
                   sEntdt     ,sMemyn       ,sMemdt     ,sHeadyn    ,sBohuntyp    ,
                   sBohungrd  ,sBohunno     ,sBohunorg  ,sJangtyp   ,sJanggrd     ,
                   sJangno    ,sAddrbon     ,sSedenm    ,sHozunm    ,sHozurela    ,
                   sLivtyp    ,sDongsan     ,sBudongsa  ,sRgncd     ,sHobby       ,
                   sTalent    ,sZip         ,sZipnm     ,sAddr      ,sCurzip      ,
                   sCurzipnm  ,sCuraddr     ,sEngaddr   ,sTelno     ,sIntelno     ,
                   sPagerno   ,sHphoneno    ,sFaxno     ,sEmail     ,sPreempno    ,
                   sMiltype   ,sMilkind     ,sMilyuk    ,sMilyn     ,sMilrsn      ,
                   sMilsrt    ,sMilend      ,sMilgrade  ,sMilbrnc   ,sMilno       ,
                   sDamdang   ,sRcmnm       ,sRcmrel    ,sRcmcoara  ,sRcmjikwe    ,
                   sApptyp    ,sSchship     ,sLicno     ,sMajorno   ,sEditid      ,
                   sEditip    ,sSggbn       ,sInternNo  ,sIntHospNm ,sIntStDt     ,
                   sIntEnDt   ,sRegStDt     ,sRegEnDt   ,sIntPoint  ,sIntAve      ,
                   sIntSeats  ,sIntGrade    ,sChoice    ,sJikgun    ,sRLocate     ,
                   sInDt      ,sJikmu       ,sDincomeyn ,sRemark    ,sPincode     ,
                   sPermYN    ,sDrbtan      ,sIdent     ,sAgreeyn   ,sPregnantyn  ]);

   if (txPutF('GA_INSAM_I1')) then begin //Tuxedo Service Call ga_insam_i1.pc
      Result := 1;
      txFree;
   end;

end;

{===============================================================================
   HgaInsab1 사원 기본정보
    재입사자 등록
   작성자 : 구남영  05/04/20
   수정자 : 여경구 05/12/10
                   07/01/20
                   07/05/05
 ==============================================================================}
function HgaInsab1.insReInsab():Integer;    // 사원 기본정보 재입사자 등록
begin

   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');

   SetFldValue(0 ,[ssLocate, ssEmpno, ssNewEmpno, sEditip, sEditid]);

   if (txPutF('GA_INSAM_I2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HgaInsab1.insUpInsab():Integer;    // 타기관 진료직 기본정보 등록  20201118 이은아
begin

   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');

   SetFldValue(0 ,[ssLocate, ssEmpno, ssResno, sEditip, sEditid]);

   if (txPutF('GA_INSAM_I6')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HgaInsab1.GetDeptJikwe : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
   SetFldValue(0,[ssLocate,
                  ssDeptcd,
                  ssEmpno,
                  ssGubun] );

   if (txGetF('GA_DEPTC_L8')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'   , sEmpno       );      // 개인번호
      GetFldVar('S_STRING2'   , sEmpnm       );      // 사원명
      GetFldVar('S_STRING3'   , sJikwenm     );      // 직위명
      GetFldVar('S_STRING4'   , sJikwe       );      // 직위코드
      GetFldVar('S_STRING5'   , sHobong      );      // 호봉

      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;



function HgaInsab1.SetDcmactSend(iCnt: Integer): Integer;
var
  i : integer;
begin
   Result := -1;
   txAlloc32;
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;');


  for i:=0 to iCnt -1 do
  begin
     SetFldValue32(i,[string(sEmpno   [i])
                  , string(sResno   [i])
                  , string(sEntdt   [i])
                  , string(sRetdt   [i])
                  , string(sWkplace [i])
                  , string(sLocate  [i])
                  , string(sAgreeyn [i])
                  , string(sAppyn   [i])
                  , string(sEditid  [i])
                  , string(sEditip  [i])
                  , string(sType    [i])]);
  end;         
  if (txPutF('GA_DCMAS_I1')) then 
  begin //Tuxedo Service Call
      Result := 1;
      txFree32;
  end;
end;


function HgaInsab1.SelGagcmast: Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9');
   SetFldValue(0,[ssLocate
                 ,ssEmpno
                 ,ssWkplace
                 ,ssDeptcd
                 ,ssWkareacd
                 ,ssAgreeYn
                 ,ssAppyn
                 ,ssStddate
                 ,ssSendYn]);
    if (txGetF32('GA_DCMAS_L1')) then
    begin
      GetFldVar32('S_STRING1'  , sEmpno         );  //시작날짜
      GetFldVar32('S_STRING2'  , sEmpnm         );  //종료날짜
      GetFldVar32('S_STRING3'  , sResno         );  //사원번호
      GetFldVar32('S_STRING4'  , sDeptnm        );  //교수명
      GetFldVar32('S_STRING5'  , sWkareacdnm    );  //소속부서
      GetFldVar32('S_STRING6'  , sEntdt         );  //근무부서
      GetFldVar32('S_STRING7'  , sRetdt         );  //직위
      GetFldVar32('S_STRING8'  , sWkplace       );  //직책
      GetFldVar32('S_STRING9'  , sAgreeyn       );  //매체
      GetFldVar32('S_STRING10' , sAppyn         );  //타이틀(주제)
      GetFldVar32('S_STRING11' , sDeptcd        );  //비고             
      GetFldVar32('S_STRING12' , sWkareacd      );
      GetFldVar32('S_STRING13' , sSendyn        );

      Result := GetRecordCnt32('S_STRING1');
      txFree;
    end;
end;


function HgaInsab1.SelGagcmast1: Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0,[ssLocate,ssStddate]);
    if (txGetF32('GA_DCMAS_L2')) then
    begin
      GetFldVar32('S_STRING1'  , sDccode       );  //시작날짜
      GetFldVar32('S_STRING2'  , sEmpno        );  //종료날짜
      GetFldVar32('S_STRING3'  , sEmpResno1    );  //사원번호
      GetFldVar32('S_STRING4'  , sEmpResno2    );  //교수명
      GetFldVar32('S_STRING5'  , sEmpnm        );  //교수명
      GetFldVar32('S_STRING6'  , sRelcd        );  //소속부서
      GetFldVar32('S_STRING7'  , sWkareacd     );  //근무부서
      GetFldVar32('S_STRING8'  , sRetdt        );  //직위
      GetFldVar32('S_STRING9'  , sResno1       );  //직책
      GetFldVar32('S_STRING10' , sResno2       );  //매체
      GetFldVar32('S_STRING11' , sFmlnm        );  //타이틀(주제)

      GetFldVar32('S_STRING12' , sEntdt       );  //직책
      GetFldVar32('S_STRING13' , sRemark       );  //매체
      GetFldVar32('S_STRING14' , sDeptnm        );  //타이틀(주제)
      GetFldVar32('S_STRING15' , sLocate       );  //직책

      Result := GetRecordCnt32('S_STRING1');
      txFree;
    end;
end;




{===============================================================================
   HgaInsab1 사원 기본정보
   삭제
   작성자 : 최종윤  02/02/14
===============================================================================
function HgaInsab1.delInsab1(iCnt:Integer):Integer;    // 사원 기본정보 삭제
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;');
   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[String(sEmpno[i]),
                  String(sLocate[i])]);
   end;
   if (txPutF('GA_INSAM_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;
}
{===============================================================================
   HgaFamld1 사원 가족정보
   조회
   작성자 : 최종윤  02/02/14
===============================================================================}
function HgaFamld1.SelFamld1():Integer; //사원 가족정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_FAMLD_L1')) then begin //Tuxedo Service Call 'ga_famld_l1.pc'
       GetFldVar('S_STRING1'   , sResno	   );        //가족 주민번호
       GetFldVar('S_STRING2'   , sFmlynm   );        //가족성명
       GetFldVar('S_STRING3'   , sRelcd    );        //가족관계코드
       GetFldVar('S_STRING4'   , sRelcdnm  );        //가족관계명
       GetFldVar('S_STRING5'   , sSupcd    );        //부양구분
       GetFldVar('S_STRING6'   , sSchship  );        //최종학력코드
       GetFldVar('S_STRING7'   , sSchshipnm);        //최종학력명
       GetFldVar('S_STRING8'   , sJob      );        //직업
       GetFldVar('S_STRING9'   , sSdyn     );        //수당지급대상 여부===> 차후조정후 반영
       GetFldVar('S_STRING10'  , sDedyn    );        //진료비감면여
       GetFldVar('S_STRING11'  , sMinsutyp );        //의료보험구분
       GetFldVar('S_STRING12'  , sRsdyn    );        //동거여부
       GetFldVar('S_STRING13'  , sInjuryyn );        //장애인여부
       GetFldVar('S_STRING14'  , sFmleditid);        //가족수당 수정자 20140626 김승철 추가
       GetFldVar('S_STRING15'  , sFmleditdate);      //가족수당 수정일 20140626 김승철 추가

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;
{===============================================================================
   HgaFamld1 사원 가족정보
   신규입력/수정
   작성자 : 최종윤  02/02/06
===============================================================================}
function HgaFamld1.insFamld1():Integer;    // 사원 가족 신규입력/수정
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;'+
              'S_TYPE14;S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;');

   SetFldValue(0 ,[sEmpno,sLocate,sResno,sFmlynm,sRelcd,sSupcd,
                 sSchship,sJob,sSdyn,sDedyn,sMinsutyp,sRsdyn,sEditid,
                 sEditip,sChoice,sResno_old,sInjuryyn,sFmlupdateyn]);
                 

               //GA_FAMLD_I1
   if (txPutF('GA_FAMLD_I1')) then begin //Tuxedo Service Call ga_famld_i1.pc
      Result := 1;
      txFree;
   end;
end;
{===============================================================================
   HgaFamld1 사원 가족정보
   삭제
   작성자 : 최종윤  02/02/06
===============================================================================}
function HgaFamld1.delFamld1:Integer;    // 사원 가족 삭제
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.                                     ㄴ
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue(0,[sEmpno,sLocate,sResno]);

   if (txPutF('GA_FAMLD_D1')) then begin //Tuxedo Service Call ga_famld_d1.pc
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaSchod1 사원 학력정보
   조회
   작성자 : 최종윤  02/01/16
 ===============================================================================
}
function HgaSchod1.SelSchod1():Integer; //사원 학력정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_SCHOD_L1')) then begin     //Tuxedo Service Call ga_schod_l1.pc
     GetFldVar('S_STRING1'   , sSchship    );        // 학력구분코드
     GetFldVar('S_STRING2'   , sSchshnm	   );        // 학력구분명
     GetFldVar('S_STRING3'   , sSdt        );        // 학력시작일자
     GetFldVar('S_STRING4'   , sGrudt      );        // 학력종료일자
     GetFldVar('S_STRING5'   , sSchoolnm   );        // 학교명
     GetFldVar('S_STRING6'   , sMjrnm      );        // 전공명
     GetFldVar('S_STRING7'   , sMjrcd      );        // 전공코드
     GetFldVar('S_STRING8'   , sEndyn      );        // 최종여부
     GetFldVar('S_STRING9'   , sRemtxt     );        // 비고
     GetFldVar('S_STRING10'  , sEntGubn    );        // 입사전후
     GetFldVar('S_STRING11'  , sSchoolcd   );        // 학력코드

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaSchod1 사원 학력정보
   신규입력/수정
   작성자 : 최종윤  02/02/04
===============================================================================}
function HgaSchod1.insSchod1():Integer;    // 사원 학력 신규입력/수정
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;'+
              'S_TYPE13;S_TYPE15;S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19');

   SetFldValue(0 ,[sEmpno,sLocate,sSchship,sSdt,sGrudt,
                 sSchoolnm,sMjrcd,sMjrnm,sEndyn,sRemtxt,sEditid,
                 sEditip,sChoice,sSchship_old,sSdt_old,sEntGubn,sSchoolcd]);

   if (txPutF('GA_SCHOD_I1')) then  //ga_schod_i1.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaSchod1 사원 학력정보
   삭제
   작성자 : 최종윤  02/02/04
===============================================================================}
function HgaSchod1.delSchod1():Integer;    // 사원 학력 삭제
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue(0,[sEmpno,sLocate,sSchship,sSdt]);

   if (txPutF('GA_SCHOD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaFamld1 사원 경력정보
   조회
   작성자 : 최종윤  02/01/16
===============================================================================}
function HgaWoiwd1.SelWoiwd1():Integer; //사원 경력정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_WOIWD_L1')) then  //ga_woiwd_l1.pc
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sSdate      );        // 근무시작일자
     GetFldVar('S_STRING2'   , sEdate      );        // 근무종료일자
     GetFldVar('S_STRING3'   , sCompnm     );        // 회사명
     GetFldVar('S_STRING4'   , sJikwe      );        // 직위
     GetFldVar('S_STRING5'   , sJikmunm    );        // 담당업무명
     GetFldVar('S_STRING6'   , sWkmm       );        // 인정개월수
     GetFldVar('S_STRING7'   , sWkRate     );        // 경력기간 인정율

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaFamld1 사원 경력정보
   신규입력/수정
   작성자 : 최종윤  02/01/27
===============================================================================}
function HgaWoiwd1.insWoiwd1():Integer;    // 사원 경력 신규입력/수정
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE12;S_TYPE13;S_TYPE14');

   SetFldValue(0 ,[sEmpno,sLocate,sSdate,sEdate,sCompnm,
                   sJikwe,sJikmunm,sWkmm,sEditid,sEditip,
                   sChoice,sSdate_old,sWkRate]);

   if (txPutF('GA_WOIWD_I1')) then begin //Tuxedo Service Call ga_woiwd_i1.pc
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaFamld1 사원 경력정보
   삭제
   작성자 : 최종윤  02/01/30
===============================================================================}
function HgaWoiwd1.delWoiwd1():Integer;    // 사원 경력 삭제
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue(0,[sEmpno ,sLocate,sSdate]);
   if (txPutF('GA_WOIWD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaQulid1 사원 자격정보 조회
   작성자 : 최종윤  02/01/17
===============================================================================}
function HgaQulid1.SelQulid1():Integer; //사원 경력정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_QULID_L1')) then begin     //Tuxedo Service Call ga_qulid_l1.pc
     GetFldVar('S_STRING1'   , sLcncd      );        // 자격코드
     GetFldVar('S_STRING2'   , sLcncdn     );        // 자격코드명
     GetFldVar('S_STRING3'   , sOrgcd      );        // 발행기관코드
     GetFldVar('S_STRING4'   , sOrgcdn     );        // 발행기관코드명
     GetFldVar('S_STRING5'   , sGetdate    );        // 취득일자
     GetFldVar('S_STRING6'   , sFnsdate    );        // 유효일자
     GetFldVar('S_STRING7'   , sChgdate    );        // 차기갱신일자
     GetFldVar('S_STRING8'   , sLcnno      );        // 자격번호
     GetFldVar('S_STRING9'   , sRemix      );        // 자격번호
     GetFldVar('S_STRING10'  , sSubject    );        // 자격번호
     GetFldVar('S_STRING11'  , sSubnm      );        // 자격번호
     GetFldVar('S_STRING12'  , sPromYn      );
     GetFldVar('S_STRING13'  , sPromSub      );



     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaQulid1 사원 자격 정보
   입력/수정
   작성자 : 최종윤  02/02/01
===============================================================================}
function HgaQulid1.insQulid1():Integer;    // 사원 자격 신규입력/수정
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0 ,[sEmpno  ,sLocate ,sLcncd,sOrgcd ,sGetdate,
                   sFnsdate,sChgdate,sLcnno,sEditid,sEditip ,
                   sChoice ,sLcncd_old,sRemix,sSubject,sLcnNO_old,  // 20200114 오정은 추가
                   sPromYn ,sPromSub]);                             // 20200623 오정은 추가  s
   if (txPutF('GA_QULID_I1')) then begin //Tuxedo Service Call  ga_qulid_i1.pc
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaQulid1 사원 자격 정보 삭제
   작성자 : 최종윤  02/02/01
===============================================================================}
function HgaQulid1.delQulid1():Integer;    // 사원 자격정보 삭제
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue(0,[sEmpno, sLocate, sLcncd]);
   if (txPutF('GA_QULID_D1')) then begin //Tuxedo Service Call ga_qulid_d1.pc
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaEducd1 사원 교육정보   조회
   작성자 : 문태용
   작성일 : 2004.07.22
===============================================================================}
function HgaEducd1.SelEducd1():Integer; //사원 교육정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_EDUCD_L1')) then begin     //Tuxedo Service Call ga_educd_l1.pc
     GetFldVar('S_STRING1'    , sEducd      );        // 교육코드
     GetFldVar('S_STRING3'    , sSdate      );        // 교육시작일자
     GetFldVar('S_STRING4'    , sEdate      );        // 교육종료일자
     GetFldVar('S_STRING5'    , sEduname    );        // 교육명
     GetFldVar('S_STRING6'    , sEduOrgcd   );        // 교육기관코드
     GetFldVar('S_STRING7'    , sEduOrg     );        // 교육기관명
     GetFldVar('S_STRING8'    , sEducont    );        // 교육제목
     GetFldVar('S_STRING9'    , sEduamt     );        // 교육금액
     GetFldVar('S_STRING10'   , sEduesti    );        // 교육평가
     GetFldVar('S_STRING11'   , sEdurank    );        // 교육석차
     GetFldVar('S_STRING12'   , sEduremk    );        // 비고
     GetFldVar('S_STRING13'   , sEduchk     );        // 무료교육 체크여부
     GetFldVar('S_STRING14'   , sInoutyn    );        // 원외구분
     GetFldVar('S_STRING15'   , sEduyn      );        // 이수여부
     GetFldVar('S_STRING16'   , sPoint      );        // 이수여부
     GetFldVar('S_STRING17'   , sInout      );        // 국내외여부
     GetFldVar('S_STRING18'   , sEdupoint   );        // 이수점수
     GetFldVar('S_STRING19'   , sEdumonth1  );        // 1개월차
     GetFldVar('S_STRING20'   , sEdumonth2  );        // 2개월차
     GetFldVar('S_STRING21'   , sEdumonth3  );        // 3개월차
     GetFldVar('S_STRING22'   , sEdutotal   );        // 총점
     GetFldVar('S_STRING23'   , sJikwe      );        // 직위
     GetFldVar('S_STRING24'   , sJikwenm    );        // 직위명
     GetFldVar('S_STRING25'   , sTime       );        // 직위명
     GetFldVar('S_STRING26'   , sEduseq     );        // 교육 일련번호 20090725 add


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;


{===============================================================================
   HgaEducd1 승진자격시험 조회
===============================================================================}
function HgaEducd1.SelEducd3():Integer; //사원 교육정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1'); //service입력변수
   SetFldValue(0,[sJikwe] );

   if (txGetF('GA_EDUCD_L3')) then begin     //Tuxedo Service Call ga_educd_l3.pc
     GetFldVar('S_STRING1'    , sDeptnm     );        // 소속부서
     GetFldVar('S_STRING2'    , sWkareanm   );        // 근무부서
     GetFldVar('S_STRING3'    , sEmpno      );        // 사번
     GetFldVar('S_STRING4'    , sEmpnm      );        // 성명
     GetFldVar('S_STRING5'    , sJikwenm    );        // (현)직위명
     GetFldVar('S_STRING6'    , sApodate    );        // (현)직위승진일자
     GetFldVar('S_STRING7'    , sEduyn      );        // 승진자격시험이수여부
     GetFldVar('S_STRING8'    , sEdupoint   );        // 이수점수
     GetFldVar('S_STRING9'    , sEduremk    );        // 비고

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaEducd1 사원 교육정보   등록
   작성자 : 문태용
   작성일 : 2004.07.23
===============================================================================}
function HgaEducd1.InsUpEducd1():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;S_TYPE21;S_TYPE22;'+
              'S_TYPE23;S_TYPE24;S_TYPE25;S_TYPE26;S_TYPE27;S_TYPE28;S_TYPE29;S_TYPE30;S_TYPE31');


   SetFldValue(0 ,[sCodsrh,sLocate,sEducd,sSdate,sEdate,
                   sEduname,sEduOrgcd,sEduOrg,sEducont,sEduamt,
                   sEduesti,sEdurank,sEduremk,sInoutyn,sEduyn,
                   sPoint,sEditid,sEditip,sEducd_old,sSdate_old,sChoice,sInout,
                   sEdupoint,sEdumonth1,sEdumonth2,sEdumonth3,sJikwe,sEduchk,sTime,sCont,sEduseq]);



   if (txPutF('GA_EDUCD_I1')) then begin //Tuxedo Service Call  ga_educd_i1.pc
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaEducd1 사원교육정보 삭제
   작성자 : 문태용
   작성일 : 2004.07.23
===============================================================================}
function HgaEducd1.DelEducd1():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

   SetFldValue(0,[sCodsrh, sLocate, sEducd, sSdate, sCont, sEduseq]);
   if (txPutF('GA_EDUCD_D1')) then begin //Tuxedo Service Call ga_educd_d1.pc
      Result := 1;
      txFree;
   end;
end;

// 20060920   추가 엑셀업로드
function HgaEducd1.InsExcelEducd1(iCnt:integer): integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.


   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;' + //S_TYPE5;' +
                'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
                'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
                'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;' +
                'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25');
     SetFldValue32(0 ,[ sEmpno, sLocate, sSdate, sEdate, //sEducd,
                         sEduname, sEduOrg , sEducont, sEduamt, sEduchk,
                         sEdurank, sPoint  , sInoutyn, sEduyn, sInout  ,
                         sEdupoint, sEdumonth1, sEdumonth2, sEdumonth3, sEduremk,
                         sEditid, sEditip, sMode, sJikwenm,sTime]);

   if (txPutF32('GA_EDUCD_I2')) then //Tuxedo Service Call ga_educd_i2.pc
   begin
       Result := 1;  //
       txFree32;
   end;
end;



function HgaEducd1.SelNewEdu():Integer; //사원 교육정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
   SetFldValue(0,[sEmpno,sMngcd,sMidcd,sSdate,sEdate] );

   if (txGetF('GA_EDUM_L10')) then begin     //Tuxedo Service Call ga_educd_l1.pc
     GetFldVar('S_STRING1'    , sMngcdNm    );        // 교육코드
     GetFldVar('S_STRING2'    , sMidcdNm    );        // 교육시작일자
     GetFldVar('S_STRING3'    , sEdflagNm   );        // 교육종료일자
     GetFldVar('S_STRING4'    , sEducode    );        // 교육명
     GetFldVar('S_STRING5'    , sSdate      );        // 교육기관코드
     GetFldVar('S_STRING6'    , sEdate      );        // 교육기관명
     GetFldVar('S_STRING7'    , sStime      );        // 교육제목
     GetFldVar('S_STRING8'    , sEtime      );        // 교육금액
     GetFldVar('S_STRING9'    , sEdutime    );        // 교육평가
     GetFldVar('S_STRING10'   , sEdupoint   );        // 교육석차
     GetFldVar('S_STRING11'   , sEduAvg     );        // 비고
     GetFldVar('S_STRING12'   , sEdutitle   );        // 무료교육 체크여부
     GetFldVar('S_STRING13'   , sExecyn     );        // 무료교육 체크여부


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaAward1 사원 상훈정보
   조회
   작성자 : 최종윤  02/01/21
===============================================================================}
function HgaAward1.SelAward1():Integer; //사원 상훈정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_AWARD_L1')) then begin     //Tuxedo Service Call ga_award_l1.pc
     GetFldVar('S_STRING1'   , sAwardate  );        // 상훈발생일
     GetFldVar('S_STRING2'   , sAwarcd    );        // 상훈코드
     GetFldVar('S_STRING3'   , sAwarcdnm  );        // 상훈코드명
     GetFldVar('S_STRING4'   , sTypecd    );        // 상훈구분코드
     GetFldVar('S_STRING5'   , sTypecdnm  );        // 상훈구분코드명
     GetFldVar('S_STRING6'   , sRemtxt    );        // 내용
     GetFldVar('S_STRING7'   , sOrgnm     );        // 상훈기관명 sAwarder
     GetFldVar('S_STRING8'   , sAwarder   );        // 수여자 20061010

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaAward1 사원 상훈 정보
   입력/수정
   작성자 : 최종윤  02/02/01
===============================================================================}
function HgaAward1.insAward1():Integer;    // 사원 상훈 신규입력/수정
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14');

   SetFldValue(0 ,[sEmpno,sLocate,sAwardate,
                   sAwarcd,sTypecd,sRemtxt,
                   sOrgnm,sEditid,sEditip,
                   sChoice,sAwardate_old,sAwarcd_old,sAwarder]);

   if (txPutF('GA_AWARD_I1')) then begin //Tuxedo Service Call ga_award_i1.pc
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaAward1 사원 상훈 정보
   삭제
   작성자 : 최종윤  02/02/01
===============================================================================}
function HgaAward1.delAward1():Integer;    // 사원 상훈 삭제
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

   SetFldValue(0,[sEmpno, sLocate, sAwardate, sAwarcd]);
   if (txPutF('GA_AWARD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaPunsd1 사원 징계 정보
   조회
   작성자 : 최종윤  02/01/25
===============================================================================}
function HgaPunsd1.SelPunsd1():Integer; //사원 징계정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_PUNSD_L1')) then begin     //Tuxedo Service Call ga_punsd_l1.pc
     GetFldVar('S_STRING1'   , sSdate       );        // 징계시작일
     GetFldVar('S_STRING2'   , sEdate       );        // 징계종료일
     GetFldVar('S_STRING3'   , sPuncd       );        // 징계코드
     GetFldVar('S_STRING4'   , sPuncdnm     );        // 징계코드명
     GetFldVar('S_STRING5'   , sTypecd      );        // 징계구분코드
     GetFldVar('S_STRING6'   , sTypecdnm    );        // 징계구분코드명
     GetFldVar('S_STRING7'   , sRemtxt      );        // 내용
     GetFldVar('S_STRING8'   , sOrgnm       );        // 징계기관명

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaPunsd1 사원 징계 정보
   입력 / 수정
   작성자 : 최종윤  02/01/30
===============================================================================}
function HgaPunsd1.insPunsd1():Integer;    // 사원 징계 신규입력/수정
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;'+
              'S_TYPE10;S_TYPE12;S_TYPE13;S_TYPE14');

   SetFldValue(0 ,[sEmpno,sLocate,sSdate,
                   sEdate,sPuncd,sTypecd,
                   sRemtxt,sOrgnm,sEditid,
                   sEditip,sChoice,sSdate_old,sPuncd_old]);

   if (txPutF('GA_PUNSD_I1')) then begin //Tuxedo Service Call  ga_punsd_i1.pc
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaPunsd1 사원 징계 정보
   삭제
   작성자 : 최종윤  02/01/30
===============================================================================}
function HgaPunsd1.delPunsd1():Integer;    // 사원 징계 삭제
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

   SetFldValue(0,[sEmpno,sLocate,sSdate,sPuncd ]);

   if (txPutF('GA_PUNSD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;
{===============================================================================
   HgaApoid1 사원 발령 정보 조회
   작성자 : 최종윤  02/01/25
===============================================================================}
function HgaApoid1.SelApoid1():Integer; //사원 발령정보 조회

begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_APOID_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
     GetFldVar('S_STRING1'   ,  sApocd      );        // 발 령 코 드
     GetFldVar('S_STRING2'   ,  sApoinm     );        // 발 령 명
     GetFldVar('S_STRING3'   ,  sApodate    );        // 발 령 일
     GetFldVar('S_STRING4'   ,  sEnddate    );        // 발령종료
     GetFldVar('S_STRING5'   ,  sJikjong    );        // 직종코드
     GetFldVar('S_STRING6'   ,  sJikjongnm  );        // 직 종 명
     GetFldVar('S_STRING7'   ,  sJikgup     );        // 직급코드
     GetFldVar('S_STRING8'   ,  sJikgupnm   );        // 직 급 명
     GetFldVar('S_STRING9'   ,  sJikmu      );        // 직무코드(신분코드)
     GetFldVar('S_STRING10'  ,  sJikmunm    );        // 직무명(신분명)
     GetFldVar('S_STRING11'  ,  sJikchek    );        // 직책코드
     GetFldVar('S_STRING12'  ,  sJikcheknm  );        // 직 책 명
     GetFldVar('S_STRING13'  ,  sJikwe      );        // 직위코드
     GetFldVar('S_STRING14'  ,  sJikwenm    );        // 직 위 명
     GetFldVar('S_STRING15'  ,  sJikgun     );        // 직군코드
     GetFldVar('S_STRING16'  ,  sJikgunnm   );        // 직 군 명
     GetFldVar('S_STRING17'  ,  sHobong     );        // 호    봉
     GetFldVar('S_STRING18'  ,  sDeptcd     );        // 부서코드
     GetFldVar('S_STRING19'  ,  sDeptnm     );        // 부 서 명
     GetFldVar('S_STRING20'  ,  sWkareacd   );        // 근무지코드 --> 근무부서코드
     GetFldVar('S_STRING21'  ,  sWkareacdnm );        // 근무지명 --> 근무부서명
     GetFldVar('S_STRING22'  ,  sRemtxt     );        // 비    고
     GetFldVar('S_STRING23'  ,  sConCurYn   );        // 겸직주부구분
     GetFldVar('S_STRING24'  ,  sAppotno    );        // 사령장 번호
     GetFldVar('S_STRING25'  ,  sWLocate    );        // 근무부서 사업장 코드
     GetFldVar('S_STRING26'  ,  sWkplace    );        // 근무지  

     GetFldVar('S_STRING27'  ,  sLargcdnm   );
     GetFldVar('S_STRING28'  ,  sMiddlecdnm );
     GetFldVar('S_STRING29'  ,  sSmallcdnm  );
     GetFldVar('S_STRING30'  ,  sDetailcdnm );

     GetFldVar('S_STRING31'  ,  sLargcd     );
     GetFldVar('S_STRING32'  ,  sMiddlecd   );
     GetFldVar('S_STRING33'  ,  sSmallcd    );
     GetFldVar('S_STRING34'  ,  sDetailcd   );

     GetFldVar('S_STRING35'  ,  sGubun);

     GetFldVar('S_STRING36'  ,  sNewGrade   ); // 20200630
     GetFldVar('S_STRING37'  ,  sNewGradenm ); // 20200630
     GetFldVar('S_STRING38'  ,  sYeoncha    ); // 20200630
     GetFldVar('S_STRING39'  ,  sYeonchanm  ); // 20200630
     GetFldVar('S_STRING40'  ,  sSJYeonhan  ); // 20200630
     GetFldVar('S_STRING41'  ,  sSJYeonhannm); // 20200630
     GetFldVar('S_STRING42'  ,  sPromyear   ); // 20200630

     
     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

{===============================================================================
   HgaApoid1 사원 발령 정보 조회
   작성자 : 최종윤  02/01/25
===============================================================================}
function HgaApoid1.SelApoid2():Integer; //사원 발령정보 조회
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;' +
                'S_TYPE4;S_TYPE5;S_TYPE6;' +
                'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;');

   SetFldValue32(0,
                [sLocate,  sApocd,   sDeptcd,
                 sJikmu,   sJikjong, sJikwe,
                 sJikchek, sApodate, sEnddate, sJikgun, sGubun]);

   if (txGetF32('GA_APOID_L2')) then begin     // Tuxedo Service Call ga_apoid_l2.pc
     GetFldVar32('S_STRING1'  , sApoinm    );  // 발령구분
     GetFldVar32('S_STRING2'  , sApodate   );  // 발령일자
     GetFldVar32('S_STRING3'  , sDeptnm    );  // 소속
     GetFldVar32('S_STRING4'  , sEmpno     );  // 개인번호
     GetFldVar32('S_STRING5'  , sEmpnm     );  // 성명
     GetFldVar32('S_STRING6'  , sJikjongnm );  // 직종
     GetFldVar32('S_STRING7'  , sJikgupnm  );  // 직급
     GetFldVar32('S_STRING8'  , sHobong    );  // 호봉
     GetFldVar32('S_STRING9'  , sJikwenm   );  // 직위
     GetFldVar32('S_STRING10' , sWkareacdnm ); // 근무부서명 20061010
     GetFldVar32('S_STRING11' , sRemtxt     ); // 비고       20061107
     GetFldVar32('S_STRING12' , sBefore     ); // 비고       20061107
     GetFldVar32('S_STRING13' , sWkTime     ); // 비고       20061107
     GetFldVar32('S_STRING14' , sEnddt      ); // 종료일자   2016.06.13 김승철 추가
     GetFldVar32('S_STRING15' , sRetdt      ); // 퇴직일자   20210714 추가 


     Result := GetRecordCnt32('S_STRING1');
     txFree32;
   end;
end;

function HgaApoid1.SelApoid3():Integer; //사원 발령대상자  조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15');

   SetFldValue(0,[sLocate,sDeptcd,sWkareacd,sJikjong,sJikgup,
                  sJikchek,sJikwe,sJikgun,sEntSYYMM,sEntEYYMM,
                  sSgMonth,sHobong,sJikmu,sChargeGbn,sGubun]);

   if (txGetF('GA_APOID_L3')) then       //Tuxedo Service Call ga_apoid_l3.pc
   begin
      GetFldVar('S_STRING1'  , sEmpnm     );   // 성명
      GetFldVar('S_STRING2'  , sEmpno     );   // 사원번호
      GetFldVar('S_STRING3'  , sDeptnm    );   // 소속부서
      GetFldVar('S_STRING4'  , sWkareacdnm);   // 근무부서
      GetFldVar('S_STRING5'  , sEntDate   );   // 입사일
      GetFldVar('S_STRING6'  , sLastDate  );   // 최종발령일
      GetFldVar('S_STRING7'  , sApoinm    );   // 발령명
      GetFldVar('S_STRING8'  , sJikgunnm  );   // 직 군
      GetFldVar('S_STRING9'  , sJikjongnm );   // 직 종
      GetFldVar('S_STRING10' , sJikwenm   );   // 직 위
      GetFldVar('S_STRING11' , sJikcheknm );   // 직 책
      GetFldVar('S_STRING12' , sJikgupnm  );   // 직 급
      GetFldVar('S_STRING13' , sHobong    );   // 호 봉
      GetFldVar('S_STRING14' , sJikjongcd );   // 직종
      GetFldVar('S_STRING15' , sJikgupcd  );   // 직급
      GetFldVar('S_STRING16' , sJikchekcd );   // 직책
      GetFldVar('S_STRING17' , sJikwecd   );   // 직위
      GetFldVar('S_STRING18' , sJikguncd  );   // 직군
      GetFldVar('S_STRING19' , sDeptcd2   );   // 소속부서
      GetFldVar('S_STRING20' , sWkareacd2 );   // 근무부서
      GetFldVar('S_STRING21' , sJikmucd   );   // 직무코드(신분코드)
      GetFldVar('S_STRING22' , sJikmunm   );   // 직무명(신분명)
      GetFldVar('S_STRING23' , sWLocate   );   // 근무부서 사업장
      GetFldVar('S_STRING24' , sBefhobong );   // 인사마스터 호봉의 이전호봉
      GetFldVar('S_STRING25' , sNexthobong);   // 현재호봉의 다음호봉
      GetFldVar('S_STRING26' , sWkplace);      // 20061012

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;



{===============================================================================
   사원 휴직 발령 정보 확인및 휴직일수 조회

===============================================================================}
function HgaApoid1.SelApoid4():Integer; //사원 발령대상자  조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue(0,[sLocate,sEmpno,sSDate,sEDate]);

   if (txGetF('GA_APOID_L5')) then begin    //Tuxedo Service Call  ga_apoid_l5.pc
     GetFldVar('S_STRING1'  , sDays    );   // 휴직기간 일수
     GetFldVar('S_STRING2'  , sApocd   );   // 20061101 발령코드 추가

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaApoid1 사원 발령 정보 입력/수정
   작성자 : 최종윤  02/02/07
===============================================================================}
function HgaApoid1.insApoid1():Integer;    // 사원 발령 신규입력/수정
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
              'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25;'+ {S_TYPE26; 전입자 입사일. 오정은 막음. 2019-10-12}
              'S_TYPE27;'+ {S_TYPE27' 20200513 sAfter 안쓰는 변수 삭제}
              'S_TYPE28;S_TYPE29;S_TYPE30;S_TYPE31;' //20200630

              );

   SetFldValue(0 ,[sEmpno,sLocate,sApocd,sApodate,sEnddate,
                   sJikjong,sJikgup,sJikmu,sJikchek,sJikwe,
                   sJikgun,sHobong,sDeptcd,sWkareacd,sRemtxt,
                   sEditid,sEditip,sConCurYn,sChoice,sOldKey1,
                   sOldKey2,sCodsrh,sAppotno,sWLocate,sWkplace, {sEntdt 전입자 입사일. 오정은 막음. 2019-10-12}
                   sGubun,  // sAfter 이지윤 추가 2018-11-30
                   sNewGrade, sYeoncha, sSJYeonhan, sPromyear //20200630

                   ]);             {,sAfter 20200513 sAfter 안쓰는 변수 삭제}
   //ga_apoid_i15.pc
   if (txPutF('GA_APOID_I15')) then begin //Tuxedo Service Call ga_apoid_i15.pc
      Result := 1;
      txFree;
   end;


{
   if (txPutF('GA_APOID_I3')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
}
end;


function HgaApoid1.insApoid2(iCnt : Integer) :Integer;    // 사원 발령 신규입력/수정
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE23;S_TYPE24');

  for ii := 0 to iCnt -1 do
     SetFldValue(ii,[sEmpno[ii],   sLocate[ii], sApocd[ii],   sApodate[ii],  sEnddate[ii],
                     sJikjong[ii], sJikgup[ii], sJikmu[ii],   sJikchek[ii],  sJikwe[ii],
                     sJikgun[ii],  sHobong[ii], sDeptcd[ii],  sWkareacd[ii], sRemtxt[ii],
                     sEditid[ii],  sEditip[ii], sConCurYn[ii],sAppotno[ii],  sWLocate[ii]]);

  if (txPutF('GA_APOID_I4')) then
  begin //Tuxedo Service Call
     Result := 1;
     txFree;
  end;

end;

{===============================================================================
   GAAPOICT 발령코드
   발령구분 조회 (GaApoict)
   작성자 : 고영관
===============================================================================}
function HgaApoid1.ListComCodeName : Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
//   SetFldName('S_TYPE1;');
//   SetFldValue(0,['A1'] );

   //Tuxedo Service Call
   //ga_apoic_l1.pc

   if (txGetF('GA_APOIC_L1')) then  //ga_apoic_l1.pc
   begin
     GetFldVar('S_STRING1',  sCode    );  // 코드
     GetFldVar('S_STRING2',  sCodeName);  // 코드명

      //조회건수 return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;

function HgaApoid1.ListProof : Integer;     // 경력증명서 관련 발령사항(채용, 부서이동)
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); // sEmpno2 오정은 추가 2019-10-25.
   SetFldValue(0,[sOldKey1, sOldKey2, sEmpno2] );

   //Tuxedo Service Call
   if (txGetF('GA_APOID_L4')) then
   begin
     GetFldVar('S_STRING1',  sEmpno    );  // 사원번호       필요
     GetFldVar('S_STRING2',  sWkareacd );  // 근무부서코드
     GetFldVar('S_STRING3',  sDeptnm   );  // 부서명         필요
     GetFldVar('S_STRING4',  sApodate  );  // 발령일         필요
     GetFldVar('S_STRING5',  sEndDate  );  // 발령종료일     필요
     GetFldVar('S_STRING6',  sJikwe    );  // 직위코드
     GetFldVar('S_STRING7',  sJikwenm  );  // 직위명         필요
     GetFldVar('S_STRING8',  sJikchek  );  // 직책코드
     GetFldVar('S_STRING9',  sJikcheknm);  // 직책명         필요
     GetFldVar('S_STRING10', sJikjong  );  // 직종코드
     GetFldVar('S_STRING11', sJikjongnm);  // 직종명         필요
     GetFldVar('S_STRING12', sJikmu    );  // 직무코드
     GetFldVar('S_STRING13', sJikmunm  );  // 직무명         필요

      //조회건수 return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;



{===============================================================================
   HgaApoid1 사원 발령 정보
   삭제
   작성자 : 최종윤  02/02/07
===============================================================================}
{function HgaApoid1.delApoid1(iCnt:Integer):Integer;    // 사원 발령 삭제
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[String(sEmpno[i]),
                  String(sLocate[i]),
                  String(sApocd[i]),
                  String(sApodate[i])]);
   end;
   if (txPutF('GA_APOID_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;}

/////////////////////////////////////////////////////////////////////////
//      정원관리      2013-05-23
//       Create by 허장원
/////////////////////////////////////////////////////////////////////////



function HgaTomng.TomngInsert: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'  +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
             'S_TYPE11;');

  SetFldValue(0,[ sLocate   ,sWkareacd  ,sJikjong   ,sStdate   ,sDptto
                 ,sPmto     ,sPreto     ,sRemark    ,sEditid   ,sEditip
                 ,sJikgun ]);

  if (txPutF('GA_TOMNGT_I1')) then
  begin //Tuxedo Service Call
    Result := 1;
    txFree;
  end;
end;



function HgaTomng.TomngSelect: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
  SetFldValue(0,[ sLocate ,sWkareacd, sSelgbn]);

  if (txGetF('GA_TOMNGT_L1')) then
  begin
    if sSelgbn = 'A' then
    begin
      GetFldVar('S_STRING1'    , ssWkareanm    );
      GetFldVar('S_STRING2'    , ssJikjongnm   );
      GetFldVar('S_STRING3'    , ssDptto       );
      GetFldVar('S_STRING4'    , ssStdate      );
      GetFldVar('S_STRING5'    , ssRemark      );
      GetFldVar('S_STRING6'    , ssJikgunnm    );
    end
    else if sSelgbn = 'B' then
    begin
      GetFldVar('S_STRING1'    , ssWkareanm   );
      GetFldVar('S_STRING2'    , ssJikjongnm  );
      GetFldVar('S_STRING3'    , ssStdate     );
      GetFldVar('S_STRING4'    , ssEddate     );
      GetFldVar('S_STRING5'    , ssDptto      );
      GetFldVar('S_STRING6'    , ssPmto       );
      GetFldVar('S_STRING7'    , ssPreto      );
      GetFldVar('S_STRING8'    , ssRemark     );
      GetFldVar('S_STRING9'    , ssEditdate   );
      GetFldVar('S_STRING10'   , ssEditemp    );
      GetFldVar('S_STRING11'   , ssJikgunnm   );
    end;
    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;




function HgaTomng.DptToSelect: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
  SetFldValue(0,[ sLocate ,sWkareacd, sJikjong, sJikgun]);

  if (txGetF('GA_TOMNGT_L3')) then
  begin
    GetFldVar('S_STRING1' , ssDptto  );
    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;



function HgaTomng.NowTOCntSel: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
  SetFldValue(0,[sLocate, sStdate, sWkareacd]);

  if (txGetF('GA_TOMNGT_L2')) then
  begin
    GetFldVar('S_STRING1'  ,  ssWkareanm  );
    GetFldVar('S_STRING2'  ,  ssJikgunnm  );
    GetFldVar('S_STRING3'  ,  ssJikjongnm );
    GetFldVar('S_STRING4'  ,  ssDptto     );
    GetFldVar('S_STRING5'  ,  ssNcnt1     );
    GetFldVar('S_STRING6'  ,  ssNcnt2     );
    GetFldVar('S_STRING7'  ,  ssNcnt3     );
    GetFldVar('S_STRING8'  ,  ssNcnt4     );
    GetFldVar('S_STRING9'  ,  ssNcnt5     );
    GetFldVar('S_STRING10' ,  ssNcnt6     );
    GetFldVar('S_STRING11' ,  ssNcnt7     );
    GetFldVar('S_STRING12' ,  ssNcnt8     );
    GetFldVar('S_STRING13' ,  ssNcnt9     );
    GetFldVar('S_STRING14' ,  ssNcnt10    );
    GetFldVar('S_STRING15' ,  ssNcnt11    );
    GetFldVar('S_STRING16' ,  ssPcnt      );
    GetFldVar('S_STRING17' ,  ssRcnt      );
    GetFldVar('S_STRING18' ,  ssWkareacd  );
    GetFldVar('S_STRING19' ,  ssJikjong   );
    GetFldVar('S_STRING20' ,  ssJikgun    );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;



function HgaTomng.DptEmplist: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;');
  SetFldValue(0,[sLocate , sStdate , sWkareacd , sJikgun , sJikjong ,
                 sJikmu ]);

  if (txGetF('GA_TOMNGT_L4')) then
  begin
    GetFldVar('S_STRING1'  , ssEmpno     );
    GetFldVar('S_STRING2'  , ssEmpnm     );
    GetFldVar('S_STRING3'  , ssApoinm    );
    GetFldVar('S_STRING4'  , ssApodate   );
    GetFldVar('S_STRING5'  , ssEnddate   );
    GetFldVar('S_STRING6'  , ssJikjongnm );
    GetFldVar('S_STRING7'  , ssJikmunm   );
    GetFldVar('S_STRING8'  , ssJikcheknm );
    GetFldVar('S_STRING9'  , ssJikwenm   );
    GetFldVar('S_STRING10' , ssJikgunnm  );
    GetFldVar('S_STRING11' , ssDeptnm    );
    GetFldVar('S_STRING12' , ssWkareanm  );
    GetFldVar('S_STRING13' , ssRemtxt    );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;







{===============================================================================
   HgaComcd1 공통정보
   조회
   작성자 : 최종윤  02/02/18
===============================================================================}
function HgaComcd1.SelComcd1():Integer; // 공통정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
   SetFldValue(0,[sInCode1,sChoice,sCodsrh] );

   if (txGetF('GA_COMCD_L1')) then begin     //Tuxedo Service Call ga_comcd_l1.pc
     GetFldVar('S_STRING1'   ,  sComcddtl      );        // 중분류코드
     GetFldVar('S_STRING2'   ,  sComcdnm       );        // 중분류코드명

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaComcd1 공통정보 입력
   작성자 : 최종윤  02/02/18
===============================================================================}
function HgaComcd1.insComcd1():Integer;    // 공통정보 신규입력
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;');

      SetFldValue(0 ,[sLargcd,sComcddtl,sCdabbrnm,sComcdnm,sCdprtnm,
                      sCdprtseq,sEditid,sEditip]);

   if (txPutF('GA_COMCD_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaVacact1 근태코드관리 정보 조회
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaVacact1.SelVacac1():Integer; //근태코드 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName(''); //service입력변수
   SetFldValue(0,[]);

   if (txGetF('GA_VACAC_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sRefwkcd    );        // 근태코드
     GetFldVar('S_STRING2'   ,  sWknm       );        // 근태명
     GetFldVar('S_STRING3'   ,  sWkgbn      );        // 근태구분
     GetFldVar('S_STRING4'   ,  sDaytime    );        // 시간 일수 구분
     GetFldVar('S_STRING5'   ,  sBasdedyn   );        // 기본급차감여부
     GetFldVar('S_STRING6'   ,  sWkday      );        // 근무일수 포함여부
     GetFldVar('S_STRING7'   ,  sAttdtcnt   );        // 출근일수 포함여부
     GetFldVar('S_STRING8'   ,  sDeldate    );        // DELDATE  폐기일자

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaVacact1 근태코드관리 정보 입력/수정
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaVacact1.insVacac1():Integer;    // 근태코드 신규입력/수정
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');

   SetFldValue(0 ,[sRefwkcd,sWknm,sWkgbn,sDaytime,sBasdedyn,
                   sWkday,sAttdtcnt,sEditid,sEditip,sChoice]);

   if (txPutF('GA_VACAC_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaVacact1 근태코드관리 정보 삭제
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaVacact1.delVacac1(iCnt:Integer):Integer;    // 근태코드 삭제
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[String(sRefwkcd[i]),
                  String(sEditid[i]),
                  String(sEditip[i])]);
   end;
   if (txPutF('GA_VACAC_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;
{===============================================================================
   HgaApoict1 발령코드관리 정보 조회
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaApoict1.SelApoic1():Integer; //발령코드 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName(''); //service입력변수
   SetFldValue(0,[]);

   if (txGetF('GA_APOIC_L2')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sApoicd  );        // 발령코드
     GetFldVar('S_STRING2'   ,  sApoinm  );        // 발령명
     GetFldVar('S_STRING3'   ,  sYn1     );        // 휴직적용
     GetFldVar('S_STRING4'   ,  sYn2     );        // 복직적용
     GetFldVar('S_STRING5'   ,  sYn3     );        // 퇴직적용
     GetFldVar('S_STRING6'   ,  sYn4     );        // 징계적용
     GetFldVar('S_STRING7'   ,  sYn5     );        // 유급구분
     GetFldVar('S_STRING8'   ,  sYn6     );        // 예비구분1
     GetFldVar('S_STRING9'   ,  sYn7     );        // 예비구분2
     GetFldVar('S_STRING10'  ,  sYn8     );        // 예비구분3
     GetFldVar('S_STRING11'  ,  sYn9     );        // 예비구분4
     GetFldVar('S_STRING12'  ,  sDeldate );        // DELDATE 폐기일자
     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaApoict1 발령코드관리 정보
   입력/수정
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaApoict1.insApoic1():Integer;    // 발령코드 신규입력/수정
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;');

   SetFldValue(0 ,[sApoicd,sApoinm,sYn1,sYn2,sYn3,
                   sYn4,sYn5,sYn6,sYn7,sYn8,
                   sYn9,sEditid,sEditip,sChoice]);

   if (txPutF('GA_APOIC_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaApoict1 발령코드관리 정보 삭제
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaApoict1.delApoic1(iCnt:Integer):Integer;    // 발령코드 삭제
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[String(sApoicd[i]),
                  String(sEditid[i]),
                  String(sEditip[i])]);
   end;
   if (txPutF('GA_APOIC_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaWrktct 근무형태코드관리 정보 조회
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaWrktct.SelWrktc1():Integer; //근무형태코드 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[ssLocate,ssFlag]);

   if (txGetF('GA_WRKTC_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sWrktcd);         //근무형태코드
     GetFldVar('S_STRING2'   ,  sWrktnm );        //근무형태명
     GetFldVar('S_STRING3'   ,  sStm    );        //시작시간
     GetFldVar('S_STRING4'   ,  sEtm    );        //종료시간
     GetFldVar('S_STRING5'   ,  sOtm    );        //시간외적용
     GetFldVar('S_STRING6'   ,  sNtm    );        //심야적용
     GetFldVar('S_STRING7'   ,  sWtm    );        //특근적용
     GetFldVar('S_STRING8'   ,  sSortord);        //정렬순서
     GetFldVar('S_STRING9'   ,  sDeldate);        //폐기일자
     GetFldVar('S_STRING10'  ,  sFlag   );        //폐기일자
     GetFldVar('S_STRING11'  ,  sVtm    );        //정렬순서
     GetFldVar('S_STRING12'  ,  sOvm    );        //폐기일자
     GetFldVar('S_STRING13'  ,  sOfm    );        //폐기일자
     GetFldVar('S_STRING14'  ,  sPregyn );        // 2015.04.14 김승철 추가  산모제외 근무여부

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;


{===============================================================================
   HgaWrktct 근무형태코드관리 정보 조회
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaWrktct.SelWList():Integer; //근무형태코드 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[ssLocate,ssFlag,ssYYMM]);

   if (txGetF('GA_WLIST_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sEmpno  );         //근무형태코드
     GetFldVar('S_STRING2'   ,  sEmpnm  );        //근무형태명
     GetFldVar('S_STRING3'   ,  sEntdt  );        //시작시간
     GetFldVar('S_STRING4'   ,  sDeptnm );        //종료시간
     GetFldVar('S_STRING5'   ,  sCnt );        //종료시간


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;


////////////////////////////////////////////////////////////////////////////////
//   HgaWrktct 근무형태코드관리 정보조회(코드, 코드명, 삭제코드 제외)
//   작성자 : 문 태 용 2004-10-28
////////////////////////////////////////////////////////////////////////////////
function HgaWrktct.ListWrktc:Integer; //근무형태코드 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[ssLocate, ssFlag, ssDeptcd]);

   if (txGetF('GA_WRKTC_L2')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sWrktcd);         //근무형태코드
     GetFldVar('S_STRING2'   ,  sWrktnm );        //근무형태명

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaWrktct 근무형태코드관리 정보
   입력/수정
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaWrktct.insWrktc1():Integer;    // 근무형태코드 신규입력/수정
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16;S_TYPE17;S_TYPE18');

   SetFldValue(0 ,[sWrktcd,sWrktnm,sStm,sEtm,sOtm,sNtm,sSortord,
                   sEditid,sEditip,sChoice,sLocate,sFlag,sWtm,sVtm,sOvm,sOfm,sPregyn,sDeldate]);

   if (txPutF('GA_WRKTC_I1')) then  // ga_wrktc_i1.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaWrktct 근무형태코드관리 정보
   삭제
   작성자 : 최종윤  02/02/25
===============================================================================}
function HgaWrktct.delWrktc1(iCnt:Integer):Integer;    // 근무형태코드 삭제
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   for i := 0 to iCnt -1 do
   begin
     SetFldValue(i,[String(sLocate[i]),
                    String(sWrktcd[i]),
                    String(sFlag[i]),
                    String(sEditid[i]),
                    String(sEditip[i])]);
   end;

   if (txPutF('GA_WRKTC_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HgaWrktct.TreeSelWrktc1: Integer; // 2020.01.05 오정은 추가
begin
//
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1'); //service입력변수
   SetFldValue(0,[ssLocate]);

   if (txGetF('GA_WRKTC_L3')) then      //ga_wrktc_l3.pc
   begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  , sLevel     );   //레벨
      GetFldVar('S_STRING2'  , sType      );   //근태구분
      GetFldVar('S_STRING3'  , sWrktnm    );   //근태코드

      GetFldVar('S_STRING4'  , sDutytime  );   //근무시간 20170220 LEE
      GetFldVar('S_STRING5'  , sWotime    );   //당직시간 20170220 LEE

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;


end;

function HgaUsGrpt.SelUsGrpt: Integer;
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수
    SetFldValue(0,[ssEmpno,ssGrpid]);

    if (txGetF('GB_USGRP_L1')) then
    begin     //Tuxedo Service Call
        GetFldVar ('S_STRING1', sDeptcd );

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;

end;

//============================================================================//
// HgaInsamt  인사마스터                                                      //
// 부서별인원현황 조회                                                        //
// 작성자 : 고 영 관                                                          //
//============================================================================//
function HgaInsamt.ListGaInsamt(sType1,sType2,sType3,sType4: String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //S_TYPE4 추가 20200406 오정은
   SetFldValue(0,[sType1,sType2,sType3,sType4]);   //sType4  추가 20200406 오정은

   //Tuxedo Service Call
   if (txGetF('GA_INSAM_L2')) then  //ga_insam_l2.pc
   begin
     GetFldVar('S_STRING1',  sDeptcd );  // 부서코드
     GetFldVar('S_STRING2',  sDeptnm );  // 부서명
     GetFldVar('S_STRING3',  sCount  );  // 부서인원

     //조회건수 return
     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

//===============================================================================
//   GaInsamt 인사마스터
//   부서인원현황 상세정보
//   작성자 : 고영관
//===============================================================================
function HgaInsamt.List2GaInsamt():integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0,[sType1,                               // 사업장
                  sType2,                               // 부서구분
                  sType3,                               // 부서
                  SType4,                               // 조회기준일
                  SType5                                // 조회시 통합조회인지 통합조회 아닌지 구분
                  ] );

   if (txGetF('GA_INSAM_L3')) then begin                // Tuxedo Service Call ga_insam_l3.pc
      GetFldVar('S_STRING1'  , sEmpno             );    // 사번
      GetFldVar('S_STRING2'  , sEmpnm             );    // 성명
      GetFldVar('S_STRING3'  , sResno             );    // 주민번호
      GetFldVar('S_STRING4'  , sPatno             );    // 주민번호

      GetFldVar('S_STRING5'  , sEntdt             );    // 입사일
      GetFldVar('S_STRING6'  , sRetdt             );    // 퇴사일
      GetFldVar('S_STRING7'  , sDeptnm            );    // 근무부서
      GetFldVar('S_STRING8'  , sJikjongnm         );    // 직종
      GetFldVar('S_STRING9'  , sJikwenm           );    // 직위
      GetFldVar('S_STRING10'  , sSexcd             );    // 성별
      GetFldVar('S_STRING11' , sJikgunnm          );    // 직군명 20061013
      GetFldVar('S_STRING12' , sJikmunm          );   // 직무명 20061103 추가

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

//===============================================================================
//   HgeVendmt : 자격면허사항
//   기능      : 자격면허사항 조회
//   작성자    : 고 영 관 (2002.01.18)
//===============================================================================}
function HgaQulidt.ListGaQulidt : integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
   SetFldValue32(0,[sType1, sType2, sType3, sType4, sType5, sType6] );

   if (txGetF32('GA_QULID_L2')) then begin        // Tuxedo Service Call ga_qulid_l2.pc
      GetFldVar('S_STRING1'  , sLcncdnm   );    // 자격면허
      GetFldVar('S_STRING2'  , sDeptnm    );    // 소속부서
      GetFldVar('S_STRING3'  , sJikjongnm );    // 직종
      GetFldVar('S_STRING4'  , sEmpnm     );    // 성명
      GetFldVar('S_STRING5'  , sEmpno     );    // 사번
      GetFldVar('S_STRING6'  , sGetdate   );    // 취득일
      GetFldVar('S_STRING7'  , sLcnno     );    // 자격면허번호
      GetFldVar('S_STRING8'  , sOrgcdnm   );    // 발행기관
      GetFldVar('S_STRING9'  , sWkareanm  );    //  근무부서
      GetFldVar('S_STRING10' , sResno     );    //  주민등록 번호
      GetFldVar('S_STRING11' , sJikmu     );    //  신분



      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

//===============================================================================
//   HgeVendmt : 예비군대상자
//   기능      : 예비군대상자 조회
//   작성자    : 이 동 혁 (2006.06.02)
//===============================================================================}
function HgaInsamt.ListgaInsamt6 : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;');
   SetFldValue(0,[sType1] );

   if (txGetF('GA_MILID_L1')) then begin        // Tuxedo Service Call  ga_milid_l1.pc
      GetFldVar('S_STRING1'  , sEmpno     );    // 사번
      GetFldVar('S_STRING2'  , sEmpnm     );    // 성명
      GetFldVar('S_STRING3'  , sDeptnm    );    // 소속부서
      GetFldVar('S_STRING4'  , sJikwe     );    // 직위
      GetFldVar('S_STRING5'  , sEntdt     );    // 입사일
      GetFldVar('S_STRING6'  , sRetdt     );    // 퇴사일
      GetFldVar('S_STRING7'  , sTelno     );    // 연락처
      GetFldVar('S_STRING8'  , sMilyuk    );    // 군필여부 (역종)
      GetFldVar('S_STRING9'  , sMilbrnc   );    // 병과
      GetFldVar('S_STRING10' , sMilkind   );    // 군별
      GetFldVar('S_STRING11' , sMilno     );    // 군번
      GetFldVar('S_STRING12' , sMilgrade  );    // 계급
      GetFldVar('S_STRING13' , sMilsrt    );    // 복무기간시작
      GetFldVar('S_STRING14' , sMilend    );    // 복무기간종료
      GetFldVar('S_STRING15' , sMilyuknm  );    // 역종이름
      GetFldVar('S_STRING16' , sMilkindnm );    // 군별이름
      GetFldVar('S_STRING17' , sMilgradenm);    // 계급이름
      GetFldVar('S_STRING18' , sWkareanm  );    // 근무부서

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

{===============================================================================
   GAAWARDT 상훈현황
   상훈현황 조회 (GaAwardt)
   작성자 : 고영관
===============================================================================}
function HgaAwardt.ListGaAwardt() : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');
   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5, sType6] );

   if (txGetF('GA_AWARD_L2')) then             // Tuxedo Service Call ga_award_l2.pc
   begin
      GetFldVar('S_STRING1'  , sEmpnm    );    // 성명
      GetFldVar('S_STRING2'  , sEmpno    );    // 개인번호
      GetFldVar('S_STRING3'  , sDeptnm   );    // 부서명
      GetFldVar('S_STRING4'  , sAwardate );    // 상훈발생일
      GetFldVar('S_STRING5'  , sAwarcdnm );    // 상훈코드명
      GetFldVar('S_STRING6'  , sTypecdnm );    // 상훈구분코드명
      GetFldVar('S_STRING7'  , sRemtxt   );    // 내용
      GetFldVar('S_STRING8'  , sOrg      );    // 상훈기관명
      GetFldVar('S_STRING9'  , sAwarder  );    // 수여자 20061010
      GetFldVar('S_STRING10' , sWkareanm );    // 근무부서 20061029

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;
{===============================================================================
   GAAWARDT 징계현황
   상훈현황 조회 (GaPunsdt)
   작성자 : 고영관
===============================================================================}
function HgaPunsdt.ListGaPunsdt() : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');
   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5, sType6] );

   if (txGetF('GA_PUNSD_L2')) then            // Tuxedo Service Call ga_punsd_l2.pc
   begin
      GetFldVar('S_STRING1'  , sEmpnm   );    // 성명
      GetFldVar('S_STRING2'  , sEmpno   );    // 개인번호
      GetFldVar('S_STRING3'  , sDeptnm  );    // 소속부서
      GetFldVar('S_STRING4'  , sWkareanm);    // 근무부서명  20061009
      GetFldVar('S_STRING5'  , sSdate   );    // 징계시작일
      GetFldVar('S_STRING6'  , sEdate   );    // 징계종료일
      GetFldVar('S_STRING7'  , sPuncdnm );    // 징계명
      GetFldVar('S_STRING8'  , sTypecd  );    // 징계구분명
      GetFldVar('S_STRING9'  , sRemtxt  );    // 내용
      GetFldVar('S_STRING10' , sOrg     );    // 징계기관명

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

{===============================================================================
   GAMASTER 인원현황
   인원현황 조회 (GaMaster)
   작성자 : 고영관
===============================================================================}
function HgaMaster.ListGaMaster() : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');
   SetFldValue32(0,[sType1, sType2, sType3, sType4, sType5, sType6, sType7, sType8, sType9, sType10]);

   if (txGetF32('GA_MASTE_L1')) then    // Tuxedo Service Call ga_maste_l1.pc
   begin
{
    Pro*C 의 코딩
          PUT (S_STRING1    , iy, sDeptnm    [iy]);     /* 부서명   */
          PUT (S_STRING2    , iy, sEmpno     [iy]);     /* 개인번호 */
          PUT (S_STRING3    , iy, sEmpnm     [iy]);     /* 성명     */
          PUT (S_STRING4    , iy, sEntdt     [iy]);     /* 입사일   */
          PUT (S_STRING5    , iy, sRetdt     [iy]);     /* 퇴사일   */
          PUT (S_STRING6    , iy, sJikgunnm  [iy]);     /* 직군명   */
          PUT (S_STRING7    , iy, sJikjongnm [iy]);     /* 직종명   */
          PUT (S_STRING8    , iy, sJikwenm   [iy]);     /* 직위명   */
          PUT (S_STRING9    , iy, sJikcheknm [iy]);     /* 직책명   */
          PUT (S_STRING10   , iy, sHobong    [iy]);     /* 호봉     */
          PUT (S_STRING11   , iy, sWkareanm  [iy]);     /* 근무지명 */
}

      GetFldVar32('S_STRING1'   , sDeptnm    );    // 부서명   
      GetFldVar32('S_STRING2'   , sEmpno     );    // 개인번호 
      GetFldVar32('S_STRING3'   , sEmpnm     );    // 성명     
      GetFldVar32('S_STRING4'   , sEntdt     );    // 입사일   
      GetFldVar32('S_STRING5'   , sRetdt     );    // 퇴사일   
      GetFldVar32('S_STRING6'   , sJikgunnm  );    // 직군명   
      GetFldVar32('S_STRING7'   , sJikjongnm );    // 직종명   
      GetFldVar32('S_STRING8'   , sJikwenm   );    // 직위명   
      GetFldVar32('S_STRING9'   , sJikcheknm );    // 직책명   
      GetFldVar32('S_STRING10'  , sHobong    );    // 호봉     
      GetFldVar32('S_STRING11'  , sWkareanm  );    // 근무지명
      GetFldVar32('S_STRING12'  , sResno     );    // 근무지명


      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

{===============================================================================
   CCDEPTCT 소속부서 조회
   인원현황 조회 (CcDeptct)
   작성자 : 고영관
===============================================================================}
function HccDeptct.ListGaDeptct : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   sType1 := ccDeptct.sLocate;

   SetFldName('S_TYPE1');
   SetFldValue(0,[sLocate]);

   if (txGetF('GA_DEPTC_L3')) then // Tuxedo Service Call ga_deptc_l3.pc
   begin
      GetFldVar('S_STRING1'   , sDeptcd      );    // 부서코드
      GetFldVar('S_STRING2'   , sDeptnm      );    // 부서명

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

{===============================================================================
   CCDEPTCT 근무부서 조회
   인원현황 조회 (CcDeptct)
   작성자 : 고영관
===============================================================================}
function HccDeptct.ListGaDeptct1 : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1');
   SetFldValue(0,[sDeptcd]);

   if (txGetF('GA_DEPTC_L14')) then                 // Tuxedo Service Call
   begin
      GetFldVar('S_STRING1'   , sWardYn      );    // 병동 구분

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;


////////////////////////////////////////////////////////////////////////////////
//   GAWRKSDT 근태사항
//   부서별 근태 현황 조회
//   작성자 : 문 태 용
////////////////////////////////////////////////////////////////////////////////
function HgaWrksdt.ListGaWrksdt2 : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue32(0,[sType1, sType2, sType3, sType4]);

   if (txGetF32('GA_WRKSD_L3')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sLocate    );    //  사업장
      GetFldVar32('S_STRING2'   , sAppdate   );    //  문서작성일
      GetFldVar32('S_STRING3'   , sMkDeptcd  );    //  부서코드
      GetFldVar32('S_STRING4'   , sMkDeptnm  );    //  입력부서명
      GetFldVar32('S_STRING5'   , sAppSeqno  );    //  작성일련번호
      GetFldVar32('S_STRING6'   , sMkEmpno   );    //  사원번호
      GetFldVar32('S_STRING7'   , sWknm      );    //  근태구분
      GetFldVar32('S_STRING8'   , sWksdate   );    //  근태시작일자
      GetFldVar32('S_STRING9'   , sWkedate   );    //  근태종료일자
      GetFldVar32('S_STRING10'  , sRemtxt    );    //  근태사유
      GetFldVar32('S_STRING11'  , sCnt       );    //  근태일수
      GetFldVar32('S_STRING12'  , sWkcd      );    //  근태코드
      GetFldVar32('S_STRING13'  , sAllconyn  );    //  결재완료 여부
      GetFldVar32('S_STRING14'  , sChkyn     );    //  인사확인 여부
      GetFldVar32('S_STRING15'  , sDoctype   );    //  문서종류(W, O, P)
      GetFldVar32('S_STRING16'  , sEmpno     );    //  사원번호
      GetFldVar32('S_STRING17'  , sEmpnm     );    //  성명
      GetFldVar32('S_STRING18'  , sRettxt    );    //  반송사유
      GetFldVar32('S_STRING19'  , sMkEmpnm   );    //  작성자 성명
      //GetFldVar32('S_STRING19'  , sAppCnt    );    //  결제 진행수

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//   GAWRKSDT 근태사항
//   부서별 근태 현황 조회
//   작성자 : 문 태 용
////////////////////////////////////////////////////////////////////////////////
{function HgaWrksdt.ListGaWrksdt3 : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue32(0,[sType1, sType2, sType3, sType4]);

   if (txGetF32('GA_WRKSD_L4')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sEmpno       );    //  개인번호
      GetFldVar32('S_STRING2'   , sEmpnm       );    //  성명
      GetFldVar32('S_STRING3'   , sWknm        );    //  근태코드명
      GetFldVar32('S_STRING4'   , sWksdate     );    //  근태시작일
      GetFldVar32('S_STRING5'   , sWkedate     );    //  근태종료일
      GetFldVar32('S_STRING6'   , sCnt         );    //  근태일수
      GetFldVar32('S_STRING7'   , sRemtxt      );    //  근태사유
      GetFldVar32('S_STRING8'   , sChkyn       );    //  인사확인여부
      GetFldVar32('S_STRING15'  , sEditnm      );    //  수정자명
      GetFldVar32('S_STRING16'  , sIndeptcd    );    //  입력부서코드
      GetFldVar32('S_STRING17'  , sRefwkcd     );    //  근태코드
      GetFldVar32('S_STRING18'  , sDeptnm      );    //  입력부서명

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;
end;
}
{===============================================================================
   GAWRKSDT 근태사항
   부서근태현황 결제 (GaWrksdt)
   작성자 : 고영관
===============================================================================}
function HgaWrksdt.UpdGaWrksdt:Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18');
  SetFldValue( 0 ,[sLocate   ,sAppDate  ,sMkdeptcd   ,sRefwkcd    ,sAppseqno ,
                   sMkempno  ,sDoctype  ,sEmpno      ,sWksdate    ,sWkedate  ,
                   sRemtxt   ,sCnt      ,sAllconyn   ,sChkyn      ,sGenconid ,
                   sOldRefwkcd, sEditid   ,sEditip ]);
  if (txPutF('GA_WRKSD_U1')) then
  begin //Tuxedo Service Call
    Result := 1;
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 연월차 사용현황 조회
// 작성자 : 문 태 용
// 작성일 : 2004-11-11(빼빼로~~~~데이, 줸장..ㅠㅠ)
////////////////////////////////////////////////////////////////////////////////
function HgaWrksdt.ListGaVacamt : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');
   SetFldValue32(0,[sType1, sType2, sType3,    sType4,       sType5]);
                 // 사업장  연도    사원번호   연도시작일자  연도 끝 일자

   if (txGetF32('GA_VACAM_L3')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sNewvcnt  );    //  발생연차
      GetFldVar32('S_STRING2'   , sCnt      );    //  사용일
      GetFldVar32('S_STRING3'   , sWksdate  );    //  시작일
      GetFldVar32('S_STRING4'   , sWkedate  );    //  종료일
      GetFldVar32('S_STRING5'   , sRemtxt   );    //  사용사유

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;


function HgaWrksdt.CloseYn : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue32(0,[sLocate, sWkdate, sMkDeptcd, sDocType]);
                 // 사업장  연도    사원번호   연도시작일자  연도 끝 일자

   if (txGetF32('GA_MDUTY_L20')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sCnt      );    //  사용일

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;

{===============================================================================
   GAWRKSDT 근태사항
   부서근태현황 입력(GaWrksdt)
   작성자 : 고영관
===============================================================================}
function HgaWrksdt.InsGaWrksdt(iCnt : Integer) :Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'     +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'    +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;');


  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue( ii ,   [sLocate       [ii]     //  1. 사업장
                       ,  sAppDate      [ii]     //  2. 문서작성일
                       ,  sMkdeptcd     [ii]     //  3. 작성부서코드
                       ,  sRefwkcd      [ii]     //  4. 근태코드
                       ,  sAppseqno     [ii]     //  5. 문서번호
                       ,  sMkempno      [ii]     //  6. 작성자사번
                       ,  sDoctype      [ii]     //  7. 문서종류
                       ,  sEmpno        [ii]     //  8. 사원번호
                       ,  sWksdate      [ii]     //  9. 근태시작일
                       ,  sWkedate      [ii]     // 10. 근태종료일
                       ,  sRemtxt       [ii]     // 11. 근태사유
                       ,  sCnt          [ii]     // 12. 일수
                       ,  sAllconyn     [ii]     // 13. 현업결재구분 (YNR)
                       ,  sChkyn        [ii]     // 14. 인사결재구분 (YNR)
                       ,  sGenconid     [ii]     // 15. 인사부서확인자 ID
                       ,  sEditid       [ii]     // 16.
                       ,  sEditip       [ii]     // 17.
                       ,  sInsayn       [ii]     // 18.
                       ,  sAppyn        [ii]     // 19.
                       ,  sOldappdate   [ii]     // 20. 이전문서작성일
                       ,  sStm          [ii]
                       ,  sEtm          [ii]
                       ,  sTtm          [ii]
                          ]);
  end;

  if (txPutF('GA_WRKSD_I1')) then    // ga_wrksd_i1.pc
  begin
     Result := 1;
     txFree;
  end;
end;



function HgaWrksdt.InsGaSatret(iCnt : Integer) :Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'     +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'    +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25;'+
             'S_TYPE26;S_TYPE27;S_TYPE28;S_TYPE29;S_TYPE30;'+
             'S_TYPE31;S_TYPE32;S_TYPE33;S_TYPE34;S_TYPE35;'+
             'S_TYPE36;S_TYPE37;S_TYPE38;S_TYPE39;S_TYPE40;'+
             'S_TYPE41;S_TYPE42;S_TYPE43;S_TYPE44;S_TYPE45;'+
             'S_TYPE46;S_TYPE47;S_TYPE48;S_TYPE49;S_TYPE50;'+
             'S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;'+
             'S_STRING6;S_STRING7;' );


  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue( ii ,   [sLocate       [ii]     //  1. 사업장
                       ,  sAppDate      [ii]     //  2. 문서작성일
                       ,  sMkdeptcd     [ii]     //  3. 작성부서코드
                       ,  sAppseqno     [ii]     //  5. 문서번호
                       ,  sMkempno      [ii]     //  6. 작성자사번
                       ,  sDoctype      [ii]     //  7. 문서종류
                       ,  sWkyymm       [ii]     //  7. 문서종류
                       ,  sEmpno        [ii]     //  8. 사원번호
                       ,  sSat1         [ii]     //  8. 사원번호
                       ,  sSat2         [ii]     //  8. 사원번호
                       ,  sSat3         [ii]     //  8. 사원번호
                       ,  sSat4         [ii]     //  8. 사원번호
                       ,  sSat5         [ii]     //  8. 사원번호
                       ,  sMdate1       [ii]     //  8. 사원번호
                       ,  sMdate2       [ii]     //  8. 사원번호
                       ,  sMdate3       [ii]     //  8. 사원번호
                       ,  sMdate4       [ii]     //  8. 사원번호
                       ,  sMdate5       [ii]     //  8. 사원번호
                       ,  sCode1        [ii]     //  8. 사원번호
                       ,  sCode2        [ii]     //  8. 사원번호
                       ,  sCode3        [ii]     //  8. 사원번호
                       ,  sCode4        [ii]     //  8. 사원번호
                       ,  sCode5        [ii]     //  8. 사원번호
                       ,  sRemtxt       [ii]     // 11. 근태사유
                       ,  sAllconyn     [ii]     // 13. 현업결재구분 (YNR)
                       ,  sChkyn        [ii]     // 14. 인사결재구분 (YNR)
                       ,  sGenconid     [ii]     // 15. 인사부서확인자 ID
                       ,  sEditid       [ii]     // 16.
                       ,  sEditip       [ii]     // 17.
                       ,  sInsayn       [ii]     // 18.
                       ,  sAppyn        [ii]     // 19.
                       ,  sCnt          [ii]
                       ,  sSat6         [ii]     //  8. 사원번호
                       ,  sSat7         [ii]     //  8. 사원번호
                       ,  sSat8         [ii]     //  8. 사원번호
                       ,  sSat9         [ii]     //  8. 사원번호
                       ,  sSat10        [ii]     //  8. 사원번호
                       ,  sMdate6       [ii]     //  8. 사원번호
                       ,  sMdate7       [ii]     //  8. 사원번호
                       ,  sMdate8       [ii]     //  8. 사원번호
                       ,  sMdate9       [ii]     //  8. 사원번호
                       ,  sMdate10      [ii]     //  8. 사원번호
                       ,  sCode6        [ii]     //  8. 사원번호
                       ,  sCode7        [ii]     //  8. 사원번호
                       ,  sCode8        [ii]     //  8. 사원번호
                       ,  sCode9        [ii]     //  8. 사원번호
                       ,  sCode10       [ii]     //  8. 사원번호
                       ,  sReason1      [ii]     //  8. 사원번호
                       ,  sReason2      [ii]     //  8. 사원번호
                       ,  sReason3      [ii]     //  8. 사원번호
                       ,  sReason4      [ii]     //  8. 사원번호
                       ,  sReason5      [ii]     //  8. 사원번호
                       ,  sReason6      [ii]     //  8. 사원번호
                       ,  sReason7      [ii]     //  8. 사원번호
                       ,  sReason8      [ii]     //  8. 사원번호
                       ,  sReason9      [ii]     //  8. 사원번호
                       ,  sReason10     [ii]     //  8. 사원번호

                       ]);
  end;

  if (txPutF('GA_SATRE_I1')) then    // ga_satre_i1.pc
  begin
     Result := 1;
     txFree;
  end;
end;



{
function HgaWrksdt.InsGaWrksdt2(iCnt : Integer):Integer;
//var
//  iLoop : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;');
  for iLoop :=0 to iCnt - 1 do
  begin
    SetFldValue( iLoop ,[sEmpno[iLoop],sLocate[iLoop],sRefwkcd[iLoop],sWksdate[iLoop],sWkedate[iLoop],
                     sRemtxt[iLoop],sCnt[iLoop],sIndeptcd[iLoop],sConfirmID1[iLoop],sConfirmID2[iLoop],
                     sConfirmDT1[iLoop],sConfirmDT2[iLoop],sChkyn[iLoop],sGenconID[iLoop],sEditid[iLoop],
                     sEditip[iLoop],sChoice[iLoop]]);
  end;

   if (txPutF('GA_WRKSD_I2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;
}

{===============================================================================
   GAWRKSDT 발령코드
   인사부서근태현황 삭제 (GaWrksdt)
   작성자 : 고영관
===============================================================================}
function HgaWrksdt.DelGaWrksdt(iCnt : integer) : Integer;
var
   i : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7');

   For i:=0 to iCnt - 1 do
   begin
      SetFldValue(i ,[sLocate[i], sAppDate[i], sMkDeptcd[i], sRefWkcd[i],
                      sSeqno[i], sMkEmpno[i], sEmpno[i]]);
   end;
   if (txPutF('GA_WRKSD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   GAWRKTCT 근태구분
   근태사항조회  (GAWRKTCT)
   작성자 : 고영관
===============================================================================}
function HgaVacact.ListGaVacact(Code1, Code2: String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;');
   SetFldValue(0,[Code1, Code2] );

   if (txGetF('GA_COMCD_L9')) then       // Tuxedo Service Call
   begin
      GetFldVar('S_STRING1', sCode);     // 근태구분코드
      GetFldVar('S_STRING2', sCodeName); // 근태구분코드명
      GetFldVar('S_STRING3', sFlag);     // 행정/간호 구분 추가 김용욱 2005-12-23
      GetFldVar('S_STRING4', sWktime);     // 행정/간호 구분 추가 김용욱 2005-12-23

      Result := GetRecordCnt('S_STRING1');
    
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 사번채번
// 작성자 : 문태용
// 작성일 : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaCreEmpNo.CreateEmpNo(sLocate,sLocate_Abbr,sJob_Type,sNo_Year:string):Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수

  SetFldValue(0, [sLocate     ,      // 사업장
                  sLocate_Abbr,      // 사업장구분값
                  sJob_Type   ,      // 채번작업구분
                  sNo_Year           // 년도
                  ]);

                         
  if (txPutF('GA_INSAM_C1')) then               // ga_insam_c1.pc
  begin
    GetFldVar('S_STRING1', sMaxEmpNo);          // 개인번호 (신규채번)
    Result := 1 ;
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 보증사항 조회
// 작성자 : 문태용
// 작성일 : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaGuardt.SelGuardt():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_GURDT_L1')) then begin     //Tuxedo Service Call ga_gurdt_l1.pc
     GetFldVar('S_STRING1'   , sWrntNm1   ); //보증인 성명1
     GetFldVar('S_STRING2'   , sWrntRel1  ); //보증인 관계 1
     GetFldVar('S_STRING3'   , sWrntJik1  ); //보증인 직업 1
     GetFldVar('S_STRING4'   , sWrntSsn1  ); //보증인 주민등록 번호1
     GetFldVar('S_STRING5'   , sWrntAddr1 ); //보증인 주소 1
     GetFldVar('S_STRING6'   , sWrntTax1  ); //보증인 소득세 1
     GetFldVar('S_STRING7'   , sWrntNm2   ); //보증인 성명2
     GetFldVar('S_STRING8'   , sWrntRel2  ); //보증인 관계 2
     GetFldVar('S_STRING9'   , sWrntJik2  ); //보증인 직업 2
     GetFldVar('S_STRING10'  , sWrntSsn2  ); //보증인 주민등록 번호2
     GetFldVar('S_STRING11'  , sWrntAddr2 ); //보증인 주소 2
     GetFldVar('S_STRING12'  , sWrntTax2  ); //보증인 소득세 2
     GetFldVar('S_STRING13'  , sWrntInnm  ); //보증보험명
     GetFldVar('S_STRING14'  , sWrntConm  ); //보증회사명
     GetFldVar('S_STRING15'  , sWrntAmt   ); //보험금
     GetFldVar('S_STRING16'  , sWrntFee   ); //보험료
     GetFldVar('S_STRING17'  , sWrntInno  ); //보험번호
     GetFldVar('S_STRING18'  , sWrntcls   ); //보증구분(P인보증, C보증보험)
     GetFldVar('S_STRING19'  , sWrntSdate ); //보증시작일
     GetFldVar('S_STRING20'  , sWrntEdate ); //보증종료일

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaGuardt.SelGuardtAll(sLocate,                       // 사업장
                                sDeptCd,                       // 부서코드
                                sWrntCls,                      // 보증구분
                                sWrntSDate,                    // 보증시작일
                                sWrntEDate,                    // 보증종료일
                                sJejikGbn :String):Integer;    // 재직구분

begin

   Result := -1;
   txAlloc;    //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');      //service입력변수
   SetFldValue(0,[sLocate, sDeptCd, sWrntCls, sWrntSDate, sWrntEDate, sJejikGbn]);

   if (txGetF('GA_GURDT_L2')) then begin     //Tuxedo Service Call ga_gurdt_l2.pc
     GetFldVar('S_STRING1'   , sWrntNm1   ); // 성명
     GetFldVar('S_STRING2'   , sWrntRel1  ); // 사번
     GetFldVar('S_STRING3'   , sWrntJik1  ); // 부서
     GetFldVar('S_STRING4'   , sWrntJik3  ); // 근무부서  20061009
     GetFldVar('S_STRING5'   , sWrntSsn1  ); // 보증시작일
     GetFldVar('S_STRING6'   , sWrntAddr1 ); // 보증만료일
     GetFldVar('S_STRING7'   , sWrntTax1  ); // 보증구분
     GetFldVar('S_STRING8'   , sWrntNm2   ); // 보증인1 성명
     GetFldVar('S_STRING9'   , sWrntRel2  ); // 보증인2 성명
     GetFldVar('S_STRING10'  , sWrntJik2  ); // 보증보험명
     GetFldVar('S_STRING11'  , sWrntSsn2  ); // 보험회사명

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;
////////////////////////////////////////////////////////////////////////////////
// 보증사항 등록 및 수정
// 작성자 : 문태용
// 작성일 : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaGuardt.InUpdGuardt():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
              'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25;'+
              'S_TYPE26;S_TYPE27;S_TYPE28;');

   SetFldValue(0 ,[sEmpno,sLocate,sWrntcls,sWrntSdate,sWrntEdate,
                   sWrntNm1,sWrntRel1,sWrntJik1,sWrntSsn1,sWrntAddr1,
                   sWrntTax1,sWrntNm2,sWrntRel2,sWrntJik2,sWrntSsn2,
                   sWrntAddr2,sWrntTax2,sWrntInnm,sWrntConm,sWrntAmt,
                   sWrntFee,sWrntInno,sEditid,sEditip,sWrntSDate_Old,
                   sWrntEDate_Old,sChoice,sWrntcls_Old]);

   if (txPutF('GA_GURDT_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 보증사항 삭제
// 작성자 : 문태용
// 작성일 : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaGuardt.DelGuardt():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[sEmpno,sLocate,sWrntcls,sWrntSdate,sWrntEdate]);

   if (txPutF('GA_GURDT_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 건강검진 사항 조회
// 작성자 : 문태용
// 작성일 : 2004.07.25
////////////////////////////////////////////////////////////////////////////////
function HgaHealth.SelHealth():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_HEALT_L1')) then begin     //Tuxedo Service Call ga_healt_l1.pc
     GetFldVar('S_STRING1'   , sGaHight     ); //신장
     GetFldVar('S_STRING2'   , sWaWeight    ); //체중
     GetFldVar('S_STRING3'   , sEyeLeft     ); //시력(좌)
     GetFldVar('S_STRING4'   , sEyeRight    ); //시력(우)
     GetFldVar('S_STRING5'   , sGlsLeft     ); //교정시력(좌)
     GetFldVar('S_STRING6'   , sGlsRight    ); //교정시력(우)
     GetFldVar('S_STRING7'   , sColorTyp    ); //색맹
     GetFldVar('S_STRING8'   , sBloodTy     ); //혈액형
     GetFldVar('S_STRING9'   , sBloodPle    ); //혈압
     GetFldVar('S_STRING10'  , sEarLeft     ); //청력(좌)
     GetFldVar('S_STRING11'  , sEarRight    ); //청력(우)
     GetFldVar('S_STRING12'  , sGaTooth     ); //치주질환
     GetFldVar('S_STRING13'  , sGaLiver     ); //간염여부
     GetFldVar('S_STRING14'  , sCholestrol  ); //콜레스테롤
     GetFldVar('S_STRING15'  , sGaCloseexm  ); //정밀건진여부
     GetFldVar('S_STRING16'  , sGaxray      ); //방사선 결과
     GetFldVar('S_STRING17'  , sGaTotView   ); //종합소견
     GetFldVar('S_STRING18'  , sGenDate     ); //건진일자

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaWkrank 근무평점 조회
   20060929
===============================================================================}
function HgaWkrank.SelWkrank():Integer; // 근무평점 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh]);

   if (txGetF('GA_WRANK_L1')) then begin   // Tuxedo Service Call ga_wrank_l1.pc
     GetFldVar('S_STRING1'   , sWkyear   );     // 연도
     GetFldVar('S_STRING2'   , sSeqno    );     // 차수
     GetFldVar('S_STRING3'   , sDeptnm   );     // 근무부서명
     GetFldVar('S_STRING4'   , sWkareanm );     // 소속부서명
     GetFldVar('S_STRING5'   , sEmpno    );     // 사번
     GetFldVar('S_STRING6'   , sEmpnm    );     // 성명
     GetFldVar('S_STRING7'   , sNum      );     // 본인평점
     GetFldVar('S_STRING8'   , sNum1     );     // 1차평가자
     GetFldVar('S_STRING9'   , sNum2     );     // 2차평가자
     GetFldVar('S_STRING10'  , sNum3     );     // 3차평가자
     GetFldVar('S_STRING11'  , sNum4     );     // 4차평가자
     GetFldVar('S_STRING13'  , sNum5     );     // 상향평가
     GetFldVar('S_STRING14'  , sNum6     );     // 교육평가
     GetFldVar('S_STRING15'  , sNum7     );     // 상벌점수
     GetFldVar('S_STRING12'  , sAvg      );     // 평균
     GetFldVar('S_STRING16'  , sGrade     );     // 평균

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaWkrank 2013년 이후 개정된 근무평점 조회
   20150331
===============================================================================}
function HgaWkrank.SelWkrank2014():Integer; // 개정된 근무평점 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh]);

   if (txGetF('GA_WRANK_L4')) then begin   // Tuxedo Service Call ga_wrank_l4.pc
     GetFldVar('S_STRING1'   , sWkyear   );     // 연도
     GetFldVar('S_STRING2'   , sSeqno    );     // 차수
     GetFldVar('S_STRING3'   , sDeptnm   );     // 근무부서명
     GetFldVar('S_STRING4'   , sWkareanm );     // 소속부서명
     GetFldVar('S_STRING5'   , sEmpno    );     // 사번
     GetFldVar('S_STRING6'   , sEmpnm    );     // 성명
     GetFldVar('S_STRING7'   , sNum      );     // 본인평점
     GetFldVar('S_STRING8'   , sNum1     );     // 1차평가자
     GetFldVar('S_STRING9'   , sNum2     );     // 2차평가자
     GetFldVar('S_STRING10'  , sNum3     );     // 3차평가자
     GetFldVar('S_STRING11'  , sNum4     );     // 4차평가자
     GetFldVar('S_STRING13'  , sNum5     );     // 상향평가
     GetFldVar('S_STRING14'  , sNum6     );     // 교육평가
     GetFldVar('S_STRING15'  , sNum7     );     // 상벌점수
     GetFldVar('S_STRING12'  , sAvg      );     // 평균
     GetFldVar('S_STRING16'  , sGrade     );     // 평균

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 건강검진 사항 등록
// 작성자 : 문태용
// 작성일 : 2004.07.25
////////////////////////////////////////////////////////////////////////////////
function HgaHealth.InUpdHealth():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
              'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24');

   SetFldValue(0 ,[sEmpno,sLocate,sGenDate,sGaHight,sWaWeight,
                   sEyeLeft,sEyeRight,sGlsLeft,sGlsRight,sColorTyp,
                   sBloodTy,sBloodPle,sEarLeft,sEarRight,sGaTooth,
                   sGaLiver,sCholestrol,sGaCloseexm,sGaxray,sGaTotView,
                   sEditid,sEditip,sGenDate_Old,sChoice]);

   if (txPutF('GA_HEALT_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 건강검진 사항 삭제
// 작성자 : 문태용
// 작성일 : 2004.07.25
////////////////////////////////////////////////////////////////////////////////
function HgaHealth.DelHealth():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[sEmpno,sLocate,sGenDate]);

   if (txPutF('GA_HEALT_D1')) then begin //Tuxedo Service Call  ga_healt_d1.pc
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 근무평점 사항 삭제  20061003
////////////////////////////////////////////////////////////////////////////////
function HgaWkrank.DelWkrank():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[ssEmpno,sWkyear,sSeqno]);

   if (txPutF('GA_WRANK_D1')) then begin //Tuxedo Service Call  ga_wrank_d1.pc
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaWkrank 근무 평점 입력
===============================================================================}
function HgaWkrank.InsWkrank():Integer;    // 근무 평점 신규입력
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE14;S_TYPE15,S_TYPE16;S_TYPE17;S_TYPE8;S_TYPE9;'+
              'S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13');

   SetFldValue(0 ,[sWkyear,sSeqno,sNum,
                   sNum1,sNum2,sNum3,
                   sNum4,sNum5,sNum6,sNum7,sAvg,sEmpno,sEmpnm,
                   sEditid,sEditip,sChoice,sLocate]);

   if (txPutF('GA_WRANK_I1')) then begin //Tuxedo Service Call  ga_wrank_i1.pc
      Result := 1;
      txFree;
   end;
end;


function HgaWkrank.InsExcelWkrank(iCnt:Integer) :Integer;    // 근무 평점 신규입력
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;'+
                'S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;'+
                'S_TYPE7;S_TYPE14;S_TYPE15,S_TYPE16;S_TYPE17;S_TYPE9;S_TYPE10;S_TYPE11');

   SetFldValue32(0 ,[  sEmpno
                     , sWkyear
                     , sSeqno
                     , sNum
                     , sNum1
                     , sNum2
                     , sNum3
                     , sNum4
                     , sNum4
                     , sNum5
                     , sNum6
                     , sNum7
                     , sAvg
                     , sEditid
                     , sEditip
                     , sMode
                     ]);

   if (txPutF32('GA_WRANK_I2')) then begin //Tuxedo Service Call  ga_wrank_i1.pc
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 개인별 연월차 현황 조회
// 작성자 : 문태용
// 작성일 : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelVacamtDept():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'); //service입력변수
   SetFldValue(0,[sLocate, sDeptCd, sCuryymm, ssEmpno, sDeptGubn] );

   //ga_vacam_l1.pc
   if (txPutF('GA_VACAM_L1')) then          //Tuxedo Service Call  ga_vacam_l1.pc
   begin
     GetFldVar('S_STRING1'   , sEmpno     );        // 사원번호  //
     GetFldVar('S_STRING2'   , sEmpnm     );        // 사원명    //
     GetFldVar('S_STRING3'   , sResNo     );        // 주민번호  //
     GetFldVar('S_STRING4'   , sEnterdate );        // 입사일자  // 추가 박종화 JI 2006-01-03
     GetFldVar('S_STRING5'   , sRetdt     );        // 퇴사일자  // 추가 박종화 JI 2006-01-03
     GetFldVar('S_STRING6'   , sCuryymm   );        // 적용년월  //
     GetFldVar('S_STRING7'   , sNewVCnt   );        // 신규연차  //
     GetFldVar('S_STRING8'   , sUseVCnt   );        // 사용연차  //
     GetFldVar('S_STRING9'   , sRemVCnt   );        // 잔여연차  //
     GetFldVar('S_STRING10'  , sTsamt     );

     GetFldVar('S_STRING11'  , sDeptnm    );        // 2006-09-11 추가 

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// 개인별 연월차 현황 조회(전 재직원)
// 작성자 : 문태용
// 작성일 : 2004.07.28
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelVacamtAll():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
   SetFldValue(0,[sLocate,sCuryymm,sCuryymm_Old] );

   //ga_vacam_l2.pc
   if (txPutF('GA_VACAM_L2')) then begin //Tuxedo Service Call  ga_vacam_l2.pc
     GetFldVar('S_STRING1'   , sEmpno     );        // 사원번호
     GetFldVar('S_STRING2'   , sEmpnm     );        // 사원명
     GetFldVar('S_STRING3'   , sResno     );        // 주민번호
     GetFldVar('S_STRING4'   , sEnterDate );        // 입사일자
     GetFldVar('S_STRING5'   , sRetDt     );        // 퇴사일자  추가 박종화 JI 2006-01-03
     GetFldVar('S_STRING6'   , sCuryymm   );        // 적용년도
     GetFldVar('S_STRING7'   , sTotvcnt   );        // 누적연차
     GetFldVar('S_STRING8'   , sNewvcnt   );        // 신규연차
     GetFldVar('S_STRING9'   , sUsevcnt   );        // 사용연차
     GetFldVar('S_STRING10'  , sRemvcnt   );        // 잔여연차
     GetFldVar('S_STRING11'  , sTotmcnt   );        // 누적월차
     GetFldVar('S_STRING12'  , sNewmcnt   );        // 신규월차
     GetFldVar('S_STRING13'  , sUsemcnt   );        // 사용월차
     GetFldVar('S_STRING14'  , sRemmcnt   );        // 잔여월차
     GetFldVar('S_STRING15'  , sNewwcnt   );        // 신규생휴
     GetFldVar('S_STRING16'  , sUsewcnt   );        // 잔여생휴
     GetFldVar('S_STRING17'  , sDeptnm    );        // 부서명
     GetFldVar('S_STRING18'  , sVaCnt     );        // 부서명     

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// 개인별 연월차 현황 등록 및 수정
// 작성자 : 문태용
// 작성일 : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.InUpdVacamt(iCnt : Integer):Integer;
begin
  Result := 0;
end;

////////////////////////////////////////////////////////////////////////////////
// 개인별 연월차 현황 수정(전체사원)
// 작성자 : 문태용
// 작성일 : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.InUpdVacamtAll(iCnt : Integer):Integer;
var
  iLoop : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;');

  for iLoop := 0 to iCnt do
  begin
    SetFldValue(iLoop,[sEmpno[iLoop]  , sLocate[iLoop] , sCuryymm[iLoop], sTotvcnt[iLoop], sNewvcnt[iLoop]
                     , sUsevcnt[iLoop], sRemvcnt[iLoop], sTotmcnt[iLoop], sNewmcnt[iLoop], sUsemcnt[iLoop]
                     , sRemmcnt[iLoop], sEditid[iLoop] , sEditip[iLoop] , sFirst[0] ]);
  end;

  if (txPutF('GA_VACAM_I1')) then begin //Tuxedo Service Call
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 개인별 연월차 사용률 현황
// 작성일 : 2006.09.13
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelYearUseVCnt: Integer;
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

     SetFldValue(0,[ssLocate, ssYear, ssEmpno, ssDeptcd]);

       // ShowMessage(ssLocate+'/'+ssYear+'/'+ssEmpno+'/'+ssDeptcd);

    if (txPutF('GA_VACAM_L7')) then              // ga_vacam_l7.pc
    begin //Tuxedo Service Call
        GetFldVar('S_STRING1', sEmpno);          // 사번
        GetFldVar('S_STRING2', sEmpnm);          // 성명
        GetFldVar('S_STRING3', sDeptnm);         // 부서명
        GetFldVar('S_STRING4', sNewVCnt);        // 발생연차
        GetFldVar('S_STRING5', sUseVCnt);        // 사용연차
        GetFldVar('S_STRING6', sUsePre);         // 사용율
        GetFldVar('S_STRING7', sPreYearNewVCnt); // 전년발생연차
        GetFldVar('S_STRING8', sPreYearUseVCnt); // 전년사용연차
        GetFldVar('S_STRING9', sAccloc); // 전년사용연차
        GetFldVar('S_STRING10', sWkareacd); // 전년사용연차
        GetFldVar('S_STRING11', sDeptcd  ); // 전년사용연차
        GetFldVar('S_STRING12', sDeptnm1 ); // 전년사용연차




        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월별 사용연차 조회
// 작성일 : 2021.05.13
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelYearUseVCnt2: Integer;
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');

     SetFldValue(0,[ssLocate, sCuryymm, sgbn]);

    if (txPutF('GA_VACAM_L10')) then              // ga_vacam_l10.pc
    begin //Tuxedo Service Call
        GetFldVar('S_STRING1', sEmpno);           // 사번
        GetFldVar('S_STRING2', sEmpnm);           // 성명
        GetFldVar('S_STRING3', sDeptnm);          // 부서명
        GetFldVar('S_STRING4', sWkareanm);        // 근무부서
        GetFldVar('S_STRING5', sNewvcnt);         // 발생연차
        GetFldVar('S_STRING6', sUsevcnt);         // 사용연차
        GetFldVar('S_STRING7', sRemvcnt);         // 남은연차    //20210617

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월별 사용연차 조회
// 작성일 : 2021.06.24
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelYearUseVCnt3: Integer;
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');

     SetFldValue(0,[ssLocate, sCuryymm, sgbn]);

    if (txPutF('GA_VACAM_L11')) then              // ga_vacam_l11.pc
    begin //Tuxedo Service Call
        GetFldVar('S_STRING1', sEmpno);           // 사번
        GetFldVar('S_STRING2', sEmpnm);           // 성명
        GetFldVar('S_STRING3', sDeptnm);          // 부서명
        GetFldVar('S_STRING4', sWkareanm);        // 근무부서
        GetFldVar('S_STRING5', sNewvcnt);         // 발생연차
        GetFldVar('S_STRING6', sUsevcnt);         // 사용연차
        GetFldVar('S_STRING7', sRemvcnt);         // 남은연차    //20210617

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;


////////////////////////////////////////////////////////////////////////////////
// 개인별 연월차 현황 수정(전체사원)
// 작성자 : 문태용
// 작성일 : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaSalary.GetSalary():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');  // S_TYPE9 20061009 추가

   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5,
                  sType6, sType7, sType8, sType9, sGubn]);



   if (txPutF('GA_SALAR_L1')) then begin //Tuxedo Service Call  ga_salar_l1.pc
     GetFldVar('S_STRING1'   , sEmpnm     );   // 성명
     GetFldVar('S_STRING2'   , sEmpno     );   // 사원번호
     GetFldVar('S_STRING3'   , sDeptNm    );   // 소속부서
     GetFldVar('S_STRING4'   , sJikGun    );   // 직군
     GetFldVar('S_STRING5'   , sJikJong   );   // 직종
     GetFldVar('S_STRING6'   , sJikGup    );   // 직급
     GetFldVar('S_STRING7'   , sConSDate  );   // 계약시작일
     GetFldVar('S_STRING8'   , sConEDate  );   // 계약만료일
     GetFldVar('S_STRING9'   , sMonthPay  );   // 월지급액
     GetFldVar('S_STRING10'  , sConMoney  );   // 연봉

     Result := GetRecordCnt('S_STRING1');
     txFree;

   end;
end;


function HgaSalary.GetSalary2():Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   
   SetFldName('S_TYPE1');  // S_TYPE9 20061009 추가

   SetFldValue(0,[sType1]);




   if (txPutF('GA_SALAR_L2')) then begin //Tuxedo Service Call  ga_salar_l2.pc
     GetFldVar('S_STRING1'   , sDeptnm     );
     GetFldVar('S_STRING2'   , sWkareanm   );
     GetFldVar('S_STRING3'   , sEmpnm      );
     GetFldVar('S_STRING4'   , sEmpno      );
     GetFldVar('S_STRING5'   , sJikmu      );
     GetFldVar('S_STRING6'   , sJikong     );
     GetFldVar('S_STRING7'   , sJikwe      );
     GetFldVar('S_STRING8'   , sEnddate    );
     GetFldVar('S_STRING9'   , sAponm      );
   
     Result := GetRecordCnt('S_STRING1');
     txFree;

   end;
end;

function HgaAssoct.SelAssociation : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName(''); //service입력변수
   SetFldValue(0,[]);

   if (txGetF('GA_ASSOC_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sSocscd );    // 동호회코드
     GetFldVar('S_STRING2' , sSocsnm );    // 동호회명
//     GetFldVar('S_STRING3' , sGbn    );    // 구분
     GetFldVar('S_STRING4' , sSort   );    // 조회순서
     GetFldVar('S_STRING5' , sAmt    );    // 동호회비
     GetFldVar('S_STRING6' , sYn     );    // 사용여부
     GetFldVar('S_STRING7' , sDeldate);    // 폐기일자

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaAssoct.InsUpAssociation : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;');

   SetFldValue(0 ,[sSocscd,sSocsnm,sLocate,sSort,sAmt,sYn,
                   sEditid,sEditip,sChoice]);

   if (txPutF('GA_ASSOC_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HgaAssoct.DelAssociation(iCnt : Integer):Integer;
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[String(sSocscd[i]),
                  String(sEditid[i]),
                  String(sEditip[i])]);
   end;
   if (txPutF('GA_ASSOC_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HGaSocidt.ListGaSocidt:integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
   SetFldValue(0,[ssLocate, ssEmpno, ssSocscd]);

   if (txGetF('GA_SOCID_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'  , sEmpno      );    // 사원번호
     GetFldVar('S_STRING2'  , sEmpnm      );    // 사원명
     GetFldVar('S_STRING3'  , sDeptcd     );    // 부서코드
     GetFldVar('S_STRING4'  , sDeptnm     );    // 부서명
     GetFldVar('S_STRING5'  , sSocscd     );    // 동호회코드
     GetFldVar('S_STRING6'  , sSocsnm     );    // 동호회명
     GetFldVar('S_STRING7'  , sJikcheknm  );    // 직책명
     GetFldVar('S_STRING8'  , sDt         );    // 가입일
     GetFldVar('S_STRING9'  , sEnddt      );    // 탈퇴일
     GetFldVar('S_STRING10' , sAmt        );    // 동호회비
     GetFldVar('S_STRING11' , sRemtxt     );    // 비고

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HGaSocidt.SaveGaSocidt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');

  SetFldValue(0 ,[sEmpno,sLocate,sSocscd,sDt,sEnddt,sJikcheknm,sRemtxt,
                  sEditid,sEditip,sChoice]);

  if (txPutF('GA_SOCID_I1')) then begin //Tuxedo Service Call
     Result := 1;
     txFree;
  end;
end;

function HgaConfirm.SelConfirmList : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sType1, sType2, sType3]);

   if (txGetF('GA_DPOVT_L1')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sEmpno     );    //사원번호
     GetFldVar('S_STRING2' , sEmpnm     );    //사원명
     GetFldVar('S_STRING3' , sDeptCD    );    //부서코드(승인부서코드)
     GetFldVar('S_STRING4' , sDeptnm    );    //부서명
     GetFldVar('S_STRING5' , sDeptGBN   );    //부서구분(0 : 소속, 1: 근무부서)
     GetFldVar('S_STRING6' , sRQDegreeCD);    //등급(1: 승인자, 2 : 결재자)
     GetFldVar('S_STRING7' , sRQDegreeNM);    //등급(1: 승인자, 2 : 결재자)
     GetFldVar('S_STRING8' , sRemtxt    );    //비고

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaConfirm.InsUpConfirmList : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;');

  SetFldValue(0 ,[sEmpno,sLocate,sDeptCD,sDeptGBN,sRQDegreeCD,sRemtxt,
                  sEditid,sEditip,sChoice]);

  if (txPutF('GA_DPOVT_I1')) then begin //Tuxedo Service Call
     Result := 1;
     txFree;
  end;
end;

function HgaConfirm.DelConfirmList(iCnt : Integer) : Integer;
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[String(sEmpno[i]),
                  String(sDeptCD[i]),
                  String(sDeptGBN[i]),
                  String(sRQDegreeCD[i]),
                  String(sEditid[i]),
                  String(sEditip[i])]);
   end;
   if (txPutF('GA_DPOVT_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// 일별 특근 신청 조회
// 작성일 : 2005.03.10
////////////////////////////////////////////////////////////////////////////////
function HgaOverddt.ListOveddt   : Integer;
begin
  Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
   SetFldValue(0,[ssLocate, ssAppDate, ssMkdeptcd, ssAppSeqno, ssMkEmpno]);

   if (txGetF('GA_OVEDT_L4')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' ,  sLocate    );    // 사업장 코드
     GetFldVar('S_STRING2' ,  sAppdate   );    // 작성일자
     GetFldVar('S_STRING3' ,  sMkdeptcd  );    // 작성부서
     GetFldVar('S_STRING4' ,  sAppseqno  );    // 작성 일련번호
     GetFldVar('S_STRING5' ,  sMkempno   );    // 작성자 사번
     GetFldVar('S_STRING6' ,  sDoctype   );    // 문서종류
     GetFldVar('S_STRING7' ,  sEmpno     );    // 사원번호
     GetFldVar('S_STRING8' ,  sWkdate    );    // 특근일자
     GetFldVar('S_STRING9' ,  sWkstime   );    // 특근 시작시간
     GetFldVar('S_STRING10',  sWketime   );    // 특근 종료시간
     GetFldVar('S_STRING11',  sWeekcnt   );    // 주차
     GetFldVar('S_STRING12',  sCnt       );    // 특근시간수
     GetFldVar('S_STRING13',  sCntovr    );    // 시간외
     GetFldVar('S_STRING14',  sCntnig    );    // 심야
     GetFldVar('S_STRING15',  sRemtxt    );    // 특근사유
     GetFldVar('S_STRING16',  sRettxt    );    // 반송사유
     GetFldVar('S_STRING17',  sAllconyn  );    // 결재완료 여부
     GetFldVar('S_STRING18',  sChkyn     );    // 인사확인 여부
     GetFldVar('S_STRING19',  sGenconid  );    // 인사 확인자
     GetFldVar('S_STRING20',  sMkEmpnm   );    // 작성자 성명
     GetFldVar('S_STRING21',  sEmpnm     );    // 사원 성명
     GetFldVar('S_STRING22',  sJikwe     );    // 직위
     GetFldVar('S_STRING23',  sMkDeptnm  );    // 작성부서명  김용욱 추가 2005-11-05

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// 일 특근신청 저장
// 작성일 : 2005.03.13
// 수정일 : 2005.10.31 [GAD006F1] 인사부서 일별특근 확인 수정 김용욱
////////////////////////////////////////////////////////////////////////////////
function HgaOverddt.SaveOvedt(iCnt :Integer) : Integer;
var
  i : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;');

  if iCnt = 0 then // [GAD006F1] 인사부서 일별특근 확인
  begin
      SetFldValue(0 ,[sLocate[0]  , sAppDate[0], sMkDeptcd[0], sAppSeqno[0], sMkEmpno[0],
                      sDocType[0] , sEmpno[0]  , sWkdate[0]  , sWkstime[0] , sWketime[0],
                      sWeekCnt[0] , sCnt[0]    , sCntOvr[0]  , sCntNig[0]  , sRemtxt[0] ,
                      sAllconyn[0], sChkyn[0]  , sGenconid[0], sRettxt[0]  , sEditid[0] ,
                      sEditip[0]  , sInsayn[0] , sAppyn[0]   , 'U' ]  );
  end
  else             // [GAD003F1] 인사 특근 신청
  begin
    for i := 0 to iCnt - 1 do  // iCnt = 0 일때 For 문 실행 안함.
      SetFldValue(i ,[sLocate[i]  , sAppDate[i], sMkDeptcd[i], sAppSeqno[i], sMkEmpno[i],
                      sDocType[i] , sEmpno[i]  , sWkdate[i]  , sWkstime[i] , sWketime[i],
                      sWeekCnt[i] , sCnt[i]    , sCntOvr[i]  , sCntNig[i]  , sRemtxt[i] ,
                      sAllconyn[i], sChkyn[i]  , sGenconid[i], sRettxt[i]  , sEditid[i] ,
                      sEditip[i]  , sInsayn[i] , sAppyn[i]   , 'I' ]  );
  end;

  if (txPutF('GA_OVEDT_I3')) then begin //Tuxedo Service Call
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 일별 특근 신청 조회 (중복Check)
// 작성일 : 2005.03.10
////////////////////////////////////////////////////////////////////////////////
function HgaOverddt.ListOveddt1  : Integer;
begin
  Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;'); //service입력변수
   SetFldValue(0,[sLocate, sDoctype, sEmpno, sWkdate, sWkstime, sWketime, sFlag]);

   if (txGetF('GA_OVEDT_L5')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' ,  ssEmpno    );    // 사업장 코드

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

{
function HgaOverddt.SelOverddT2   : Integer;
begin
  Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'); //service입력변수
   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5]);

   if (txGetF('GA_OVEDT_L2')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' ,  sEmpno      );    //
     GetFldVar('S_STRING2' ,  sEmpnm      );    //
     GetFldVar('S_STRING3' ,  sWkdate     );    //
     GetFldVar('S_STRING4' ,  sWkstime    );    //
     GetFldVar('S_STRING5' ,  sWketime    );    //
     GetFldVar('S_STRING6' ,  sCnt        );    //
     GetFldVar('S_STRING7' ,  sCntOvr     );    //
     GetFldVar('S_STRING8' ,  sCntNig     );    //
     GetFldVar('S_STRING9' ,  sRemtxt     );    //
     GetFldVar('S_STRING10',  sChkyn      );    //
     GetFldVar('S_STRING11',  sConid1     );    //
     GetFldVar('S_STRING12',  sConid2     );    //
     GetFldVar('S_STRING13',  sCondt1     );    //
     GetFldVar('S_STRING14',  sCondt2     );    //
     GetFldVar('S_STRING15',  sConNm1     );    //
     GetFldVar('S_STRING16',  sConNm2     );    //
     GetFldVar('S_STRING17',  sGenconNm   );    //
     GetFldVar('S_STRING18',  sdeptcd   );    //
     GetFldVar('S_STRING19',  sDeptNm   );    //

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaOverddt.InsOverddT   : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;');

  SetFldValue(0 ,[sEmpno,sLocate,sWkdate,sWkstime,sWketime,
                  sCnt,sCntOvr,sCntNig,sRemtxt,sEditid,
                  sEditip,sChoice,sWeek]);

  if (txPutF('GA_OVEDT_I1')) then begin //Tuxedo Service Call
     Result := 1;
     txFree;
  end;
end;

function HgaOverddt.InsOverddT2(iCnt : Integer) : Integer;
var
  iLoop : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;');
  for iLoop :=0 to iCnt - 1 do
  begin
    SetFldValue( iLoop ,[sEmpno[iLoop],sLocate[iLoop],sWkdate[iLoop],sWkstime[iLoop],sWketime[iLoop],
                         sCnt[iLoop],sCntOvr[iLoop],sCntNig[iLoop],sConID1[iLoop],sConID2[iLoop],
                         sConDT1[iLoop],sConDT2[iLoop],sChkyn[iLoop],sGenconID[iLoop],sEditid[iLoop],
                         sEditip[iLoop]]);
  end;

  if (txPutF('
  GA_OVEDT_I2')) then
  begin //Tuxedo Service Call
    Result := 1;
    txFree;
  end;

end;
}
function HgaOverddt.DelOverddt(iCnt : Integer) : Integer;
var
   i : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;');

   For i:=0 to iCnt - 1 do
   begin
      SetFldValue(i ,[sLocate[i], sAppDate[i], sMkDeptcd[i], sAppSeqno[i],
                      sMkEmpno[i], sDocType[i],sEmpno[i]]);
   end;
   if (txPutF('GA_OVEDT_D2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// 결재선 정보 조회
// 2004.10.13 by 문태용
////////////////////////////////////////////////////////////////////////////////
function HgaSignlt.SelSignlt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd]);

  if (txGetF('GA_SIGNL_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate        );    // 사업장
    GetFldVar('S_STRING2' ,  sMkDept        );    // 작성부서
    GetFldVar('S_STRING3' ,  sMkYYMM        );    // 작성년월
    GetFldVar('S_STRING4' ,  sRemTxt        );    // 비고
    GetFldVar('S_STRING5' ,  sJikwenm1      );    // 작성자 직위
    GetFldVar('S_STRING6' ,  sEmpno1        );    // 작성자 사번
    GetFldVar('S_STRING7' ,  sJikwenm2      );    // 결재1 직위
    GetFldVar('S_STRING8' ,  sEmpno2        );    // 결재1 사번
    GetFldVar('S_STRING9' ,  sJikwenm3      );    // 결재2 직위
    GetFldVar('S_STRING10',  sEmpno3        );    // 결재2 사번
    GetFldVar('S_STRING11',  sJikwe1        );    // 작성자 직위
    GetFldVar('S_STRING12',  sJikwe2        );    // 결재자 직위1
    GetFldVar('S_STRING13',  sJikwe3        );    // 결재자 직위2
    GetFldVar('S_STRING14',  sChkyn         );    // 인사확인여부(Y/N)
    GetFldVar('S_STRING15',  sInsaJikwenm1  );    // 인사담당자직위1
    GetFldVar('S_STRING16',  sInsaEmpno1    );    // 인사담당자사번1
    GetFldVar('S_STRING17',  sInsaJikwenm2  );    // 인사담당자직위2
    GetFldVar('S_STRING18',  sInsaEmpno2    );    // 인사담당자사번2
    GetFldVar('S_STRING19',  sInsaJikwenm3  );    // 인사담당자직위3
    GetFldVar('S_STRING20',  sInsaEmpno3    );    // 인사담당자사번3
    GetFldVar('S_STRING21',  sInsaJikwe2    );    // 인사담당자직위2
    GetFldVar('S_STRING22',  sInsaJikwe2    );    // 인사담당자직위2
    GetFldVar('S_STRING23',  sInsaJikwe2    );    // 인사담당자직위2
    GetFldVar('S_STRING24',  sReturnTx      );    // 반송사유
    GetFldVar('S_STRING25',  sEditid        );    // 수정자ID
    GetFldVar('S_STRING26',  sEditip        );    // 수정자IP

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결재선 정보 저장
// 2004.10.15 by 문태용
////////////////////////////////////////////////////////////////////////////////
function HgaSignlt.SaveSignlt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;');

  SetFldValue(0 ,[sLocate, sMkDept, sMkYYMM, sRemTxt, sJikwe1,
                  sEmpno1, sJikwe2, sEmpno2, sJikwe3, sEmpno3,
                  sChkyn , sInsaJikwe1, sInsaEmpno1, sInsaJikwe2, sInsaEmpno2,
                  sInsaJikwe3, sInsaEmpno3, sReturnTx, sEditid, sEditip,
                  sChoice]);

  if (txPutF('GA_SIGNL_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월별 근무 스케줄 가져오기
// 2004.10.15 by 문태용
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SelMDutyt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);
  //ga_mduty_l1.pc
  if (txGetF('GA_MDUTY_L1')) then //ga_mduty_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // 사업장
    GetFldVar('S_STRING2' ,  sDeptcd   );    // 소속부서
    GetFldVar('S_STRING3' ,  sEmpno    );    // 사원번호
    GetFldVar('S_STRING4' ,  sEmpnm    );    // 사원명
    GetFldVar('S_STRING5' ,  sMkyymm   );    // 작성년월
    GetFldVar('S_STRING6' ,  sCloseyn  );    // 마감여부
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 일 근무
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 일 근무
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 일 근무
    GetFldVar('S_STRING10',  sDuty04   );    // 04 일 근무

    GetFldVar('S_STRING11',  sDuty05   );    // 05 일 근무
    GetFldVar('S_STRING12',  sDuty06   );    // 06 일 근무
    GetFldVar('S_STRING13',  sDuty07   );    // 07 일 근무
    GetFldVar('S_STRING14',  sDuty08   );    // 08 일 근무
    GetFldVar('S_STRING15',  sDuty09   );    // 09 일 근무
    GetFldVar('S_STRING16',  sDuty10   );    // 10 일 근무
    GetFldVar('S_STRING17',  sDuty11   );    // 11 일 근무
    GetFldVar('S_STRING18',  sDuty12   );    // 12 일 근무
    GetFldVar('S_STRING19',  sDuty13   );    // 13 일 근무
    GetFldVar('S_STRING20',  sDuty14   );    // 14 일 근무

    GetFldVar('S_STRING21',  sDuty15   );    // 15 일 근무
    GetFldVar('S_STRING22',  sDuty16   );    // 16 일 근무
    GetFldVar('S_STRING23',  sDuty17   );    // 17 일 근무
    GetFldVar('S_STRING24',  sDuty18   );    // 18 일 근무
    GetFldVar('S_STRING25',  sDuty19   );    // 19 일 근무
    GetFldVar('S_STRING26',  sDuty20   );    // 20 일 근무
    GetFldVar('S_STRING27',  sDuty21   );    // 21 일 근무
    GetFldVar('S_STRING28',  sDuty22   );    // 22 일 근무
    GetFldVar('S_STRING29',  sDuty23   );    // 23 일 근무
    GetFldVar('S_STRING30',  sDuty24   );    // 24 일 근무

    GetFldVar('S_STRING31',  sDuty25   );    // 25 일 근무
    GetFldVar('S_STRING32',  sDuty26   );    // 26 일 근무
    GetFldVar('S_STRING33',  sDuty27   );    // 27 일 근무
    GetFldVar('S_STRING34',  sDuty28   );    // 28 일 근무
    GetFldVar('S_STRING35',  sDuty29   );    // 29 일 근무
    GetFldVar('S_STRING36',  sDuty30   );    // 30 일 근무
    GetFldVar('S_STRING37',  sDuty31   );    // 31 일 근무
    GetFldVar('S_STRING38',  sJikwenm  );    // 직위명
    GetFldVar('S_STRING39',  sTotvcnt  );    // 총연차
    GetFldVar('S_STRING40',  sUsevcnt  );    // 사용연차

    GetFldVar('S_STRING41',  sAllconyn );    // 결재완료 여부
    GetFldVar('S_STRING42',  sAppdate  );    // 작성일자
    GetFldVar('S_STRING43',  sMkdeptcd );    // 작성부서
    GetFldVar('S_STRING44',  sMkempno  );    // 작성자사번
    GetFldVar('S_STRING45',  sAppseqno );    // 문서일련번호
    GetFldVar('S_STRING46',  sMeddept  );    // 간호부서코드       추가 김용욱 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // 근무부서코드
    GetFldVar('S_STRING48',  sUserid   );    // 간호부서사용userid
    GetFldVar('S_STRING49',  sChkyn    );    // 인사부서 결재완료 여부
    GetFldVar('S_STRING50',  sDocstep  );    // 문서단계
    GetFldVar('S_STRING51',  sVTM      );    // 인사부서 결재완료 여부
    GetFldVar('S_STRING52',  sOVM      );    // 문서단계
    GetFldVar('S_STRING53',  sOFM      );    // 문서단계



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월별 근태 내역 집계
// 2005.01.14 by 문태용
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SelMDutyt2 : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer를 받아옴.


  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9'); //service입력변수   //2006-09-26 변경
  SetFldValue32(0,[ssLocate, ssDeptcd, ssSDate, ssEDate, ssEmpno, ssPaygbn, ssGubun, ssMainDept,ssUserid ]);         //2006-09-26 변경

  //ga_mduty_l2.pc
  if (txGetF32('GA_MDUTY_L2')) then
  begin     //Tuxedo Service Call
    GetFldVar32('S_STRING1'  , sDuty01    );   // 01 사원번호
    GetFldVar32('S_STRING2'  , sDuty02    );   // 02 사원명
    GetFldVar32('S_STRING3'  , sDuty03    );   // 03 직위
    GetFldVar32('S_STRING4'  , sDuty04    );   // 04 직위명
    GetFldVar32('S_STRING5'  , sDuty05    );   // 05 입사일
    GetFldVar32('S_STRING6'  , sDuty06    );   // 06 호봉
    GetFldVar32('S_STRING7'  , sDuty07    );   // 07 근무코드
    GetFldVar32('S_STRING8'  , sDuty08    );   // 08 일자
    GetFldVar32('S_STRING9'  , sDuty09    );   // 09 근무시간외
    GetFldVar32('S_STRING10' , sDuty10    );   // 10 근무심야
    GetFldVar32('S_STRING11' , sDuty11    );   // 11 특근
  //GetFldVar('S_STRING12' , sDuty12    );   // 12 시간외
  //GetFldVar('S_STRING13' , sDuty13    );   // 13 심야
    GetFldVar32('S_STRING12' , sDuty14    );   // 14 연차
    GetFldVar32('S_STRING13' , sDuty15    );   // 15 공가
    // 2006-08-30 추가
    GetFldVar32('S_STRING14' , sDuty16    );   // 16 부서코드
    GetFldVar32('S_STRING15' , sDuty17    );   // 17 부서명
    // 2006-12-21 추가 차수성
    GetFldVar32('S_STRING16' , sVccnt    );   // 16 휴가
    GetFldVar32('S_STRING17' , sD4cnt    );   // 17 당직4
    GetFldVar32('S_STRING18' , sD8cnt    );   // 18 당직8
    GetFldVar32('S_STRING19' , sN1CNT    );   // 17 당직4
    GetFldVar32('S_STRING20' , sFACNT    );   // 18 당직8
    GetFldVar32('S_STRING21' , sFA1CNT    );   // 18 당직8
    GetFldVar32('S_STRING22' , sFA2CNT    );   // 18 당직8
    GetFldVar32('S_STRING23' , sFA3CNT    );   // 18 당직8
    GetFldVar32('S_STRING24' , sConctype  );   // 18 당직8
    GetFldVar32('S_STRING25' , sCntSat  );   // 18 당직8
    GetFldVar32('S_STRING26' , sWardYn  );   // 18 당직8

    GetFldVar32('S_STRING27' , sJIKCHEK  );   // 18 당직8

    GetFldVar32('S_STRING28' , sFA0CNT  );   // 18 당직8
    GetFldVar32('S_STRING29' , sFA4CNT  );   // 18 당직8
    GetFldVar32('S_STRING30' , sD12CNT  );   // 18 당직8
    GetFldVar32('S_STRING31' , sConfirmDt  );   // 18 당직8
   { GetFldVar32('S_STRING32' , sNight  );   // 32나이트수당}
    GetFldVar32('S_STRING32' , sDeptgbn   );// 32 간호,행정구분
    GetFldVar32('S_STRING33' , sFACILCNT   );// 33 시설당직 추가 20171017 이종명


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.SelMDutyt5 : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer를 받아옴.

  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10'); //service입력변수   //2006-09-26 변경
  SetFldValue32(0,[ssLocate, ssDeptcd, ssSDate, ssEDate, ssEmpno, ssPaygbn, ssGubun, ssMainDept,ssUserid, ssGhgb ]);    //2006-09-26 변경
  //ga_mduty_l18.pc
  if (txGetF32('GA_MDUTY_L18')) then
  begin     //Tuxedo Service Call                                      

    GetFldVar32('S_STRING1'  , sDuty01    );   // 01 사원번호
    GetFldVar32('S_STRING2'  , sDuty02    );   // 02 사원명
    GetFldVar32('S_STRING3'  , sDuty03    );   // 03 직위
    GetFldVar32('S_STRING4'  , sDuty04    );   // 04 직위명
    GetFldVar32('S_STRING5'  , sDuty05    );   // 05 입사일
    GetFldVar32('S_STRING6'  , sDuty06    );   // 06 호봉
    GetFldVar32('S_STRING7'  , sDuty07    );   // 07 근무코드
    GetFldVar32('S_STRING8'  , sDuty08    );   // 08 일자
    GetFldVar32('S_STRING9'  , sDuty09    );   // 09 근무시간외
    GetFldVar32('S_STRING10' , sDuty10    );   // 10 근무심야
    GetFldVar32('S_STRING11' , sDuty11    );   // 11 특근
  //GetFldVar('S_STRING12' , sDuty12    );   // 12 시간외
  //GetFldVar('S_STRING13' , sDuty13    );   // 13 심야
    GetFldVar32('S_STRING12' , sDuty14    );   // 14 연차
    GetFldVar32('S_STRING13' , sDuty15    );   // 15 공가
    // 2006-08-30 추가
    GetFldVar32('S_STRING14' , sDuty16    );   // 16 부서코드
    GetFldVar32('S_STRING15' , sDuty17    );   // 17 부서명
    // 2006-12-21 추가 차수성
    GetFldVar32('S_STRING16' , sVccnt    );   // 16 휴가
    GetFldVar32('S_STRING17' , sD4cnt    );   // 17 당직4
    GetFldVar32('S_STRING18' , sD8cnt    );   // 18 당직8
    GetFldVar32('S_STRING19' , sN1CNT    );   // 17 당직4
    GetFldVar32('S_STRING20' , sFACNT    );   // 18 당직8
    GetFldVar32('S_STRING21' , sFA1CNT    );   // 18 당직8
    GetFldVar32('S_STRING22' , sFA2CNT    );   // 18 당직8
    GetFldVar32('S_STRING23' , sFA3CNT    );   // 18 당직8
    GetFldVar32('S_STRING24' , sConctype  );   // 18 당직8
    GetFldVar32('S_STRING25' , sCntSat  );   // 18 당직8
    GetFldVar32('S_STRING26' , sConfirmYn  );   // 18 당직8

    GetFldVar32('S_STRING27' , sWardYn    );   // 18 당직8
    GetFldVar32('S_STRING28' , sJikChek  );   // 18 당직8
    GetFldVar32('S_STRING29' , sFA0CNT  );   // 18 당직8
    GetFldVar32('S_STRING30' , sFA4CNT  );   // 18 당직8
    GetFldVar32('S_STRING31' , sD12CNT  );   // 18 당직8
   { GetFldVar32('S_STRING32' , sNight  );   // 32 나이트근무    161120 이종명추가}
    GetFldVar32('S_STRING32' , sDeptgbn  );   // 32 간호, 행정 구분 값
    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월별 근무 스케줄 여부 조회 (일단위) 추가 김용욱 2006-01-13
// 2006.01.13 by 김용욱
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SelMDutyt3 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;'); //service입력변수
  SetFldValue(0,[ssLocate, ssEmpno, ssYYMM, ssAppYN, ssInsaYN, ssDoctype, ssANFlag]);

  if (txGetF('GA_MDUTY_L9')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sCnt    ) ;
    Result := GetRecordCnt('S_STRING1');;   // 근태코드 수

    txFree;
  end;
end;




////////////////////////////////////////////////////////////////////////////////
// 월별 근무 스케줄 가져오기
// 2005.03.22 월 근무스케줄 가져오기(결재선)
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.ListMDutyt5 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');
  SetFldValue(0, [ssLocate,        // 사업장
                  ssYYMM,          // 근무년월
                  ssDoctype,       // 문서종류
                  ssAppseqno,      // 작성일련번호(문서번호)
                  ssMeddept        // 간호부 근무장소
                  ]);


  //ga_mduty_l5.pc
  if (txGetF('GA_MDUTY_L5')) then   // ga_mduty_l5.pc
  begin     //Tuxedo Service Call

    GetFldVar('S_STRING1' ,  sLocate   );    // 사업장
    GetFldVar('S_STRING2' ,  sDeptcd   );    // 소속부서
    GetFldVar('S_STRING3' ,  sEmpno    );    // 사원번호
    GetFldVar('S_STRING4' ,  sEmpnm    );    // 사원명
    GetFldVar('S_STRING5' ,  sMkyymm   );    // 작성년월
    GetFldVar('S_STRING6' ,  sCloseyn  );    // 마감여부
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 일 근무
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 일 근무
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 일 근무
    GetFldVar('S_STRING10',  sDuty04   );    // 04 일 근무

    GetFldVar('S_STRING11',  sDuty05   );    // 05 일 근무
    GetFldVar('S_STRING12',  sDuty06   );    // 06 일 근무
    GetFldVar('S_STRING13',  sDuty07   );    // 07 일 근무
    GetFldVar('S_STRING14',  sDuty08   );    // 08 일 근무
    GetFldVar('S_STRING15',  sDuty09   );    // 09 일 근무
    GetFldVar('S_STRING16',  sDuty10   );    // 10 일 근무
    GetFldVar('S_STRING17',  sDuty11   );    // 11 일 근무
    GetFldVar('S_STRING18',  sDuty12   );    // 12 일 근무
    GetFldVar('S_STRING19',  sDuty13   );    // 13 일 근무
    GetFldVar('S_STRING20',  sDuty14   );    // 14 일 근무

    GetFldVar('S_STRING21',  sDuty15   );    // 15 일 근무
    GetFldVar('S_STRING22',  sDuty16   );    // 16 일 근무
    GetFldVar('S_STRING23',  sDuty17   );    // 17 일 근무
    GetFldVar('S_STRING24',  sDuty18   );    // 18 일 근무
    GetFldVar('S_STRING25',  sDuty19   );    // 19 일 근무
    GetFldVar('S_STRING26',  sDuty20   );    // 20 일 근무
    GetFldVar('S_STRING27',  sDuty21   );    // 21 일 근무
    GetFldVar('S_STRING28',  sDuty22   );    // 22 일 근무
    GetFldVar('S_STRING29',  sDuty23   );    // 23 일 근무
    GetFldVar('S_STRING30',  sDuty24   );    // 24 일 근무

    GetFldVar('S_STRING31',  sDuty25   );    // 25 일 근무
    GetFldVar('S_STRING32',  sDuty26   );    // 26 일 근무
    GetFldVar('S_STRING33',  sDuty27   );    // 27 일 근무
    GetFldVar('S_STRING34',  sDuty28   );    // 28 일 근무
    GetFldVar('S_STRING35',  sDuty29   );    // 29 일 근무
    GetFldVar('S_STRING36',  sDuty30   );    // 30 일 근무
    GetFldVar('S_STRING37',  sDuty31   );    // 31 일 근무
    GetFldVar('S_STRING38',  sJikwenm  );    // 직위명
    GetFldVar('S_STRING39',  sTotvcnt  );    // 총연차
    GetFldVar('S_STRING40',  sUsevcnt  );    // 사용연차

    GetFldVar('S_STRING41',  sAllconyn );    // 결재완료 여부
    GetFldVar('S_STRING42',  sAppdate  );    // 작성일자
    GetFldVar('S_STRING43',  sMkdeptcd  );   // 작성부서
    GetFldVar('S_STRING44',  sMkempno  );    // 작성자사번
    GetFldVar('S_STRING45',  sAppseqno );    // 문서일련번호
    GetFldVar('S_STRING46',  sMeddept  );    // 간호부서코드       추가 김용욱 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // 근무부서코드
    GetFldVar('S_STRING48',  sUserid   );    // 간호부서사용userid
    GetFldVar('S_STRING49',  sChkyn    );    // 인사부서 결재완료 여부 추가 김용욱 2006-01-18

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;



function HgaMdutyt.ListLast : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptCd,ssYYMM]);

  if (txGetF('GA_MDUTY_L19')) then             // ga_mdutyl_l6.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno	     );    // 당직자 사번
    GetFldVar('S_STRING2'  , sEmpnm	     );    // 당직자 이름
    GetFldVar('S_STRING3'  , sComcdnm    );    // 당직일자
    GetFldVar('S_STRING4'  , sWday    	 );    // 당직코드
    GetFldVar('S_STRING5'  , sDuty	     );    // 당직코드명
    GetFldVar('S_STRING6'  , sSeqno	     );    // 원내번호 20061015
    GetFldVar('S_STRING7'  , sGubun	     );    // 원내번호 20061015


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;




function HgaMdutyt.InsertConfirm : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');  // S_TYPE19 김용욱 추가 2005-11-01

  SetFldValue(0 ,[sEmpno  , sLocate , sMkyymm, sDeptcd  , sDoctype , sConfirmyn ]); //sInsayn 추가 김용욱 2006-01-18

  if (txPutF('GA_CONFM_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;



////////////////////////////////////////////////////////////////////////////////
// 월별 근무 스케줄 저장
// 2005.03.21 by 문태용
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SaveMDutyt3(iCnt : Integer) : Integer; // 부활 김용욱 2005-12-22
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;');

  for i :=0 to iCnt - 1 do
  begin
     SetFldValue(i , [sLocate[i]   ,     // 사업장
                      sEmpno[i]    ,     // 근무자 사번
                      sMkyymm[i]   ,     // 근무년월
                      sDutydate[i] ,     // 근무일자
                      sDuty01[i]   ,     // 근무코드
                      sAppdate[i]  ,     // 문서작성일
                      sMkdeptcd[i] ,     // 작성자 근무부서코드
                      sMkempno[i]  ,     // 작성자 사번
                      sDoctype[i]  ,     // 문서종류
                      sAppseqno[i] ,     // 작성일련번호
                      sDeptcd[i]   ,     // 근무자 근무부서코드
                      sDayWeek[i]  ,     // 요일
                      sAllconyn[i] ,     // 결재완료여부
                      sChkyn[i]    ,     // 인사확인여부
                      sWeekcnt[i]  ,     // 주차
                      sEditid[i]   ,     // 수정자ID
                      sEditip[i]   ,     // 수정IP
                      sDutyFlag[i] ,     // 행정/간호구분
                      sWkareacd[i] ,     // 근무자 근무부서코드
                      sMeddept[i]  ,     // 간호부서코드
                      sUserid[i]    ]);  // 간호사 USER ID
  end;


  if (txPutF('GA_MDUTY_I3')) then   //ga_mduty_i3.pc
  begin
    Result := 1;
    txFree;
  end;
end;


//----------------------------------------------------------------------------//
// 월별 근무 스케줄 Update (AppSeqNo 만...)
// 2006.01.20 by 김용욱
//----------------------------------------------------------------------------//
function HgaMdutyt.UpdateMDutyt1(iCnt : Integer) : Integer; // 부활 김용욱 2005-12-22
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;');

  for i :=0 to iCnt - 1 do
  begin
    SetFldValue(i , [sLocate[i], sEmpno[i], sMkyymm[i], sDutydate[i], sAppseqno[i],
                     sEditid[i], sEditip[i] ]);
  end;

  //ga_mduty_u1.pc
  if (txPutF('GA_MDUTY_U1')) then
  begin //Tuxedo Service Call
    Result := 1;
    txFree;
  end;
end;

//----------------------------------------------------------------------------//
// 월별 근무 스케줄 Update (AllConYn, ChkYn 만...)
// 2006.01.23 by 김용욱
//----------------------------------------------------------------------------//
function HgaMdutyt.UpdateMDutyt2(iCnt : Integer) : Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;');

  for i :=0 to iCnt - 1 do
  begin
    SetFldValue(i , [sLocate[i], sEmpno[i] , sMkyymm[i], sDutydate[i], sAllconyn[i],
                     sChkyn[i] , sEditid[i], sEditip[i] ]);
  end;

  //ga_mduty_u2.pc
  if (txPutF('GA_MDUTY_U2')) then
  begin //Tuxedo Service Call
    Result := 1;
    txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
//월별 당직자 부서별 List Up
// 2005.04   구 남 영
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.ListMdutyOp : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptCd,ssSdate,ssEdate]);

  if (txGetF('GA_MDUTYL_L6')) then             // ga_mdutyl_l6.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno	     );    // 당직자 사번
    GetFldVar('S_STRING2'  , sEmpnm	     );    // 당직자 이름
    GetFldVar('S_STRING3'  , sDutyDate	 );    // 당직일자
    GetFldVar('S_STRING4'  , sDutyCode	 );    // 당직코드
    GetFldVar('S_STRING5'  , sDutyName	 );    // 당직코드명
    GetFldVar('S_STRING6'  , sIntelno	   );    // 원내번호 20061015
    GetFldVar('S_STRING7'  , sPagerno	   );    // 호출기번호 20061015
    GetFldVar('S_STRING8'  , sHphoneno	 );    // 휴대폰번호 20061015

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
//월별 당직자 전체 List Up
// 2005.04   구 남 영
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.ListMdutyOpAll : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptcd,ssSdate,ssEdate,sFlag]);

  if (txGetF('GA_MDUTYL_L7')) then   // ga_mdutyl_l7.pc
  begin     //Tuxedo Service Call

    GetFldVar('S_STRING1'  , sDeptNm	   );    // 당직자 소속부서
    GetFldVar('S_STRING2'  , sDeptCd	   );    // 당직자 근무부서  sDeptCd를 근무부서변수로 사용
    GetFldVar('S_STRING3'  , sEmpno	     );    // 당직자 사번
    GetFldVar('S_STRING4'  , sEmpnm	     );    // 당직자 이름
    GetFldVar('S_STRING5'  , sDutyDate	 );    // 당직일자
    GetFldVar('S_STRING6'  , sDutyCode	 );    // 당직코드
    GetFldVar('S_STRING7'  , sDutyName	 );    // 당직코드명
    GetFldVar('S_STRING8'  , sIntelno	   );    // 원내번호 20061015
    GetFldVar('S_STRING9'  , sPagerno	   );    // 호출기번호 20061015
    GetFldVar('S_STRING10' , sHphoneno	 );    // 휴대폰번호 20061015



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// 휴일정보 가져오기(공통)
// 2004.10.25 by 문태용
////////////////////////////////////////////////////////////////////////////////
function HgaHolydt.GetHolycnt: Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수

   SetFldValue(0, [sStdt         // 조회시작일
                 , sEndt         // 조회종료일
                 , sSatyn        // 토요일 포함여부
                   ]);

   if (txGetF('GA_HOLYD_L2')) then           // ga_holyd_l2.pc
   begin
      GetFldVar('S_STRING1' , sHolycnt  );

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;


end;

function  HgaHolydt.GetHolyday : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sStdt, sEndt]);

   if (txGetF('GA_HOLYD_L1')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sHolyDt     );    //사원번호
     GetFldVar('S_STRING2' , sGuseyn     );    //인사사용여부(휴일 성격)

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaTenuat.RsqtTenuat : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;');  // S_TYPE19 김용욱 추가 2005-11-01  S_TYPE22 이은아 추가 20210427

  SetFldValue(0 ,[sEmpno  , sLocate , sTenusdate, sTenutype  , sTenupubno ,
                  sTenuuse, sTenucnt, sUsedate  , sTenuprnyn , sPrintdate ,
                  sJobtype, sEngaddr, sOffice   , sAppEmpno  , sAppyn     ,
                  sEditid , sEditip , sChoice   , sBaseDateFr, sBaseDateTo,  // sBaseDate 김용욱 추가 2005-11-01
                  sInsayn, sResnoyn]); //sInsayn 추가 김용욱 2006-01-18


  if (txPutF('GA_TENUA_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

function HgaTenuat.RsqtTenuat2 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;');  // S_TYPE19 김용욱 추가 2005-11-01  S_TYPE22 이은아 추가 20210427

  SetFldValue(0 ,[sEmpno  , sLocate , sTenusdate, sTenutype  , sTenupubno ,
                  sTenuuse, sTenucnt, sUsedate  , sTenuprnyn , sPrintdate ,
                  sJobtype, sEngaddr, sOffice   , sAppEmpno  , sAppyn     ,
                  sEditid , sEditip , sChoice   , sBaseDateFr, sBaseDateTo,  // sBaseDate 김용욱 추가 2005-11-01
                  sInsayn, sResnoyn, sPrintcnt  , sPhoneno]); //sInsayn 추가 김용욱 2006-01-18  sPrintcnt 추가 20210427  sHphoneno 추가 20210609


  if (txPutF('GA_TENUA_I2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

//제증명 문자전송 업데이트 20210611
function HgaTenuat.SetRsqtTenuat: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  //ga_tenua_i3.pc

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;');
  SetFldValue(0 ,[sEmpno
                , sLocate
                , sTenusdate
                , sTenutype  
                , sTenupubno 
                , sChoice
                , sSendyn]);
  if (txPutF('GA_TENUA_I3')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 재증명 결재/반송 처리
// 2005-03-24
////////////////////////////////////////////////////////////////////////////////
function HgaTenuat.ApprTenuat(iCnt : Integer) : Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');
  for i := 0 to iCnt - 1 do
  SetFldValue(i ,[sEmpno[i] , sLocate[i], sTenusdate[i], sTenutype[i] , sAppyn[i],
                  sEditid[i], sEditip[i], sInsayn[i]   , sInsaEmpno[i], sRetxt[i]]);

  if (txPutF('GA_TENUA_U1')) then   //Tuxedo Service Call ga_tenua_u1.pc
  begin
     Result := 1;
     txFree;
  end;

end;

//제증명 문의사항 저장 20211101
function HgaTenuat.TnQASave: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  if sInsgbn = 'I' then
  begin
    SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
                 'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');
    SetFldValue32(0 ,[sInsgbn    , sLocate , sYjyear , sQusempno, sQustitle
                     ,sQusdetail , sEditid , sEditip , sQusno   , sQusgbn]);
  end
  else if sInsgbn = 'U' then
  begin
    SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
                 'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');
    SetFldValue32(0 ,[sInsgbn   ,sLocate    , sYjyear , sQusno  , sQusempno
                     ,sQustitle ,sQusdetail , sEditid , sEditip , sQusgbn]);
  end
  else if sInsgbn = 'R' then
  begin
    SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
                 'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');
    SetFldValue32(0 ,[sInsgbn    ,sLocate   , sYjyear , sQusno  , sQusempno
                     ,sAnsdetail ,sAnsempno , sEditid , sEditip , sQusgbn]);
  end;
  if txPutF32('GA_TNQAMT_C2') then
  begin
    Result := 1;
    txFree32;
  end;
end;

function HgaTenuat.ListTenuat : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
   SetFldValue(0,[ssEmpno,ssLocate,ssTenutype,ssTenudate1,ssTenudate2,ssPrnYn]);

  if (txGetF('GA_TENUA_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno			  );    // 사원번호
    GetFldVar('S_STRING2'  , sLocate	    );    // 사업장코드
    GetFldVar('S_STRING3'  , sTenusdate		);    // 신청일시  yyyymmdd -> yyyymmddhhnnss 변경
    GetFldVar('S_STRING4'  , sTenutype		);    // 재증명 종류
    GetFldVar('S_STRING5'  , sTenutypenm	);    // 재증명 종류명
    GetFldVar('S_STRING6'  , sTenupubno		);    // 발급번호
    GetFldVar('S_STRING7'  , sTenuuse		  );    // 재증명 용도
    GetFldVar('S_STRING8'  , sTenucnt		  );    // 신청부수
    GetFldVar('S_STRING9'  , sUsedate		  );    // 사용일자
    GetFldVar('S_STRING10' , sTenuprnyn		);    // 발급여부(Y/N)
    GetFldVar('S_STRING11' , sPrintdate		);    // 최종발급일
    GetFldVar('S_STRING12' , sJikjong		  );    // 직종코드
    GetFldVar('S_STRING13' , sJikjongnm		);    // 최종명
    GetFldVar('S_STRING14' , sEmpnm		    );    // 성명
    GetFldVar('S_STRING15' , sEntdt		    );    // 입사일
    GetFldVar('S_STRING16' , sRetdt		    );    // 퇴사일
    GetFldVar('S_STRING17' , sHannm		    );    // 한문성명
    GetFldVar('S_STRING18' , sResno       );    // 주민등록번호
    GetFldVar('S_STRING19' , sAddr1       );    // 주민등록지 우편번호 주소값
    GetFldVar('S_STRING20' , sAddr2       );    // 주민등록지 주소
    GetFldVar('S_STRING21' , sDeptcd 	    );    // 부서코드
    GetFldVar('S_STRING22' , sDeptnm      );    // 부서명
    GetFldVar('S_STRING23' , sJikwe       );    // 직위코드
    GetFldVar('S_STRING24' , sJikwenm     );    // 직위명
    GetFldVar('S_STRING25' , sCdetcb      );    // 직위코드
    GetFldVar('S_STRING26' , sCdetcc      );    // 직위명
    GetFldVar('S_STRING27' , sJobtype     );    // 영문직위명
    GetFldVar('S_STRING28' , sEngaddr     );    // 영문주소

    GetFldVar('S_STRING29' , sSexcd       );    // 성별코드
    GetFldVar('S_STRING30' , sEngname     );    // 영문성명

    GetFldVar('S_STRING31' , sInsaEngAddr );    // 영문주소(인사)
    GetFldVar('S_STRING32' , sBorndt      );    // 생일
    GetFldVar('S_STRING33' , sOffice      );    // 제출처
    GetFldVar('S_STRING34' , sDepteng     );    // 영문부서명
    GetFldVar('S_STRING35' , sBaseDateFr  );    // 사용일자  // 김용욱 추가 2005-11-01
    GetFldVar('S_STRING36' , sBaseDateTo  );    // 사용일자  // 김용욱 추가 2005-11-01

    GetFldVar('S_STRING37' , sJikmunm     );    // 직무name(=신분) 추가 김용욱 2006-01-17
    GetFldVar('S_STRING38' , sJikcheknm   );    // 직책name(=보직) 추가 김용욱 2006-01-17
    GetFldVar('S_STRING39' , sResnoyn     );    // 주민번호 출력여부  2014.12.08 김승철 추가
    GetFldVar('S_STRING40' , sAppyndate   );    // 결재일자  20210427
    GetFldVar('S_STRING41' , sPrintcnt    );    // 출력횟수  20210427
    GetFldVar('S_STRING42' , sHphoneno    );    // 핸드폰번호  20210526
    GetFldVar('S_STRING43' , sSendyn      );    // 문자전송여부  20210611

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaTenuat.ListTenuat2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   SetFldValue(0,[ssEmpno,ssTenudate1,ssTenudate2,ssInsaGubun]);  // ssInsaGubun 추가 김용욱 2006-01-17

  if (txGetF('GA_TENUA_L2')) then  //ga_tenua_l2.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno			  );    // 사원번호
    GetFldVar('S_STRING2'  , sLocate	    );    // 사업장코드
    GetFldVar('S_STRING3'  , sTenusdate		);    // 신청일시  yyyymmdd -> yyyymmddhhnnss 변경
    GetFldVar('S_STRING4'  , sTenutype		);    // 재증명 종류
    GetFldVar('S_STRING5'  , sTenutypenm	);    // 재증명 종류명
    GetFldVar('S_STRING6'  , sTenupubno		);    // 발급번호
    GetFldVar('S_STRING7'  , sTenuuse		  );    // 재증명 용도
    GetFldVar('S_STRING8'  , sTenucnt		  );    // 신청부수
    GetFldVar('S_STRING9'  , sUsedate		  );    // 사용일자
    GetFldVar('S_STRING10' , sTenuprnyn		);    // 발급여부(Y/N)
    GetFldVar('S_STRING11' , sPrintdate		);    // 최종발급일
    GetFldVar('S_STRING12' , sJikjong		  );    // 직종코드
    GetFldVar('S_STRING13' , sJikjongnm		);    // 최종명
    GetFldVar('S_STRING14' , sEmpnm		    );    // 성명
    GetFldVar('S_STRING15' , sEntdt		    );    // 입사일
    GetFldVar('S_STRING16' , sRetdt		    );    // 퇴사일
    GetFldVar('S_STRING17' , sHannm		    );    // 한문성명
    GetFldVar('S_STRING18' , sResno       );    // 주민등록번호
    GetFldVar('S_STRING19' , sAddr1       );    // 주민등록지 우편번호 주소값
    GetFldVar('S_STRING20' , sAddr2       );    // 주민등록지 주소
    GetFldVar('S_STRING21' , sDeptcd 	    );    // 부서코드
    GetFldVar('S_STRING22' , sDeptnm      );    // 부서명
    GetFldVar('S_STRING23' , sJikwe       );    // 직위코드
    GetFldVar('S_STRING24' , sJikwenm     );    // 직위명
    GetFldVar('S_STRING25' , sCdetcb      );    // 직위코드
    GetFldVar('S_STRING26' , sCdetcc      );    // 직위명
    GetFldVar('S_STRING27' , sJobtype     );    // 영문직위명
    GetFldVar('S_STRING28' , sEngaddr     );    // 영문주소
    GetFldVar('S_STRING29' , sEngname     );    // 영문성명
    GetFldVar('S_STRING30' , sSexcd       );    // 성별코드
    GetFldVar('S_STRING31' , sInsaEngAddr );    // 영문주소(인사)
    GetFldVar('S_STRING32' , sBorndt      );    // 생일
    GetFldVar('S_STRING33' , sOffice      );    // 제출처
    GetFldVar('S_STRING34' , sDepteng     );    // 영문부서명
    GetFldVar('S_STRING35' , sAppyn       );    // 결재여부 // 34 -> 35 김용욱 수정
    GetFldVar('S_STRING36' , sBaseDateFr  );    // 기준신고일자From 김용욱 추가 2005-11-01
    GetFldVar('S_STRING37' , sBaseDateTo  );    // 기준신고일자To   김용욱 추가 2005-11-01
    GetFldVar('S_STRING38' , sHphoneno  );      // 핸드폰번호 추가 20210526

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

//20211101 제증명 문의사항 조회
function HgaTenuat.TnQAMaster: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');
  SetFldValue(0 ,[smYjyear , smLocate , smChkgbn , smAnsgbn, smEmpno]);

  if (txGetF('GA_TNQAMT_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1', ssQusno);
    GetFldVar('S_STRING2', ssQusdate);
    GetFldVar('S_STRING3', ssQusempno);
    GetFldVar('S_STRING4', ssQusempnm);
    GetFldVar('S_STRING5', ssQustitle);
    GetFldVar('S_STRING6', ssAnsyn);
    GetFldVar('S_STRING7', ssAnsdate);

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

//제증명 문의사항 디테일 20211101
function HgaTenuat.TnQADetail: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
  SetFldValue(0 ,[sdYjyear, sdLocate, sdQusno, sdEmpno]);

  if (txGetF('GA_TNQAMT_L2')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1', sqQusno    );
    GetFldVar('S_STRING2', sqQusempno );
    GetFldVar('S_STRING3', sqQusempnm );
    GetFldVar('S_STRING4', sqQustitle );
    GetFldVar('S_STRING5', sqQusdetail);
    GetFldVar('S_STRING6', sqAnsdetail);
    GetFldVar('S_STRING7', sqAnsempno );
    GetFldVar('S_STRING8', sqAnsempnm );

    Result := 1;
    txFree;
  end;
end;

function HgaTenuat.ListTenuat5 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   SetFldValue(0,[ssEmpno,ssTenudate1,ssTenudate2,ssInsaGubun]);  // ssInsaGubun 추가 김용욱 2006-01-17

  if (txGetF('GA_TENUA_L5')) then  //ga_tenua_l5.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno			  );    // 사원번호
    GetFldVar('S_STRING2'  , sLocate	    );    // 사업장코드
    GetFldVar('S_STRING3'  , sTenusdate		);    // 신청일시  yyyymmdd -> yyyymmddhhnnss 변경
    GetFldVar('S_STRING4'  , sTenutype		);    // 재증명 종류
    GetFldVar('S_STRING5'  , sTenutypenm	);    // 재증명 종류명
    GetFldVar('S_STRING6'  , sTenupubno		);    // 발급번호
    GetFldVar('S_STRING7'  , sTenuuse		  );    // 재증명 용도
    GetFldVar('S_STRING8'  , sTenucnt		  );    // 신청부수
    GetFldVar('S_STRING9'  , sUsedate		  );    // 사용일자
    GetFldVar('S_STRING10' , sTenuprnyn		);    // 발급여부(Y/N)
    GetFldVar('S_STRING11' , sPrintdate		);    // 최종발급일
    GetFldVar('S_STRING12' , sJikjong		  );    // 직종코드
    GetFldVar('S_STRING13' , sJikjongnm		);    // 최종명
    GetFldVar('S_STRING14' , sEmpnm		    );    // 성명
    GetFldVar('S_STRING15' , sEntdt		    );    // 입사일
    GetFldVar('S_STRING16' , sRetdt		    );    // 퇴사일
    GetFldVar('S_STRING17' , sHannm		    );    // 한문성명
    GetFldVar('S_STRING18' , sResno       );    // 주민등록번호
    GetFldVar('S_STRING19' , sAddr1       );    // 주민등록지 우편번호 주소값
    GetFldVar('S_STRING20' , sAddr2       );    // 주민등록지 주소
    GetFldVar('S_STRING21' , sDeptcd 	    );    // 부서코드
    GetFldVar('S_STRING22' , sDeptnm      );    // 부서명
    GetFldVar('S_STRING23' , sJikwe       );    // 직위코드
    GetFldVar('S_STRING24' , sJikwenm     );    // 직위명
    GetFldVar('S_STRING25' , sCdetcb      );    // 직위코드
    GetFldVar('S_STRING26' , sCdetcc      );    // 직위명
    GetFldVar('S_STRING27' , sJobtype     );    // 영문직위명
    GetFldVar('S_STRING28' , sEngaddr     );    // 영문주소
    GetFldVar('S_STRING29' , sEngname     );    // 영문성명
    GetFldVar('S_STRING30' , sSexcd       );    // 성별코드
    GetFldVar('S_STRING31' , sInsaEngAddr );    // 영문주소(인사)
    GetFldVar('S_STRING32' , sBorndt      );    // 생일
    GetFldVar('S_STRING33' , sOffice      );    // 제출처
    GetFldVar('S_STRING34' , sDepteng     );    // 영문부서명
    GetFldVar('S_STRING35' , sAppyn       );    // 결재여부 // 34 -> 35 김용욱 수정
    GetFldVar('S_STRING36' , sBaseDateFr  );    // 기준신고일자From 김용욱 추가 2005-11-01
    GetFldVar('S_STRING37' , sBaseDateTo  );    // 기준신고일자To   김용욱 추가 2005-11-01
    GetFldVar('S_STRING38' , sHphoneno  );      // 핸드폰번호 추가 20210526

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


function HccHosift.ListHosift : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;'); //service입력변수
   SetFldValue(0,[sLocate]);

  if (txGetF('GA_HOSIF_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sHsptname     );    // 사업장코드
    GetFldVar('S_STRING2'  , sPrsdname     );    // 병원명칭
    GetFldVar('S_STRING3'  , sPrsdreno     );    // 대표자명
    GetFldVar('S_STRING4'  , sAddress      );    // 대표자 주민번호
    GetFldVar('S_STRING5'  , sTelno        );    // 병원주소
    GetFldVar('S_STRING6'  , sFaxno        );    // 전화번호
    GetFldVar('S_STRING7'  , sZipcd        );    // FAX 번호
    GetFldVar('S_STRING8'  , sEhsptnm      );    // 우편번호
    GetFldVar('S_STRING9'  , sEaddress     );    // 영문병원명

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;


end;

function HgaSdate.GetSysDate : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName(''); //service입력변수
   SetFldValue(0,[]);

  if (txGetF('GA_SDATE_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sSysdate     );    // 사업장코드

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaSdate.GetSysTime : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName(''); //service입력변수
   SetFldValue(0,[]);

  if (txGetF('GA_SDATE_L6')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sSysdate     );    // 사업장코드

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 특근 내역 집계 및 집계결과 조회
// 작성자 : 문 태 용
// 작성일 : 2005.01.18                          GA_MDUTY_C1
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.CalcOverMT : Integer;
begin


   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
   SetFldValue32(0,[ ssLocate
                   , ssYYMM
                   , ssDeptcd
                   , sEditid
                   , sEditip
                   , ssPaygbn
                   ]);

  if (txPutF32('GA_MDUTY_C1', 300)) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree32;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// 월 특근 내역 집계 및 집계결과 조회
// 작성자 : 문 태 용
// 작성일 : 2005.01.18
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.GetOverMT : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptcd,ssYYMM,ssPaygbn,ssCgubun,ssJikmu]);

  if (txGetF('GA_MDUTY_L3')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno     );    // 사원번호
    GetFldVar('S_STRING2'  , sEmpnm     );    // 사원명
    GetFldVar('S_STRING3'  , sEntdt     );    // 입사일자
    GetFldVar('S_STRING4'  , sJikwenm   );    // 직위명
    GetFldVar('S_STRING5'  , sDeptnm    );    // 부서명
    GetFldVar('S_STRING6'  , sCnt       );    // 특근시간수
    GetFldVar('S_STRING7'  , sCnt25     );    // 연장 25% 적용
    GetFldVar('S_STRING8'  , sCnt50     );    // 연장 50% 적용
    GetFldVar('S_STRING9'  , sCntnig    );    // 심야적용
    GetFldVar('S_STRING10' , sOffcnt    );    // 휴일수(토,일)
    GetFldVar('S_STRING11' , sOffholy   );    // 휴일수(국경일)
    GetFldVar('S_STRING12' , sWkmonth   );    // 근무월

    GetFldVar('S_STRING13' , sCntDuty15   );  // 당직일수(4시간)        // 수정 김용욱 2005-11-29
    GetFldVar('S_STRING14' , sCntDuty30   );  // 당직일수(8시간)        // 추가 김용욱 2005-11-29
    GetFldVar('S_STRING15' , sCntDuty40A  );  // 당직일수(부서장 반일)  // 추가 김용욱 2005-11-29
    GetFldVar('S_STRING16' , sCntDuty40B  );  // 당직일수(부서장 종일)  // 추가 김용욱 2005-11-29

    GetFldVar('S_STRING17' , sCntHol    );    // 휴일근무시수
    GetFldVar('S_STRING18' , sConDate   );    // 마감일자

    GetFldVar('S_STRING19' , sSCnt   );   // 병가   2006-09-27
    GetFldVar('S_STRING20' , sRCnt   );   // 휴직   2006-09-27
    GetFldVar('S_STRING21' , sOCnt   );   // 공가   2006-09-27
    GetFldVar('S_STRING22' , sCCnt   );   // 경조   2006-09-27
    GetFldVar('S_STRING23' , sVCnt   );   // 연차   2006-09-27
    GetFldVar('S_STRING24' , sUsevCnt   ); // 총사용연차  2006-09-27
    GetFldVar('S_STRING25' , sBCnt     );
    GetFldVar('S_STRING26' , sBCnt50   );
    GetFldVar('S_STRING27' , sBCntNig  ); 




    
    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 특근 내역 결재
// 작성자 : 문 태 용
// 작성일 : 2005.01.19
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.SaveOverMT(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;' +
              'S_TYPE15;S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;' +
              'S_TYPE20;S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;' +
              'S_TYPE25;S_TYPE26;S_TYPE27;S_TYPE28'); //service입력변수

   for ii := 0 to iCnt - 1 do
    SetFldValue(ii,[  sLocate   [ii] 
                    , sEmpno    [ii] 
                    , sWkmonth  [ii]
                    , sCnt      [ii]
                    , sCnt25    [ii]
                    , sCnt50    [ii]
                    , sCntnig   [ii]
                    , sDuty1    [ii]
                    , sNight    [ii]  // 나이트근무수당 20161019 추가
                    , sDuty2    [ii]
                    , sDuty3    [ii]
                    , sDuty4    [ii]
                    , sDuty5    [ii]
                    , sDuty6    [ii]
                    , sDuty7    [ii]
                    , sDuty8    [ii]
                    , sDuty9    [ii]
                    , sVcnt     [ii]
                    , sNowork   [ii]
                    , sNowork1  [ii]
                    , sEditid   [ii]
                    , sEditip   [ii]
                    , sCntFa1   [ii]
                    , sCntFa2   [ii]
                    , sCntFa3   [ii]
                    , sCntFa4   [ii]
                    , sCntD12   [ii]
                    , sFACILCNT [ii]

                  ] );
  //ga_mdutyl_i2.pc
  if (txPutF('GA_MDUTYL_I2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 특근 내역 마감 (전체)
// 작성자 : 김용욱
// 작성일 : 2005.11.24
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.MagamOverMT(sMagamGbn: String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수
   SetFldValue(0,[sLocate, sWkmonth, sConid, sEditid, sEditip, sMagamGbn, sPayGbn]);
  if (txPutF('GA_MDUTYL_I4')) then
  begin
     Result := 1;
     txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// 기존 결재선 정보 삭제
// 결재선 정보가 변경될 경우 기존의 결재선 정보를 모두 삭제후 변경된 결재선 정보로
// 다시 저장
// 작성일 : 2005.03.07
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.DeleteAprovt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;'); //service입력변수
   SetFldValue(0, [sLocate,sAppdate,sMkDeptcd,sMkEmpno, sDocType,
                   sAppSeqno]);

  if (txPutF('GA_APROV_D1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// 근태, 일 특근신청내역 삭제
// 작성일 : 2005.03.14
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.DeleteAprovt2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;'); //service입력변수
   SetFldValue(0, [ssLocate,ssAppdate,ssMkDeptcd,ssMkEmpno, ssDocType,
                   ssAppSeqno]);

  if (txPutF('GA_APROV_D2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

function HgaAprovt.SaveAprovt(iCnt : Integer) : Integer;  // 결재선 지정 저장
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;'); //service입력변수
   for ii := 0 to iCnt - 1 do
    SetFldValue(ii,[sLocate[ii],sAppdate[ii],sMkDeptcd[ii],sMkEmpno[ii], sDocType[ii],
                    sAppSeqno[ii], sSeqno[ii],sAppempno[ii], sAppyn[ii],sEditid[ii],
                    sEditip[ii],sInsayn[ii]]);

  if (txPutF('GA_APROV_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

function HgaAprovt.ListApprovt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
   SetFldValue(0,[ssLocate,ssAppdate,ssMkDeptcd,ssMkEmpno,ssDocType,ssAppSeqno]);

  if (txGetF('GA_APROV_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sAppempno      );    // 결재자 사번
    GetFldVar('S_STRING2'  , sAppempnm      );    // 결재자 성명
    GetFldVar('S_STRING3'  , sSeqno         );    // 결재순번
    GetFldVar('S_STRING4'  , sAppyn         );    // 결재여부
    GetFldVar('S_STRING5'  , sJikwenm       );    // 직위명


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.GetApprovalYn : Integer; // 결제 진행 여부
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
   SetFldValue(0,[ssLocate,ssMkDeptcd,ssAppdate,ssAppSeqno,ssMkEmpno,ssDocType]);

  if (txGetF('GA_APROV_L2')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sCnt );    //
    Result := 1;
    txFree;
  end;

end;

function HgaAprovt.ListApprovt5 : Integer;  // 결제 대기 문서 List Up
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0,[ssLocate,          // 사업장 코드
                 ssAppdate,         // 문서작성일
                 ssMkdeptcd,        // 작성 부서코드
                 ssMkempno,         // 작성자 사번
                 ssDoctype,         // 문서형태
                 ssAppseqno,        // 작성일련번호
                 ssLoginuser]);     // 로그인한 유저


  if (txGetF('GA_APROV_L5')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sRefwkcd    );    // 근태코드
    GetFldVar('S_STRING9'  , sWksdate    );    // 근태시작일
    GetFldVar('S_STRING10' , sWkedate    );    // 근태종료일
    GetFldVar('S_STRING11' , sRemtxt     );    // 근태사유
    GetFldVar('S_STRING12' , sCnt        );    // 근태일수
    GetFldVar('S_STRING13' , sRettxt     );    // 반송사유
    GetFldVar('S_STRING14' , sAllconyn   );    // 결제완료여부
    GetFldVar('S_STRING15' , sChkyn      );    // 인사팀확인여부
    GetFldVar('S_STRING16' , sGenconid   );    // 인사부서 확인자
    GetFldVar('S_STRING17' , sEmpnm      );    // 성명
    GetFldVar('S_STRING18' , sJikwe      );    // 직위
    GetFldVar('S_STRING19' , sWknm       );    // 근태명
    GetFldVar('S_STRING20' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING21' , sMkempnm    );    // 작성자 이름     추가 김용욱 2005-12-09
    GetFldVar('S_STRING22' , sANFlag     );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING23' , sBefwkcd    );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING24' , sStm        );    // BS시작시간 이지윤 추가 2018-07-12
    GetFldVar('S_STRING25' , sEtm        );    // BS종료시간 이지윤 추가 2018-07-12
    GetFldVar('S_STRING26' , sTtm        );    // BS사용시간 이지윤 추가 2018-07-12

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// 결재 대기 문서 List Up(Master)
// 작성일 : 2005-03-08
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt4 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
  SetFldValue(0,[ssLocate,ssEmpno,ssSDate,ssEDate,ssDocType,ssInsaYn]);

  if (txGetF('GA_APROV_L4')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno      );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno   );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn      );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt     );    // 비  고
    GetFldVar('S_STRING11' , sEmpnm      );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING13' , sInsayn     );    // 인사부서 여부

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// 결제 대기 문서 List Up(작성자 기준)
// 작성일 : 2005-03-013
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt6 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_APROV_L6')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sEmpnm      );    // 작성자 성명
    GetFldVar('S_STRING8'  , sDeptnm     );    // 부서명
    GetFldVar('S_STRING9'  , sRettxt     );    // 반환사유
    GetFldVar('S_STRING10' , sDocstep    );    // 문서단계

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;



////////////////////////////////////////////////////////////////////////////////
// 결제 대기 문서 List Up(작성자 기준)
// 작성일 : 2005-03-013
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt26 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_APROV_L26')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sEmpnm      );    // 작성자 성명
    GetFldVar('S_STRING8'  , sDeptnm     );    // 부서명
    GetFldVar('S_STRING9'  , sRettxt     );    // 반환사유
    GetFldVar('S_STRING10' , sDocstep    );    // 문서단계

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// 결제 대기 문서 List Up(인사부서 기준)
// 작성일 : 2005-03-016
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt7 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;'); //service입력변수
  SetFldValue(0,[ssLocate,ssEmpno,ssSDate,ssEDate,ssDocType,ssGrade,ssDeptcd]);

  if (txGetF('GA_APROV_L7')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno      );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno   );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn      );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt     );    // 비  고
    GetFldVar('S_STRING11' , sEmpnm      );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm     );    // 부서명

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 근무스케줄 결제진행상태 조회
// 작성일 : 2005-03-19
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt8 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
  SetFldValue(0,[ssLocate,ssAppdate,ssMkDeptcd,ssDocType]);

  if (txGetF('GA_APROV_L8')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate    );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate   );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd  );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno   );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype   );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno  );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno     );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno  );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppEmpnm  );    // 결재자 성명
    GetFldVar('S_STRING10' , sJikwe     );    // 직위코드
    GetFldVar('S_STRING11' , sJikwenm   );    // 직위명
    GetFldVar('S_STRING12' , sDeptnm    );    // 부서명

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 근무스케줄 결제진행상태 조회
// 작성자 : 문태용
// 작성일 : 2005-04-26
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt9 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
  SetFldValue(0,[ssLocate,ssSDate,ssEDate,ssDocType]);

  if (txGetF('GA_APROV_L9')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno      );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno   );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn      );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt     );    // 비  고
    GetFldVar('S_STRING11' , sEmpnm      );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING13' , sInsayn     );    // 인사부서 여부

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 근무스케줄 결제진행상태 조회(전체, 결재전, 결재후)
// 작성자 : 문태용
// 작성일 : 2005-04-27
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt10: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수
  SetFldValue(0,[ssLocate,ssSDate,ssEDate,ssInsayn, ssDocType,ssFlag,ssEmpno]);

  if (txGetF('GA_APROV_L10')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno      );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno   );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn      );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt     );    // 비  고
    GetFldVar('S_STRING11' , sEmpnm      );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING13' , sInsayn     );    // 인사부서 여부

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 근무스케줄 결재 조회(간호부 조회)
// 작성자 : 문태용
// 작성일 : 2005-05-16
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt11: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
  SetFldValue(0,[ssMkYymm,ssDeptcd,ssLocate]);

  if (txGetF('GA_APROV_L11')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sInputdt    );    // 작성일
    GetFldVar('S_STRING3'  , sWkareacd   );    // 작성자 근무부서코드 (sMkwkareacd)
    GetFldVar('S_STRING4'  , sInputEmpno );    // 추가요 작성자(Empno)
    GetFldVar('S_STRING5'  , sDocType    );    // 추가요
    GetFldVar('S_STRING6'  , sSignseni   );    // 간호부장(sSignEmpno)
    GetFldVar('S_STRING7'  , sChkyn      );    // 결재여부
    GetFldVar('S_STRING8'  , sEmpnm      );    // 작성자 성명(sInputEmpnm)
    GetFldVar('S_STRING9'  , sWkareanm   );    // 작성부서명
    GetFldVar('S_STRING10' , sMeddept    );    // 간호부서코드
    GetFldVar('S_STRING11' , sMedDeptnm  );    // 부서명(sMeddeptnm)
    GetFldVar('S_STRING12' , sInputid    );    // 작성자(userid)

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 월 근무스케줄 결재 조회(간호부 조회)
// 작성자 : 문태용
// 작성일 : 2005-05-16
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt12: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
  SetFldValue(0,[ssLocate,ssAppdate,ssMkDeptcd,ssDocType]);

  if (txGetF('GA_APROV_L12')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  ,  sStatusW   );    // 사업장 코드

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// 결제 대기 스케줄 List Up(인사부서 기준)
// 작성일 : 2005-03-016
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt14 : Integer;
begin
  Result := -1;
  txAlloc;                //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service입력변수

  SetFldValue(0,[ssLocate,
                 ssEmpno,
                 ssMkYymm,
                 ssDocType,
                 ssinsafirstyn,
                 ssDeptcd]);

  if (txGetF('GA_APROV_L14')) then             // ga_aprov_l14.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성자 근무부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno      );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno   );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn      );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt     );    // 비  고
    GetFldVar('S_STRING11' , sEmpnm      );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING13' , sSchustep   );    // 해당문서의 현재 결재단계
    GetFldVar('S_STRING14' , sDeptgbn    );    // 부서구분
    GetFldVar('S_STRING15' , sInsayn     );    // 총무결재라인 여부
    GetFldVar('S_STRING16' , sCloseYn    );    // 간호 재작성 여부

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// 결제 대기 스케줄 List Up(인사부서 기준)
// 작성일 : 2005-03-016
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListEnd : Integer;
begin
  Result := -1;
  txAlloc;                //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수

  SetFldValue(0,[ssLocate,
                 ssDoctype,
                 ssEmpno,
                 ssinsafirstyn,
                 ssMkYymm]);

  if (txGetF('GA_APROL_L10')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sMkdeptcd   );    // 문서작성일
    GetFldVar('S_STRING3'  , sDeptnm     );    // 작성자 근무부서코드
    GetFldVar('S_STRING4'  , sFlag       );    // 작성자 사번
    GetFldVar('S_STRING5'  , sAprol1     );    // 작성자 근무부서코드
    GetFldVar('S_STRING6'  , sAprol2     );    // 작성자 사번
    GetFldVar('S_STRING7'  , sAppseqno   );    // 작성자 사번



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaAprovt.ListApprovt27 : Integer;  // 결제 대기 문서 List Up
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0,[ssLocate,          // 사업장 코드
                 ssAppdate,         // 문서작성일
                 ssMkdeptcd,        // 작성 부서코드
                 ssMkempno,         // 작성자 사번
                 ssDoctype,         // 문서형태
                 ssAppseqno,        // 작성일련번호
                 ssLoginuser]);     // 로그인한 유저


  if (txGetF('GA_APROV_L27')) then      //ga_aprov_l27.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sSat1       );    // 근태코드
    GetFldVar('S_STRING9'  , sSat2       );    // 근태시작일
    GetFldVar('S_STRING10' , sSat3       );    // 근태종료일
    GetFldVar('S_STRING11' , sSat4       );    // 근태사유
    GetFldVar('S_STRING12' , sSat5       );    // 근태일수
    GetFldVar('S_STRING13' , sMdate1     );    // 반송사유
    GetFldVar('S_STRING14' , sMdate2     );    // 결제완료여부
    GetFldVar('S_STRING15' , sMdate3     );    // 인사팀확인여부
    GetFldVar('S_STRING16' , sMdate4     );    // 인사부서 확인자
    GetFldVar('S_STRING17' , sMdate5     );    // 성명
    GetFldVar('S_STRING18' , sCode1      );    // 직위
    GetFldVar('S_STRING19' , sCode2      );    // 근태명
    GetFldVar('S_STRING20' , sCode3      );    // 부서명
    GetFldVar('S_STRING21' , sCode4      );    // 작성자 이름     추가 김용욱 2005-12-09
    GetFldVar('S_STRING22' , sCode5      );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING23' , sAllconyn   );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING24' , sChkyn      );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING25' , sGenconid   );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING26' , sEmpnm      );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING27' , sJikwe      );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING28' , sDeptnm     );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING29' , sMkempnm    );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING30' , sWkyymm     );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING31' , sCnt        );    // 행정/간호 구분  추가 김용욱 2005-12-23

    GetFldVar('S_STRING32' , sSat6       );    // 근태코드
    GetFldVar('S_STRING33' , sSat7       );    // 근태시작일
    GetFldVar('S_STRING34' , sSat8       );    // 근태종료일
    GetFldVar('S_STRING35' , sSat9       );    // 근태사유
    GetFldVar('S_STRING36' , sSat10      );    // 근태일수
    GetFldVar('S_STRING37' , sMdate6     );    // 반송사유
    GetFldVar('S_STRING38' , sMdate7     );    // 결제완료여부
    GetFldVar('S_STRING39' , sMdate8     );    // 인사팀확인여부
    GetFldVar('S_STRING40' , sMdate9     );    // 인사부서 확인자
    GetFldVar('S_STRING41' , sMdate10    );    // 성명
    GetFldVar('S_STRING42' , sCode6      );    // 직위
    GetFldVar('S_STRING43' , sCode7      );    // 근태명
    GetFldVar('S_STRING44' , sCode8      );    // 부서명
    GetFldVar('S_STRING45' , sCode9      );    // 작성자 이름     추가 김용욱 2005-12-09
    GetFldVar('S_STRING46' , sCode10     );    // 행정/간호 구분  추가 김용욱 2005-12-23

    GetFldVar('S_STRING47' , sReason1      );    // 직위
    GetFldVar('S_STRING48' , sReason2      );    // 근태명
    GetFldVar('S_STRING49' , sReason3      );    // 부서명
    GetFldVar('S_STRING50' , sReason4      );    // 작성자 이름     추가 김용욱 2005-12-09
    GetFldVar('S_STRING51' , sReason5      );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING52' , sReason6      );    // 직위
    GetFldVar('S_STRING53' , sReason7      );    // 근태명
    GetFldVar('S_STRING54' , sReason8      );    // 부서명
    GetFldVar('S_STRING55' , sReason9      );    // 작성자 이름     추가 김용욱 2005-12-09
    GetFldVar('S_STRING56' , sReason10     );    // 행정/간호 구분  추가 김용욱 2005-12-23


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


////////////////////////////////////////////////////////////////////////////////
// 간호부 결재선 정보 Update(인사 확인)
// 작성자 : 문태용
// 작성일 : 2005.05.17
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.UpdateSignlt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
   SetFldValue( 0, [sMkDeptcd,ssMkYymm,sRettxt,sEditid,sEditip,sChkyn]);

  if (txPutF('MN_SIGNL_U1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결제선 전결 처리
// 작성자 : 문 태 용
// 작성일 :
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12'); //service입력변수
   SetFldValue(0, [sLocate,sAppdate,sMkDeptcd,sMkEmpno, sDocType,
                    sAppseqno, sSeqno,sAppempno, sAppyn,sRemtxt,
                    sEditid,sEditip]);

  if (txPutF('GA_APROV_U1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결제선 결제 처리(일별 근태 신청)
//function HgaAprovt.SaveAprovt3(iCnt : Integer) : Integer;  // 결제선 결제 처리
// 작성자 : 문 태 용
// 작성일 : 2005-03
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt4 : Integer;  // 결제선 결제 처리
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'); //service입력변수
    SetFldValue(0,[sLocate,sAppdate,sMkdeptcd,sMkempno, sDoctype,
                    sAppseqno, sSeqno,sAppempno, sAppyn,sRemtxt,
                    sEditid,sEditip,sInsaEmpno,sInsaDpcd,sInsaYn]);

  if (txPutF('GA_APROV_I4')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결재선 저장(근무스케줄)
// 2005-03-21
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt5 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;'); //service입력변수

   SetFldValue(0,[sLocate   ,                  // 사업장
                  sAppdate  ,                  // 문서작성일(실제로 결재요청일이다)
                  sMkdeptcd ,                  // 작성자 근무부서코드
                  sMkempno  ,                  // 작성자 사번
                  sDoctype  ,                  // 문서종류
                  sAppseqno ,                  // 작성일련번호(문서번호)
                  sSeqno    ,                  // 결재순번
                  sAppempno ,                  // 결재자 사번
                  sAppyn    ,                  // 결재구분
                  sRemtxt   ,                  // 비고
                  sEditid   ,                  //
                  sEditip   ,                  //
                  sInsaEmpno,                  // ?
                  sInsaDpcd ,                  // ?
                  sInsaYn   ,                  // 인사부서여부
                  ssMkYymm  ,                  // 근무년월
                  sDeptnm]);                   // 간호부용 부서명

  if (txPutF('GA_APROV_I5')) then   //Tuxedo Service Call
  begin
    Result := 1;
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결제선 결제 처리(일별 특근 신청)
// 작성자 : 문 태 용
// 작성일 : 2005-03
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt6 : Integer;  // 결제선 결제 처리
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'); //service입력변수
   SetFldValue(0,[sLocate  , sAppdate, sMkDeptcd , sMkEmpno , sDocType,
                  sAppseqno, sSeqno  , sAppempno , sAppyn   , sRemtxt ,
                  sEditid  , sEditip , sInsaEmpno, sInsaDpcd, sInsaYn]);

  if (txPutF('GA_APROV_I6')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결제선 결제 처리(월별 근무 스케줄)
// 작성자 : 문 태 용
// 작성일 : 2005-03
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt7 : Integer;  // 결제선 결제 처리
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0, [sLocate              // 01. 사업장
                ,  sAppdate             // 02. 문서작성일
                ,  sMkdeptcd            // 03. 작성 부서코드
                ,  sMkempno             // 04. 작성자 사번
                ,  sDoctype             // 05. 문서형태
                ,  sAppseqno            // 06. 작성일련번호
                ,  sSeqno               // 07. 결재순번
                ,  sAppempno            // 08. 결재자 사번
                ,  sAppyn               // 09. 결재여부
                ,  sRemtxt              // 10. 비고
                ,  sWkyymm              // 11. 근무년월
                ,  sEditid              // 12. 작성자 ID
                ,  sEditip              // 13. 작성자 IP
                ,  sInsayn              // 14. 총무팀결재선 여부
                ,  sRemark              // 15. 간호부서일 경우 문서마스터에 저장할 비고
                ,  sNurseYn             // 16. 간호부문서 여부
                ,  sInsafirstyn         // 17. 총무팀최초결재권자 여부
                  ]);

   if (txPutF('GA_APROV_I7', 300)) then   //Tuxedo Service Call
   begin
      Result := 1;
      txFree;
   end;

end;



function HgaAprovt.SaveAprovt19 : Integer;  // 결제선 결제 처리
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');

   SetFldValue(0, [sLocate              // 01. 사업장
                ,  sMkdeptcd            // 03. 작성 부서코드
                ,  sMkempno             // 04. 작성자 사번
                ,  sDoctype             // 05. 문서형태
                ,  sAppseqno            // 06. 작성일련번호
                ,  sWkyymm              // 11. 근무년월
                ,  sEditid              // 12. 작성자 ID
                ,  sEditip              // 13. 작성자 IP
                ,  sInsafirstyn         // 17. 총무팀최초결재권자 여부
                ,  sMedDeptnm
                  ]);

   if (txPutF('GA_APROV_I19', 300)) then   //Tuxedo Service Call
   begin
      Result := 1;
      txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// 결제선 결제 처리(총무팀 결재선 저장)
// 작성자 : 문 태 용
// 작성일 : 2005-04-26
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt8 : Integer;  // 결제선 결제 처리(월별 근무 스케줄)
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');
   SetFldValue(0,[sLocate,sAppdate,sMkdeptcd,sAppseqno,sMkempno,
                  sDoctype,sEditid,sEditip,sInsaEmpno,sInsaDpcd]);

  if (txPutF('GA_APROV_I8')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// 결제권자 List up
// 작성자 : 문 태 용
// 작성일 : 2005.03.
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.ListApprolt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptcd,ssDoctype,ssEmpno]);

  if (txGetF('GA_APROL_L1')) then              // ga_aprol_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate	   );    // 사업장
    GetFldVar('S_STRING2'  , sEmpno	     );    // 문서작성일
    GetFldVar('S_STRING3'  , sDeptcd	   );    // 부서코드
    GetFldVar('S_STRING4'  , sDoctype	   );    // 문서종류
    GetFldVar('S_STRING5'  , sSeqno	     );    // 결재순번
    GetFldVar('S_STRING6'  , sAppempno	 );    // 결재자 사번
    GetFldVar('S_STRING7'  , sAppempnm	 );    // 결재자 성명
    GetFldVar('S_STRING8'  , sJikwenm	   );    // 직위명
    GetFldVar('S_STRING9'  , sAppdeptcd  );    // 관리부서 부서코드
    GetFldVar('S_STRING10' , sAppdeptnm	 );    // 관리부서 부서이름

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// 결재권자 등록여부 Cnt
// 작성자 : 문태용
// 작성일 : 2005.03.23
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.CntApprolt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   SetFldValue(0,[ssLocate,ssEmpno,ssDocType,ssWkareacd]);

  if (txGetF('GA_APROL_L2')) then      // ga_aprol_l2.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1', sCnt);      // 사업장

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결재권자 저장
// 작성자 : 문태용
// 작성일 : 2005.02.28
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.SaveAprolt(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;'); //service입력변수
   for ii := 0 to iCnt - 1 do
    SetFldValue(ii,[sLocate[ii],sEmpno[ii],sDeptcd[ii],sDocType[ii],sSeqno[ii],
                    sAppempno[ii], sEditid[ii],sEditip[ii],sAppdeptcd[ii]]);

  if (txPutF('GA_APROL_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 결제권자 저장
// 작성자 : 문태용
// 작성일 : 2005.02.28
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.RemoveAprolt(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   for ii := 0 to iCnt - 1 do
    SetFldValue(ii,[sLocate[ii],sEmpno[ii],sDeptcd[ii],sDocType[ii]]);

  if (txPutF('GA_APROL_D1')) then   //Tuxedo Service Call ga_aprol_d1.pc
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// 일별 직원출퇴근 조회
// 작성자 : 최주용
// 작성일 : 2005.04.07
////////////////////////////////////////////////////////////////////////////////
function HgaInoutt.ListDateInout: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
  SetFldValue(0,[sLocate,sDeptcd,sInoutdt]);

  if (txGetF('GA_INOUT_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sJikwe	 );    // 사업장
    GetFldVar('S_STRING2'  , sEmpno	 );    // 사업장
    GetFldVar('S_STRING3'  , sEmpnm	 );    // 사업장
    GetFldVar('S_STRING4'  , sDuty	 );    // 사업장
    GetFldVar('S_STRING5'  , sStm	   );    // 사업장
    GetFldVar('S_STRING6'  , sEtm	   );    // 사업장
    GetFldVar('S_STRING7'  , sDutstm );    // 사업장
    GetFldVar('S_STRING8'  , sDutetm );    // 사업장

    Result := GetRecordCnt('S_STRING1');

    txFree;
  end;
end;

function HgaApoid1.delApoid1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
              'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25');

   SetFldValue(0 ,[sEmpno,sLocate,sApocd,sApodate,sEnddate,
                   sJikjong,sJikgup,sJikmu,sJikchek,sJikwe,
                   sJikgun,sHobong,sDeptcd,sWkareacd,sRemtxt,
                   sEditid,sEditip,sConCurYn,sChoice, sOldKey1,
                   sOldKey2,sCodsrh,sAppotno,sWLocate,sWkplace]);

   if (txPutF('GA_APOID_I12')) then begin //Tuxedo Service Call ga_apoid_i12.pc
      Result := 1;
      txFree;
   end;

end;

function HgaApoid1.updApoid1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
              'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25;'+
              'S_TYPE26;S_TYPE27;S_TYPE28;S_TYPE29;S_TYPE30;'+
              'S_TYPE31;S_TYPE32;S_TYPE33;S_TYPE34;' //20200630 
              );

   SetFldValue(0 ,[sEmpno,sLocate,sApocd,sApodate,sEnddate,
                   sJikjong,sJikgup,sJikmu,sJikchek,sJikwe,
                   sJikgun,sHobong,sDeptcd,sWkareacd,sRemtxt,
                   sEditid,sEditip,sConCurYn,sChoice, sOldKey1,
                   sOldKey2,sCodsrh,sAppotno,sWLocate,sWkplace,
                   sLargcd, sMiddlecd,sSmallcd,sDetailcd,sGubun,
                   sNewGrade,sYeoncha,sSJYeonhan,sPromyear //20200630
                   ]);

   if (txPutF('GA_APOID_I16')) then begin //Tuxedo Service Call ga_apoid_i16.pc
      Result := 1;
      txFree;
   end;

end;

function HgaApoid1.updApoid2: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
              'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25;S_TYPE26;S_TYPE27;S_TYPE28;S_TYPE29;'+
              'S_TYPE30;S_TYPE31;S_TYPE32;S_TYPE33;' //20200630
              );

   SetFldValue(0 ,[sEmpno,sLocate,sApocd,sApodate,sEnddate,
                   sJikjong,sJikgup,sJikmu,sJikchek,sJikwe,
                   sJikgun,sHobong,sDeptcd,sWkareacd,sRemtxt,
                   sEditid,sEditip,sConCurYn,sChoice, sOldKey1,
                   sOldKey2,sCodsrh,sAppotno,sWLocate,sWkplace,
                   sLargcd, sMiddlecd,sSmallcd,sDetailcd,
                   sNewGrade,sYeoncha,sSJYeonhan,sPromyear //20200630
                   ]);


   if (txPutF('GA_APOID_I13')) then begin //Tuxedo Service Call ga_apoid_i13.pc
      Result := 1;
      txFree;
   end;
end;


function HgaTsamtt.SelTsamtt1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[sLocate,sEmpno,sAppldt,sCuryymm,sRemvcnt]);

  if (txPutF('GA_TSAMT_U2')) then   //Tuxedo Service Call ga_tsamt_u2.pc
  begin
     Result := 1;
     txFree;
  end;
end;
function HgaVacamt_up.UpgaVacamt_up: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');

   SetFldValue( 0 ,[sLocate, sBasyy, sAppyymm]);

   //if (txPutF('GA_VACAM_U2', 1800)) then begin //Tuxedo Service Call
   {if (txPutF('GA_VACAM_U2', 1800)) then begin //Tuxedo Service Call ga_vacam_u2.pc
      Result := 1;
      txFree;
   end;}
   // 2016.01.05 김승철 수정 -- GA_VACAM_U2 --> GA_VACAM_U3
   if (txPutF('GA_VACAM_U3', 1800)) then begin //Tuxedo Service Call ga_vacam_u2.pc
      Result := 1;
      txFree;
   end;
end;




function HgaTenuat_1.SelTenuat: integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
  SetFldValue(0,[sEmpno,sLocate,sUsedtyymm]);

  //ga_tenua_l3.pc
  if (txGetF('GA_TENUA_L3')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sTenusdate	);    //
    GetFldVar('S_STRING2'  , sTenutype	);    //
    GetFldVar('S_STRING3'  , sUsedate		);    //
    GetFldVar('S_STRING4'  , sComcdnm		);    //
    GetFldVar('S_STRING5'  , sTenuprnyn	);    //
    GetFldVar('S_STRING6'  , sSubmyn  	);    //
    GetFldVar('S_STRING7'  , sEmpno1    );
    GetFldVar('S_STRING8'  , sEmpnm     );
    GetFldVar('S_STRING9'  , sAppyn     );
    GetFldVar('S_STRING10' , sRowcnt    );
    GetFldVar('S_STRING11' , sResnoyn   );
    GetFldVar('S_STRING12' , sInsayn    );    //20210428 인사결재일자 추가
    GetFldVar('S_STRING13' , sSendyn    );    //20210611 문자전송여부 추가

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaTenuat_1.SelTenuatRow: integer;
begin
  //Empno, Locate, Tenusdate, Tenutype
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
  SetFldValue(0,[sEmpno, sLocate, sTenusdate, sTenutype]);

  if (txGetF('GA_TENUA_L4')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sTenupubno  	);
    GetFldVar('S_STRING2'  , sTenuuse    	);
    GetFldVar('S_STRING3'  , sTenucnt    	);
    GetFldVar('S_STRING4'  , sUsedate    	);
    GetFldVar('S_STRING5'  , sTenuprnyn  	);
    GetFldVar('S_STRING6'  , sPrintdate  	);
    GetFldVar('S_STRING7'  , sJobtype    	);
    GetFldVar('S_STRING8'  , sEngaddr    	);
    GetFldVar('S_STRING9'  , sOffice     	);
    GetFldVar('S_STRING10' , sAppempno   	);
    GetFldVar('S_STRING11' , sAppyn      	);
    GetFldVar('S_STRING12' , sBsasedateto	);
    GetFldVar('S_STRING13' , sBasedatefr 	);
    GetFldVar('S_STRING14' , sInsayn     	);
    GetFldVar('S_STRING15' , sSubmyn     	);
    GetFldVar('S_STRING16' , sRetxt     	);
    GetFldVar('S_STRING17' , sResnoyn    	);
    GetFldVar('S_STRING18' , sPhoneno    	);    //20210609  휴대번호 추가
    Result := GetRecordCnt('S_STRING15');
    txFree;
  end;
end;

function HgaTenuat_1.UpTenuat_Submyn: integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'+
              'S_TYPE5;S_TYPE6;');

   SetFldValue( 0 ,[sEmpno, sLocate, sTenusdate, sTenutype,
                    sEditid, sEditip]);

   if (txPutF('GA_TENUA_U2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;



//==============================================================================
//   해당 스케쥴 문서의 단계
//
//
//==============================================================================

function HgaEtc.GetSchuStep: Integer;
begin

  // 해당 스케쥴 문서의 단계
  // 0 : 저장만 하고 아직 결재요청을 안한 상태
  // 1 : 결재요청만 한 상태 (아직 어느 결재권자도 결재를 하지 않은 상태)
  //
  // 2 : 결재권자가 1명이상 결재를 시행한 상태
  // 3 : 현업결재권자가 해당문서를 반환한 상태
  // 4 : 모든 현업이 결재처리를 한 상태
  //
  // 5 : 인사에서 반환산 상태
  // 9 : 인사에서 최종적으로 결재처리를 한상태
  //     (숫자에 유의 9이다 => 중간에 세부단계가 끼어들어갈 가능성 있으므로.

  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');

  sParam1 := 'SCHU_STEP';

  SetFldValue(0 ,[sParam1,      // 업무구분
                  sParam2,      // 사업장
                  sParam3,      // 근무년월
                  sParam4,      // 작성일련번호(문서번호)
                  sParam5,
                  sParam6,
                  sParam7,
                  sParam8,
                  sParam9,
                  sParam10]);

  if (txGetF('GA_ETC_L1')) then
  begin     //Tuxedo Service Call
     GetFldVar('S_STRING1', sResult);    // 진행단계
     Result := GetRecordCnt('S_STRING1');
     txFree;
  end;


end;

function HgaMdutyt.SelMasterInfo: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ssLocate,               // 사업장코드
                 ssWkyymm,               // 근무년월
                 ssDoctype,              // 문서종류
                 ssAppseqno]);           // 문서번호
  //ga_mduty_l10.pc
  if (txGetF('GA_MDUTY_L10')) then          // ga_mduty_l10.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1',  sLocate   );    // 사업장
    GetFldVar('S_STRING2',  sAppdate  );    // 작성일자
    GetFldVar('S_STRING3',  sAppseqno );    // 문서일련번호
    GetFldVar('S_STRING4',  sMkdeptcd );    // 작성자 근무부서
    GetFldVar('S_STRING5',  sMkempno  );    // 작성자사번
    GetFldVar('S_STRING6',  sDoctype  );    // 문서종류  => 'S' ( W: 근태,  O: 특근,  P: 재증명, S: 스케쥴 )
    GetFldVar('S_STRING7',  sMkyymm   );    // 현재 조회된 문서의 근무년월(작성년월 아님)
    GetFldVar('S_STRING8',  sSchustep );    // 현재 조회된 문서의 단계를 나타낸다.

    GetFldVar('S_STRING9',  sMkdeptnm );    // 작성자 근무부서명
    GetFldVar('S_STRING10', sMkempnm  );    // 작성자명
    GetFldVar('S_STRING11', sRemtxt   );    // 비고


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;



end;

function HgaAprovt.ListApprovt15: Integer;
begin
  Result := -1;
  txAlloc;                //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수

  SetFldValue(0,[ssLocate   ,             // 사업장
                 ssMkYymm   ,             // 근무년월
                 ssDoctype  ,             // 문서구분
                 ssAppseqno]);            // 문서번호

  if (txGetF('GA_APROV_L15')) then        // ga_aprov_l15.pc
  begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sLocate     );    // 사업장 코드
     GetFldVar('S_STRING2'   , sAppdate    );    // 문서작성일
     GetFldVar('S_STRING3'   , sMkdeptcd   );    // 작성자 근무부서코드
     GetFldVar('S_STRING4'   , sMkempno    );    // 작성자 사번
     GetFldVar('S_STRING5'   , sDoctype    );    // 문서형태
     GetFldVar('S_STRING6'   , sAppseqno   );    // 작성일련번호
     GetFldVar('S_STRING7'   , sSeqno      );    // 결재순번
     GetFldVar('S_STRING8'   , sAppempno   );    // 결재자사번
     GetFldVar('S_STRING9'   , sAppyn      );    // 결재여부
     GetFldVar('S_STRING10'  , sRemtxt     );    // 비고
     GetFldVar('S_STRING11'  , sWkyymm     );    // 근무년월
     GetFldVar('S_STRING12'  , sMeddeptnm  );    // 간호부용 부서명
     GetFldVar('S_STRING13'  , sAppempnm   );    // 결재자 성명
     GetFldVar('S_STRING14'  , sMkempnm    );    // 작성자 성명
     GetFldVar('S_STRING15'  , sDeptnm     );    // 부서명
     GetFldVar('S_STRING16'  , sInsayn     );    // 총무결재라인여부

     Result := GetRecordCnt('S_STRING1');
     txFree;
  end;

end;

function HgaMdutyt.SaveDocmat: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');

   SetFldValue(0 , [sLocate   ,     //  1 사업장
                    sMkyymm   ,     //  2 근무년월
                    sDoctype  ,     //  3 문서종류
                    sAppseqno ,     //  4 작성일련번호
                    sDocstep  ,     //  5 문서단계
                    sDeptgbn  ,     //  6 부서구분
                    sRemark   ,     //  7 비고
                    sEditid   ,     //  8 수정자ID
                    sEditip   ,     //  9 수정IP
                    sOldappseqno    // 10 이전문서번호
                    ]);


   //ga_docma_i1.pc
   if (txPutF('GA_DOCMA_I1')) then
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HgaMdutyt.SelExistCount: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ssLocate,               // 사업장코드
                 ssWkyymm,               // 근무년월
                 ssDoctype,              // 근무부서코드
                 ssAppseqno]);           // 현재저장하려는 문서번호

  if (txGetF('GA_DOCMA_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1',  sCount    );    // 현재저장하려는 문서 외의 건수

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaComcd1.InsComcd2: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');

   SetFldValue(0 ,[sLargcd      // 대분류코드
                 , sComcddtl    // 중분류코드
                 , sComcdnm     // 중분류코드명
                 , sCdabbrnm    // 약명
                 , sRemark      // 비고
                 , sEditid
                 , sEditip
                 , sSaveGbn     // 저장구분
                 , sEngcomCdNm  // 20061019 영문명 추가
                 , sCdseqno
                   ]);

   if (txPutF('GA_COMCD_I10')) then begin   //Tuxedo Service Call  ga_comcd_i10.pc
      Result := 1;
      txFree;
   end;

end;

function HgaComcd1.SelComcd2: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0, [ssLocate,          // 사업장
                   ssLargcd] );       // 대분류코드

   if (txGetF('GA_COMCD_L10')) then                  // ga_comcd_l10.pc
   begin     //Tuxedo Service Call
      GetFldVar('S_STRING1'   ,  sComcddtl );        // 중분류코드
      GetFldVar('S_STRING2'   ,  sComcdnm  );        // 코드명
      GetFldVar('S_STRING3'   ,  sCdabbrnm );        // 약명
      GetFldVar('S_STRING4'   ,  sRemark   );        // 비고

      GetFldVar('S_STRING5'   ,  sEngcomCdNm );      // 20061020 영문명 추가
      GetFldVar('S_STRING6'   ,  sCdseqno    );      // 20061020 영문명 추가      


      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;

function HgaMdutyt.IsAppEmp: Boolean;
begin
  Result := False;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ssLocate,               // 사업장
                 ssAppempno,             // 결재자사번
                 ssEmpno,                // 작성자사번
                 ssDoctype]);            // 문서종류

  if (txGetF('GA_APROL_L3')) then
  begin
    GetFldVar('S_STRING1',  sCnt      );    // 건수

    if sCnt[0] = '0' then
       Result := False
    else
       Result := True;

    txFree;
  end;

end;

function HgaMdutyt.IsFirstAppEmp: Boolean;
begin
  Result := False;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ssLocate,               // 사업장
                 ssAppempno,             // 결재자사번
                 ssEmpno,                // 작성자사번
                 ssDoctype]);            // 문서종류

  if (txGetF('GA_APROL_L4')) then        // ga_aprol_l4.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // 건수

    if sCnt[0] = '0' then
       Result := False
    else
       Result := True;

    txFree;
  end;

end;

function HgaMdutyt.IsFirstAppEmp1: Boolean;
begin
  Result := False;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ssLocate,               // 사업장
                 ssAppempno,             // 결재자사번
                 ssEmpno,                // 작성자사번
                 ssDoctype]);            // 문서종류

  if (txGetF('GA_APROL_L7')) then        // ga_aprol_l4.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // 건수

    if sCnt[0] = '0' then
       Result := False
    else
       Result := True;

    txFree;
  end;

end;


function HgaMdutyt.SelMDutyt4: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수

  SetFldValue(0,[ssLocate ,          // 사업장
                 ssEmpno  ,          // 사번
                 ssYYMM   ,          // 근무년월
                 ssDoctype           // 문서종류
                 ]);

  if (txGetF('GA_MDUTY_L11')) then    // ga_mduty_l11.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sCnt    );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaVacamt.SelVacamtEmp: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수

  SetFldValue(0,[ssLocate           // 사업장
               , ssEmpno            // 사번
               , ssYear             // 적용년도
                 ]);

  if (txGetF('GA_VACAM_L4')) then    // ga_vacam_l4.pc
  begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'  , sNewVCnt );
     GetFldVar('S_STRING2'  , sUseVCnt );
     GetFldVar('S_STRING3'  , sRemVCnt );

     Result := GetRecordCnt('S_STRING1');
     txFree;
  end;

end;

function HgaWrksdt.DelGaWrksdt2: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수

  SetFldValue(0,  [sLocate       // 사업장
                 , sAppdate      // 문서작성일
                 , sAppseqno     // 문서번호
                 , sDoctype      // 문서종류
                   ]);

  if (txPutF('GA_WRKSD_D2')) then    // ga_wrksd_d2.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;

  end;

end;

function HgaWrksdt.DelGaSatret: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수

  SetFldValue(0,  [sLocate       // 사업장
                 , sAppdate      // 문서작성일
                 , sAppseqno     // 문서번호
                 , sDoctype      // 문서종류
                   ]);

  if (txPutF('GA_WRKSD_D3')) then    // ga_wrksd_d3.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;

  end;

end;

//2018-08-14 이지윤 추가 특근수당신청
function HgaWrksdt.InsTGsudang(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16;S_TYPE17;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue( ii ,   [sLocate       [ii]     //  1. 사업장
                       ,  sAppDate      [ii]     //  2. 문서작성일
                       ,  sMkdeptcd     [ii]     //  3. 작성부서코드
                       ,  sAppseqno     [ii]     //  4. 문서번호
                       ,  sMkempno      [ii]     //  5. 작성자사번
                       ,  sDoctype      [ii]     //  6. 문서종류 ('Z')
                       ,  sEmpno        [ii]     //  7. 사원번호
                       ,  sTGdate       [ii]     //  8. 특근일자
                       ,  sTGstime      [ii]     //  9. 특근시작시간
                       ,  sResbstm      [ii]     // 10. 특근신청시간
                       ,  sRemtxt       [ii]     // 11. 근태사유
                       ,  sAllconyn     [ii]     // 12. 현업결재구분 (YNR)
                       ,  sChkyn        [ii]     // 13. 인사결재구분 (YNR)
                       ,  sGenconid     [ii]     // 14. 인사부서확인자 ID
                       ,  sEditid       [ii]     // 15. 수정자id
                       ,  sEditip       [ii]     // 16. 수정자ip
                       ,  sSnchngyn     [ii]     // 17. 신청여부
                          ]);
  end;

  if (txPutF('GA_OVERSD_I1')) then    // ga_oversd_i1.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;
  end;
end;

//2018-08-14 이지윤 추가 특근수당신청 내역 조회
function HgaWrksdt.ListTGsudang : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0,[ssLocate,          // 사업장 코드
                 ssAppdate,         // 문서작성일
                 ssMkdeptcd,        // 작성 부서코드
                 ssMkempno,         // 작성자 사번
                 ssDoctype,         // 문서형태
                 ssAppseqno,        // 작성일련번호
                 ssLoginuser]);     // 로그인한 유저


  if (txGetF('GA_OVERSD_L1')) then      //ga_oversd_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sTGdate     );    // 근태코드
    GetFldVar('S_STRING9'  , sTGstime    );    // 근태시작시간
    GetFldVar('S_STRING10' , sResbstm    );    // 근태신청시간 수
    GetFldVar('S_STRING11' , sRettxt     );    // 근태사유
    GetFldVar('S_STRING12' , sAllconyn   );    // 결제완료여부
    GetFldVar('S_STRING13' , sChkyn      );    // 인사팀확인여부
    GetFldVar('S_STRING14' , sGenconid   );    // 인사부서 확인자
    GetFldVar('S_STRING15' , sEmpnm      );    // 사원이름
    GetFldVar('S_STRING16' , sJikwe      );    // 직위
    GetFldVar('S_STRING17' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING18' , sMkempnm    );    // 작성자 이름


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaAprovt.SaveAprovt9: Integer;
var
  Servernm : String;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service입력변수

   SetFldValue(0,[sLocate  ,                  // 사업장
                  sAppdate ,                  // 문서작성일(이전에 저장되어 있는 문서작성일) => Pro*C 에서 시스템 날짜로 UPDATE 된다
                  sMkdeptcd,                  // 작성 부서코드
                  sMkempno ,                  // 작성자 사번(결재요청하는 사원의 사번)
                  sDoctype ,                  // 문서종류
                  sAppseqno,                  // 작성일련번호(문서번호)
                  sAppyn   ,                  // 결재구분
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // 인사결재선 여부 => 신청화면이므로 일반부서의 결재선을 탐
                  sWkareacd]);                // 작성자 근무부서 = 요청자 근무부서

//  GA_APROV_I9
//  GA_APROV_I13

  if (txPutF('GA_APROV_I17')) then   //Tuxedo Service Call
  begin
    Result := 1;
    txFree;
  end;

end;

function HgaAprovt.SaveAprovt15: Integer;
var
  Servernm : String;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service입력변수

   SetFldValue(0,[sLocate  ,                  // 사업장
                  sAppdate ,                  // 문서작성일(이전에 저장되어 있는 문서작성일) => Pro*C 에서 시스템 날짜로 UPDATE 된다
                  sMkdeptcd,                  // 작성 부서코드
                  sMkempno ,                  // 작성자 사번(결재요청하는 사원의 사번)
                  sDoctype ,                  // 문서종류
                  sAppseqno,                  // 작성일련번호(문서번호)
                  sAppyn   ,                  // 결재구분
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // 인사결재선 여부 => 신청화면이므로 일반부서의 결재선을 탐
                  sWkareacd]);                // 작성자 근무부서 = 요청자 근무부서

//  GA_APROV_I9
//  GA_APROV_I13

  if (txPutF('GA_APROV_I15')) then   //Tuxedo Service Call   ga_aprov_i15.pc
  begin
    Result := 1;
    txFree;
  end;

end;




function HgaAprovt.ListApprovt16: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0, [  ssLocate                  // 사업장
                  , ssAppempno                // 결재자 사번
                  , ssDoctype                 // 문서종류
                  , ssSdate                   // 문서작성일(From)
                  , ssEdate                   // 문서작성일(To)
                  , ssinsafirstyn             // 총무팀 최초결재자 여부 'Y', 'N'
                  , ssDeptcd                  // 조회부서
                  ]);

  if (txGetF('GA_APROV_L16')) then              // ga_aprov_l16.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate  );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd );    // 작성부서코드
    GetFldVar('S_STRING4'  , sMkempno  );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype  );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno    );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn    );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt   );    // 비고
    GetFldVar('S_STRING11' , sEmpnm    );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm   );    // 부서명
    GetFldVar('S_STRING13' , sDocstep  );    // 해당문서의 현재 결재단계
    GetFldVar('S_STRING14' , sInsayn   );    // 총무결재라인여부
    GetFldVar('S_STRING15' , sRettxt   );    // 반송사유

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


function HgaAprovt.ListApprovt28: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0, [  ssLocate                  // 사업장
                  , ssAppempno                // 결재자 사번
                  , ssDoctype                 // 문서종류
                  , ssSdate                   // 문서작성일(From)
                  , ssEdate                   // 문서작성일(To)
                  , ssinsafirstyn             // 총무팀 최초결재자 여부 'Y', 'N'
                  , ssDeptcd                  // 조회부서
                  ]);

  if (txGetF('GA_APROV_L28')) then              // ga_aprov_l28.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate  );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd );    // 작성부서코드
    GetFldVar('S_STRING4'  , sMkempno  );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype  );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno    );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn    );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt   );    // 비고
    GetFldVar('S_STRING11' , sEmpnm    );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm   );    // 부서명
    GetFldVar('S_STRING13' , sDocstep  );    // 해당문서의 현재 결재단계
    GetFldVar('S_STRING14' , sInsayn   );    // 총무결재라인여부
    GetFldVar('S_STRING15' , sRettxt   );    // 반송사유

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.ListApprovt29: Integer;
begin
  Result := -1;
  txAlloc;                //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수

  SetFldValue(0,[ssLocate   ,             // 사업장
                 ssAppdate   ,             // 근무년월
                 ssDoctype  ,             // 문서구분
                 ssAppseqno ,
                 ssEmpno    ]);            // 문서번호

  if (txGetF('GA_APROV_L29')) then        // ga_aprov_l15.pc
  begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sAppdate    );    // 사업장 코드
     GetFldVar('S_STRING2'   , sMkempno    );    // 문서작성일
     GetFldVar('S_STRING3'   , sAppseqno   );    // 작성자 근무부서코드
     GetFldVar('S_STRING4'   , sSeqno      );    // 작성자 사번
     GetFldVar('S_STRING5'   , sAppempno   );    // 문서형태
     GetFldVar('S_STRING6'   , sAppyn      );    // 작성일련번호
     GetFldVar('S_STRING7'   , sAppempnm   );    // 결재순번
     GetFldVar('S_STRING8'   , sMkempnm    );    // 결재자사번
     GetFldVar('S_STRING9'   , sEditdate   );    // 결재자사번



     Result := GetRecordCnt('S_STRING1');
     txFree;
  end;

end;


function HgaAprovt.SaveAprovt10: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

{
        GET (S_TYPE1   , 0, sLocate         );      /* 사업장 코드              */
        GET (S_TYPE2   , 0, sAppdate        );      /* 문서작성일               */
        GET (S_TYPE3   , 0, sMkdeptcd       );      /* 작성 부서코드            */
        GET (S_TYPE4   , 0, sMkempno        );      /* 작성자 사번              */
        GET (S_TYPE5   , 0, sDoctype        );      /* 문서형태                 */
        GET (S_TYPE6   , 0, sAppseqno       );      /* 작성일련번호             */
        GET (S_TYPE7   , 0, sSeqno          );      /* 결재순번                 */
        GET (S_TYPE8   , 0, sAppempno       );      /* 결재자 사번              */
        GET (S_TYPE9   , 0, sAppyn          );      /* 결재여부                 */
        GET (S_TYPE10  , 0, sRemtxt         );      /* 비고                     */
        GET (S_TYPE11  , 0, sEditid         );      /* 작성자 ID                */
        GET (S_TYPE12  , 0, sEditip         );      /* 작성자 IP                */
        GET (S_TYPE13  , 0, sInsaEmpno      );      /* 인사부서 사번            */
        GET (S_TYPE14  , 0, sInsaDpcd       );      /* 인사부서 부서코드        */
        GET (S_TYPE15  , 0, sInsayn         );      /* 총무결재라인 여부        */
        GET (S_TYPE16  , 0, sRettxt         );      /* 반환사유                 */
        GET (S_TYPE17  , 0, sInsafirstyn    );      /* 총무팀 최초 결재권자여부 */
}

   SetFldValue(0, [sLocate               // 사업장 코드
                ,  sAppdate              // 문서작성일
                ,  sMkdeptcd             // 작성 부서코드
                ,  sMkempno              // 작성자 사번
                ,  sDoctype              // 문서형태
                ,  sAppseqno             // 작성일련번호
                ,  sSeqno                // 결재순번
                ,  sAppempno             // 결재자 사번
                ,  sAppyn                // 결재여부
                ,  sRemtxt               // 비고
                ,  sEditid               // 작성자 ID
                ,  sEditip               // 작성자 IP
                ,  sInsaEmpno            // 인사부서 사번
                ,  sInsaDpcd             // 인사부서 부서코드
                ,  sInsayn               // 총무결재라인 여부
                ,  sRettxt               // 반환사유
                ,  sInsafirstyn          // 총무팀 최초 결재권자여부
                  ]);

 {   showmessage( sLocate
        + '/' + sAppdate
        + '/' + sMkdeptcd
        + '/' + sMkempno
        + '/' + sDoctype
        + '/' + sAppseqno
        + '/' + sSeqno
        + '/' + sAppempno
        + '/' + sAppyn
        + '/' + sRemtxt
        + '/' + sEditid     
        + '/' + sEditip     
        + '/' + sInsaEmpno
        + '/' + sInsaDpcd
        + '/' + sInsayn
        + '/' + sRettxt
        + '/' + sInsafirstyn );
        }
//GA_APROV_I10 구로직 적용
//GA_APROV_I14 신로직 적용
//GA_APROV_I18 new 적용

   if (txPutF('GA_APROV_I18', 300)) then   //Tuxedo Service Call   ga_aprov_i18.pc
   begin
      Result := 1;
      txFree;
   end;

end;


function HgaAprovt.SaveAprovt16: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0, [sLocate               // 사업장 코드
                ,  sAppdate              // 문서작성일
                ,  sMkdeptcd             // 작성 부서코드
                ,  sMkempno              // 작성자 사번
                ,  sDoctype              // 문서형태
                ,  sAppseqno             // 작성일련번호
                ,  sSeqno                // 결재순번
                ,  sAppempno             // 결재자 사번
                ,  sAppyn                // 결재여부
                ,  sRemtxt               // 비고
                ,  sEditid               // 작성자 ID
                ,  sEditip               // 작성자 IP
                ,  sInsaEmpno            // 인사부서 사번
                ,  sInsaDpcd             // 인사부서 부서코드
                ,  sInsayn               // 총무결재라인 여부
                ,  sRettxt               // 반환사유
                ,  sInsafirstyn          // 총무팀 최초 결재권자여부
                  ]);

//GA_APROV_I10 구로직 적용
//GA_APROV_I14 신로직 적용
   if (txPutF('GA_APROV_I16', 300)) then   //Tuxedo Service Call   ga_aprov_i16.pc
   begin
      Result := 1;
      txFree;
   end;

end;

function HgaAprovt.SaveAprovt17: Integer; // 2020.01.05 오정은 추가. 전공의 근태
begin
 Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;'); //service입력변수

   SetFldValue(0,[sLocate   ,                  // 사업장
                  sAppdate  ,                  // 문서작성일(실제로 결재요청일이다)
                  sMkdeptcd ,                  // 작성자 근무부서코드
                  sMkempno  ,                  // 작성자 사번
                  sDoctype  ,                  // 문서종류
                  sAppseqno ,                  // 작성일련번호(문서번호)
                  sSeqno    ,                  // 결재순번
                  sAppempno ,                  // 결재자 사번
                  sAppyn    ,                  // 결재구분
                  sRemtxt   ,                  // 비고
                  sEditid   ,                  //
                  sEditip   ,                  //
                  sInsaEmpno,                  // ?
                  sInsaDpcd ,                  // ?
                  sInsaYn   ,                  // 인사부서여부
                  ssMkYymm  ,                  // 근무년월
                  sDeptnm]);                   // 간호부용 부서명

  //ga_aprov_i17.pc
  if (txPutF('GA_APROV_I17')) then   //Tuxedo Service Call ga_aprov_i17.pc
  begin
    Result := 1;
    txFree;
  end;
end;

function HgaOverddt.DelOverddt2: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수

  SetFldValue(0,  [sLocate       // 사업장
                 , sAppdate      // 문서작성일
                 , sAppseqno     // 문서번호
                 , sDoctype      // 문서종류
                   ]);

  if (txPutF('GA_OVEDT_D3')) then    // ga_ovedt_d3.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;
  end;

end;

function HgaOverddt.InsOveddt2(iCnt: Integer): Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer를 받아옴.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;' +
             'S_TYPE21;S_TYPE22;S_TYPE23');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [sLocate     [ii]     //  1. 사업장 코드
                       ,  sAppdate    [ii]     //  2. 작성일자
                       ,  sMkdeptcd   [ii]     //  3. 작성부서
                       ,  sAppseqno   [ii]     //  4. 작성 일련번호
                       ,  sMkempno    [ii]     //  5. 작성자 사번
                       ,  sDoctype    [ii]     //  6. 문서종류 ('O')
                       ,  sEmpno      [ii]     //  7. 사원번호
                       ,  sWkdate     [ii]     //  8. 특근일자
                       ,  sWkstime    [ii]     //  9. 특근 시작시간
                       ,  sWketime    [ii]     // 10. 특근 종료시간
                       ,  sWeekCnt    [ii]     // 11. 주차
                       ,  sCnt        [ii]     // 12. 특근시간수
                       ,  sCntOvr     [ii]     // 13. 시간외
                       ,  sCntNig     [ii]     // 14. 심야
                       ,  sRemtxt     [ii]     // 15. 특근사유
                       ,  sRettxt     [ii]     // 16. 반환사유
                       ,  sAllconyn   [ii]     // 17. 현업결재완료 여부 (YNR)
                       ,  sChkyn      [ii]     // 18. 인사결재완료 여부 (YNR)
                       ,  sGenconid   [ii]     // 19. 인사부서 확인자 사번
                       ,  sEditid     [ii]     // 20.
                       ,  sEditip     [ii]     // 21.
                       ,  sOldappdate [ii]     // 22. 이전작성일자
                       ,  sZyn        [ii]     // 23. 보상휴가 여부
                          ]);

  end;

  if (txPutF32('GA_OVEDT_I4')) then    // ga_ovedt_i4.pc
  begin
     Result := 1;
     txFree32;
  end;
end;

function HgaOverddt.ListOveddt6: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_OVEDT_L6')) then              // ga_ovedt_l6.pc
  begin
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sEmpnm      );    // 작성자 성명
    GetFldVar('S_STRING8'  , sDeptnm     );    // 부서명
    GetFldVar('S_STRING9'  , sRettxt     );    // 반송사유
    GetFldVar('S_STRING10' , sDocstep    );    // 문서단계

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaOverddt.ListOveddt7: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0,[ssLocate,          // 사업장 코드
                 ssAppdate,         // 문서작성일
                 ssMkdeptcd,        // 작성 부서코드
                 ssMkempno,         // 작성자 사번
                 ssDoctype,         // 문서형태
                 ssAppseqno,        // 작성일련번호
                 ssLoginuser]);     // 로그인한 유저


  if (txGetF('GA_OVEDT_L7')) then              // ga_ovedt_l7.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sWkdate     );    // 특근일자
    GetFldVar('S_STRING9'  , sWketime    );    // 특근시작시간
    GetFldVar('S_STRING10' , sWkstime    );    // 특근종료시간
    GetFldVar('S_STRING11' , sWeekcnt    );    // 주차
    GetFldVar('S_STRING12' , sCnt        );    // 특근시간수
    GetFldVar('S_STRING13' , sCntovr     );    // 시간외
    GetFldVar('S_STRING14' , sCntnig     );    // 심야
    GetFldVar('S_STRING15' , sRemtxt     );    // 특근사유
    GetFldVar('S_STRING16' , sRettxt     );    // 반송사유
    GetFldVar('S_STRING17' , sAllconyn   );    // 결제완료여부
    GetFldVar('S_STRING18' , sChkyn      );    // 인사팀확인여부
    GetFldVar('S_STRING19' , sGenconid   );    // 인사부서 확인자
    GetFldVar('S_STRING20' , sEmpnm      );    // 성명
    GetFldVar('S_STRING21' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING22' , sMkempnm    );    // 작성자 이름
    GetFldVar('S_STRING23' , sZyn        );    // 보상휴가 여부 2018-07-13 이지윤 추가

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.SaveAprovt11: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service입력변수

   SetFldValue(0,[sLocate  ,                  // 사업장
                  sAppdate ,                  // 문서작성일(이전에 저장되어 있는 문서작성일) => Pro*C 에서 시스템 날짜로 UPDATE 된다
                  sMkdeptcd,                  // 작성 부서코드
                  sMkempno ,                  // 작성자 사번(결재요청하는 사원의 사번)
                  sDoctype ,                  // 문서종류
                  sAppseqno,                  // 작성일련번호(문서번호)
                  sAppyn   ,                  // 결재구분
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // 인사결재선 여부 => 신청화면이므로 일반부서의 결재선을 탐
                  sWkareacd]);                // 작성자 근무부서 = 요청자 근무부서

   if (txPutF('GA_APROV_I11')) then   //Tuxedo Service Call    ga_aprov_i11.pc
   begin
      Result := 1;
      txFree;
   end;

end;

function HgaAprovt.ListApprovt17: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0, [  ssLocate                  // 사업장
                  , ssAppempno                // 결재자 사번
                  , ssDoctype                 // 문서종류
                  , ssSdate                   // 문서작성일(From)
                  , ssEdate                   // 문서작성일(To)
                  , ssinsafirstyn             // 총무팀 최초결재자 여부 'Y', 'N'
                  , ssDeptcd                  // 조회부서
                  ]);


  if (txGetF('GA_APROV_L17')) then              // ga_aprov_l17.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate  );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd );    // 작성부서코드
    GetFldVar('S_STRING4'  , sMkempno  );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype  );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno    );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn    );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt   );    // 비고
    GetFldVar('S_STRING11' , sEmpnm    );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm   );    // 부서명
    GetFldVar('S_STRING13' , sDocstep  );    // 해당문서의 현재 결재단계
    GetFldVar('S_STRING14' , sInsayn   );    // 총무결재라인여부
    GetFldVar('S_STRING15' , sRettxt   );    // 반송사유
    GetFldVar('S_STRING16' , sEditdate );    // 반송사유
    GetFldVar('S_STRING17' , sAppinfo  );    // 반송사유



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.SaveAprovt12: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;');


   SetFldValue(0, [sLocate               // 사업장 코드
                ,  sAppdate              // 문서작성일
                ,  sMkdeptcd             // 작성 부서코드
                ,  sMkempno              // 작성자 사번
                ,  sDoctype              // 문서형태
                ,  sAppseqno             // 작성일련번호
                ,  sSeqno                // 결재순번
                ,  sAppempno             // 결재자 사번
                ,  sAppyn                // 결재여부
                ,  sRemtxt               // 비고
                ,  sEditid               // 작성자 ID
                ,  sEditip               // 작성자 IP
                ,  sInsayn               // 총무결재라인 여부
                ,  sRettxt               // 반송사유
                ,  sInsafirstyn          // 총무팀 최초 결재권자여부
                  ]);

   if (txPutF('GA_APROV_I12', 300)) then   //Tuxedo Service Call   ga_aprov_i12.pc
   begin
      Result := 1;
      txFree;
   end;

end;

function HgaInsamt.ListGaInsamt4: integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

   SetFldValue(0,[ssLocate        // 사업장
                , ssWkareacd
                , ssSdate
                , ssEdate] );   // 근무부서코드

   if (txGetF('GA_INSAM_L4')) then begin         // Tuxedo Service Call ga_insam_l4.pc
      GetFldVar('S_STRING1'  , sLocate     );    //  1  사업장
      GetFldVar('S_STRING2'  , sEmpno      );    //  2  사번
      GetFldVar('S_STRING3'  , sEmpnm      );    //  3  성명
      GetFldVar('S_STRING4'  , sDeptcd     );    //  4  부서코드
      GetFldVar('S_STRING5'  , sDeptnm     );    //  5  부서명
      GetFldVar('S_STRING6'  , sWkareacd   );    //  6  근무부서코드
      GetFldVar('S_STRING7'  , sWkareanm   );    //  7  근무부서명
      GetFldVar('S_STRING8'  , sJikwe      );    //  8  직위코드
      GetFldVar('S_STRING9'  , sJikwenm    );    //  9  직위명
      GetFldVar('S_STRING10' , sHobong     );    //  10 호봉
      GetFldVar('S_STRING11' , sResno      );    //  11 주민번호
      GetFldVar('S_STRING12' , sSexcd      );    //  12 성별
      GetFldVar('S_STRING13' , sEntdt      );    //  13 입사일
      GetFldVar('S_STRING14' , sRetdt      );    //  14 퇴사일

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;


function HgaComcd1.DelComcd2: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0 ,[sLargcd      // 대분류코드
                 , sComcddtl    // 중분류코드
                   ]);

   if (txPutF('GA_COMCD_D1')) then begin   //Tuxedo Service Call  ga_comcd_d1.pc
      Result := 1;
      txFree;
   end;

end;

function HgaOverddt.UpdateOverddt5: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;');

{
        GET (S_TYPE1  ,  0, sLocate  );           /* 사업장 코드              */
        GET (S_TYPE2  ,  0, sAppdate );           /* 작성일자                 */
        GET (S_TYPE3  ,  0, sAppseqno);           /* 작성 일련번호            */
        GET (S_TYPE4  ,  0, sDoctype );           /* 문서종류 ('O')           */
        GET (S_TYPE5  ,  0, sEmpno   );           /* 사원번호                 */
        GET (S_TYPE6  ,  0, sWkdate  );           /* 특근일자                 */
        GET (S_TYPE7  ,  0, sWkstime );           /* 특근 시작시간            */
        GET (S_TYPE8  ,  0, sWketime );           /* 특근 종료시간            */
        GET (S_TYPE9  ,  0, sCnt     );           /* 특근시간수               */
        GET (S_TYPE10 ,  0, sCntovr  );           /* 시간외                   */
        GET (S_TYPE11 ,  0, sCntnig  );           /* 심야                     */
        GET (S_TYPE12 ,  0, sEditid  );
        GET (S_TYPE13 ,  0, sEditip  );

        GET (S_TYPE14 ,  0, sOldWkstime);         /* 수정전 특근 시작시간      */
        GET (S_TYPE15 ,  0, sOldWketime);         /* 수정전 특근 종료시간      */
}

  SetFldValue(0,  [sLocate             // 사업장 코드
                 , sAppdate            // 작성일자
                 , sAppseqno           // 작성 일련번호
                 , sDoctype            // 문서종류 ('O')
                 , sEmpno              // 사원번호
                 , sWkdate             // 특근일자
                 , sWkstime            // 특근 시작시간
                 , sWketime            // 특근 종료시간
                 , sCnt                // 특근시간수
                 , sCntovr             // 시간외
                 , sCntnig             // 심야
                 , sEditid
                 , sEditip
                 , sOldWkstime         // 수정전 특근 시작시간
                 , sOldWketime         // 수정전 특근 종료시간
                   ]);

  if (txPutF('GA_OVEDT_I5')) then    // ga_ovedt_i5.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;
  end;

end;

function HgaWrksdt.UpdGaWrksdt5: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;');

{
        GET (S_TYPE1  ,  0, sLocate      );           /* 사업장 코드              */
        GET (S_TYPE2  ,  0, sAppdate     );           /* 작성일자                 */
        GET (S_TYPE3  ,  0, sAppseqno    );           /* 작성 일련번호            */
        GET (S_TYPE4  ,  0, sDoctype     );           /* 문서종류 ('W')           */
        GET (S_TYPE5  ,  0, sEmpno       );           /* 사원번호                 */
        GET (S_TYPE6  ,  0, sRefwkcd     );           /* 근태코드                 */
        GET (S_TYPE7  ,  0, sWksdate     );           /* 근태시작일               */
        GET (S_TYPE8  ,  0, sWkedate     );           /* 근태종료일               */
        GET (S_TYPE9  ,  0, sEditid      );           /*                          */
        GET (S_TYPE10 ,  0, sEditip      );           /*                          */

        GET (S_TYPE11 ,  0, sOldRefwkcd  );           /* 수정전 근태코드          */
        GET (S_TYPE12 ,  0, sOldWksdate  );           /* 수정전 근태시작일        */
        GET (S_TYPE13 ,  0, sOldWkedate  );           /* 수정전 근태종료일        */
}

  SetFldValue(0,  [sLocate              // 사업장 코드
                 , sAppdate             // 작성일자
                 , sAppseqno            // 작성 일련번호
                 , sDoctype             // 문서종류 ('W')
                 , sEmpno               // 사원번호
                 , sRefwkcd             // 근태코드
                 , sWksdate             // 근태시작일
                 , sWkedate             // 근태종료일
                 , sEditid              //
                 , sEditip              //
                 , sOldRefwkcd          // 수정전 근태코드
                 , sOldWksdate          // 수정전 근태시작일
                 , sOldWkedate          // 수정전 근태종료일
                   ]);

  if (txPutF('GA_WRKSD_I5')) then    // ga_wrksd_i5.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;
  end;

end;

function HgaOverddt.ListOveddt8: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'); //service입력변수

  SetFldValue(0,[ssLocate          // 사업장 코드
               , ssDoctype         // 문서형태
               , ssEmpno           // 특근자사번
               , ssSDate           // 특근일 From
               , ssEDate           // 특근일 To
                 ]);

{
                PUT (S_STRING1  , iy, sLocate    [iy] );     /* 사업장 코드     */
                PUT (S_STRING2  , iy, sAppdate   [iy] );     /* 문서작성일      */
                PUT (S_STRING3  , iy, sMkdeptcd  [iy] );     /* 작성 부서코드   */
                PUT (S_STRING4  , iy, sAppseqno  [iy] );     /* 작성일련번호    */
                PUT (S_STRING5  , iy, sMkempno   [iy] );     /* 작성자 사번     */
                PUT (S_STRING6  , iy, sDoctype   [iy] );     /* 문서형태        */
                PUT (S_STRING7  , iy, sEmpno     [iy] );     /* 사원번호        */
                PUT (S_STRING8  , iy, sWkdate    [iy] );     /* 특근일자        */
                PUT (S_STRING9  , iy, sWketime   [iy] );     /* 특근시작시간    */
                PUT (S_STRING10 , iy, sWkstime   [iy] );     /* 특근종료시간    */
                PUT (S_STRING11 , iy, sWeekcnt   [iy] );     /* 주차            */
                PUT (S_STRING12 , iy, sCnt       [iy] );     /* 특근시간수      */
                PUT (S_STRING13 , iy, sCntovr    [iy] );     /* 시간외          */
                PUT (S_STRING14 , iy, sCntnig    [iy] );     /* 심야            */
                PUT (S_STRING15 , iy, sRemtxt    [iy] );     /* 특근사유        */
                PUT (S_STRING16 , iy, sRettxt    [iy] );     /* 반송사유        */
                PUT (S_STRING17 , iy, sAllconyn  [iy] );     /* 결제완료여부    */
                PUT (S_STRING18 , iy, sChkyn     [iy] );     /* 인사팀확인여부  */
                PUT (S_STRING19 , iy, sGenconid  [iy] );     /* 인사부서 확인자 */
                PUT (S_STRING20 , iy, sEmpnm     [iy] );     /* 성명            */
                PUT (S_STRING21 , iy, sDeptnm    [iy] );     /* 부서명          */
                PUT (S_STRING22 , iy, sMkempnm   [iy] );     /* 작성자 이름     */
}

  if (txGetF('GA_OVEDT_L8')) then              // ga_ovedt_l8.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sWkdate     );    // 특근일자
    GetFldVar('S_STRING9'  , sWketime    );    // 특근시작시간
    GetFldVar('S_STRING10' , sWkstime    );    // 특근종료시간
    GetFldVar('S_STRING11' , sWeekcnt    );    // 주차
    GetFldVar('S_STRING12' , sCnt        );    // 특근시간수
    GetFldVar('S_STRING13' , sCntovr     );    // 시간외
    GetFldVar('S_STRING14' , sCntnig     );    // 심야
    GetFldVar('S_STRING15' , sRemtxt     );    // 특근사유
    GetFldVar('S_STRING16' , sRettxt     );    // 반송사유
    GetFldVar('S_STRING17' , sAllconyn   );    // 결제완료여부
    GetFldVar('S_STRING18' , sChkyn      );    // 인사팀확인여부
    GetFldVar('S_STRING19' , sGenconid   );    // 인사부서 확인자
    GetFldVar('S_STRING20' , sEmpnm      );    // 성명
    GetFldVar('S_STRING21' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING22' , sMkempnm    );    // 작성자 이름

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaVacamt.SelVacamtEmp2: Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue32(0,[ssLocate     // 사업장
                  , ssEmpno      // 사원번호
                  , ssSDate      // 검색시작일
                  , ssEDate      // 검색종료일
                  , ssGrade      //등급
                   ]);


   if (txGetF32('GA_VACAM_L5')) then             // ga_vacam_l5.pc
   begin
      GetFldVar32('S_STRING1'   , sDutydate );    // 근무일자
      GetFldVar32('S_STRING2'   , sDuty     );    // 근무코드
      GetFldVar32('S_STRING3'   , sAppseqno );    // 문서번호
      GetFldVar32('S_STRING4'   , sRemtxt   );    // 근태사유
      GetFldVar32('S_STRING5'   , sUsevcnt  );    // 사용된 연차일수
      GetFldVar32('S_STRING6'   , sWrktnm   );    // 근태명

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;

function HgaOverddt.ListOveddt9: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service입력변수

  SetFldValue(0,[ssLocate          // 사업장 코드
               , ssEmpno           // 특근자사번
               , ssSDate           // 특근일 From
               , ssEDate           // 특근일 To
               , ssWkareacd
                 ]);

  if (txGetF('GA_OVEDT_L9')) then              // ga_ovedt_l9.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate    );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate   );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd  );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno  );    // 작성일련번호  
    GetFldVar('S_STRING5'  , sMkempno   );    // 작성자 사번
    GetFldVar('S_STRING6'  , sEmpno     );    // 사원번호
    GetFldVar('S_STRING7'  , sWkdate    );    // 특근일자
    GetFldVar('S_STRING8'  , sWkstime   );    // 특근시작시간
    GetFldVar('S_STRING9'  , sWketime   );    // 특근종료시간
    GetFldVar('S_STRING10' , sWeekcnt   );    // 주차
    GetFldVar('S_STRING11' , sCnt       );    // 특근시간수
    GetFldVar('S_STRING12' , sCntovr    );    // 시간외
    GetFldVar('S_STRING13' , sCntnig    );    // 심야
    GetFldVar('S_STRING14' , sRemtxt    );    // 특근사유
    GetFldVar('S_STRING15' , sRettxt    );    // 반송사유
    GetFldVar('S_STRING16' , sAllconyn  );    // 결제완료여부
    GetFldVar('S_STRING17' , sChkyn     );    // 인사팀확인여부
    GetFldVar('S_STRING18' , sEmpnm     );    // 성명          
    GetFldVar('S_STRING19' , sDeptnm    );    // 부서명        
    GetFldVar('S_STRING20' , sMkempnm   );    // 작성자 이름
    GetFldVar('S_STRING21' , sCompayt   );    // 작성자 이름
    GetFldVar('S_STRING22' , sAmt   );    // 작성자 이름



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaVacamt.SelVacamt: Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue32(0,[ssLocate     // 사업장
                  , ssYear       // 년도
                  , ssEmpno      // 사원번호
                   ]);
{
        PUT (S_STRING1   , 0, sNewvcnt   [0]);    /* 총발생연차        */
        PUT (S_STRING2   , 0, sUsevcnt   [0]);    /* 총사용연차        */
        PUT (S_STRING3   , 0, sRemvcnt   [0]);    /* 총잔여연차        */
}

   if (txGetF32('GA_VACAM_L6')) then             // ga_vacam_l6.pc
   begin
      GetFldVar32('S_STRING1'   , sNewvcnt );    // 총발생연차
      GetFldVar32('S_STRING2'   , sUsevcnt );    // 총사용연차
      GetFldVar32('S_STRING3'   , sRemvcnt );    // 총잔여연차

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;

function HgaInsamt.ListGaInsamt5: integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0,[ssLocate,        // 사업장
                  ssWkareacd] );   // 근무부서코드

{
        asciz10 sEmpno     [MAXROWCNT];  /* 사원번호          */
        asciz30 sEmpnm     [MAXROWCNT];  /* 사원명            */
        asciz30 sJikwenm   [MAXROWCNT];  /* 직위명            */
        asciz10 sHobong    [MAXROWCNT];  /* 호봉              */
        asciz10 sEntdt     [MAXROWCNT];  /* 입사일자          */
        asciz10 sCdprtseq  [MAXROWCNT];  /* 직위정렬순서      */
        asciz10 sSortindex [MAXROWCNT];  /* 부서내 정렬순서   */
}

   if (txGetF('GA_INSAM_L5')) then begin        // Tuxedo Service Call ga_insam_l5.pc
      GetFldVar('S_STRING1'  , sEmpno     );    // 사원번호
      GetFldVar('S_STRING2'  , sEmpnm     );    // 사원명
      GetFldVar('S_STRING3'  , sJikwenm   );    // 직위명
      GetFldVar('S_STRING4'  , sHobong    );    // 호봉
      GetFldVar('S_STRING5'  , sEntdt     );    // 입사일자
      GetFldVar('S_STRING6'  , sCdprtseq  );    // 직위정렬순서
      GetFldVar('S_STRING7'  , sSortseq   );    // 부서내 정렬순서
      GetFldVar('S_STRING8'  , sWkareacd  );    // 근무부서코드

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;


function HgaInsamt.SaveGaInsamt3(iCnt :Integer) :Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

  for i :=0 to iCnt - 1 do
  begin
     SetFldValue(i , [sLocate   [i]  // 사업장
                    , sWkareacd [i]  // 근무부서코드
                    , sEmpno    [i]  // 사번
                    , sSortseq  [i]  // 부서내 정렬순서
                    , sEditid   [i]  //
                    , sEditip   [i]  //
                      ]);
  end;

  if (txPutF('GA_INSAM_I3')) then    // ga_insam_i3.pc
  begin
    Result := 1;
    txFree;
  end;

end;

//20060923
function HgaInsamt.SaveGaInsamt4: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.


   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8');

   SetFldValue(0 ,[sEmpno,sLocate,sDeptcd,sType1,sType2,sEditid,sEditip,sType3]);


//   SetFldName('S_TYPE1;S_TYPE2');
//   SetFldValue(0 ,[sEmpno,sDeptjang]);

   if (txPutF('GA_INSAM_I4')) then begin   // ga_insam_i4.pc
      Result := 1;
      txFree;
   end;

end;

function HgaInsamt.ListgaInsamt7: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');

   SetFldValue(0,[sType1,                               // 사업장
                  sType2,                               // 부서구분
                  sType3                               // 부서
                  ]);

   if (txGetF('GA_INSAM_L6')) then begin                // Tuxedo Service Call ga_insam_l6.pc
      GetFldVar('S_STRING1'  , sEmpno             );    // 사번
      GetFldVar('S_STRING2'  , sEmpnm             );    // 성명
      GetFldVar('S_STRING3'  , sResno             );    // 주민번호
      GetFldVar('S_STRING4'  , sEntdt             );    // 입사일
      GetFldVar('S_STRING5'  , sRetdt             );    // 퇴사일
      GetFldVar('S_STRING6'  , sDeptnm            );    // 근무부서
      GetFldVar('S_STRING7'  , sJikjongnm         );    // 직종
      GetFldVar('S_STRING8'  , sJikwenm           );    // 직위
      GetFldVar('S_STRING9'  , sSexcd             );    // 성별

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

////////////////////////////////////////
//  다운로드 받을 화일 리스트를 조회 한다. 20060928
////////////////////////////////////////
function HgaUpLoad.DeleteUpLoadFile(iCnt: Integer): Integer;
var
    idx : Integer;
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx , [sFileGbn  [idx]  // 총무서식 1, 관리서식 2
                        ,  sFileName [idx]  // 파일명
                        ,  sEditid   [idx]  //
                        ,  sEditip   [idx]  //
                        ,  sEditip   [idx]  //
                        ,  sEditip   [idx]  //                                                
                        
                        ]);
    end;

    if (txPutF('GA_FLOAD_D1')) then
    begin   // ga_fload_d1.pc
        Result := 1;
        txFree;
    end;
end;

function HgaUpLoad.DownLoadListGn: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

   SetFldValue(0,[sType1,SType2,SType3,SType4]);

   if (txGetF('GA_FLOAD_L2')) then begin        // Tuxedo Service Call ga_fload_l1.pc
      GetFldVar('S_STRING1'  , sFileGbn   );    // 총무서식 1, 관리서식 2
      GetFldVar('S_STRING2'  , sFileName  );    // 파일명
      GetFldVar('S_STRING3'  , sMkdate    );    // 파일명
      GetFldVar('S_STRING4'  , sDocno  );    // 파일명            

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function HgaUpLoad.SaveUpLoadFilefn(iCnt: Integer): Integer;
var
    idx : Integer;
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx ,[sFileGbn  [idx]  // 총무서식 1, 관리서식 2
                        , sFileName [idx]  // 파일명
                        , sEditid   [idx]  //
                        , sEditip   [idx]  //
                        , sMkdate   [idx]
                        , sDocno    [idx]]);
    end;
    if (txPutF('GA_FLOAD_I2')) then
    begin   // ga_fload_i1.pc
        Result := 1;
        txFree;
    end;
end;

////////////////////////////////////////
//  다운로드 받을 화일 리스트를 조회 한다. 20060928
////////////////////////////////////////
function HgaUpLoad.DownLoadList: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0,[sType1,SType2]);

   if (txGetF('GA_FLOAD_L1')) then begin        // Tuxedo Service Call ga_fload_l1.pc
      GetFldVar('S_STRING1'  , sFileGbn   );    // 총무서식 1, 관리서식 2
      GetFldVar('S_STRING2'  , sFileName  );    // 파일명

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

////////////////////////////////////////
//  업로드 할 파일을 테이블에 저장한다.  20060928
////////////////////////////////////////
function HgaUpLoad.SaveUpLoadFile(iCnt : Integer) :Integer;
var
    idx : Integer;
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx , [sFileGbn  [idx]  // 총무서식 1, 관리서식 2
                        ,  sFileName [idx]  // 파일명
                        ,  sEditid   [idx]  //
                        ,  sEditip   [idx]  //
                        ]);
    end;

    if (txPutF('GA_FLOAD_I1')) then
    begin   // ga_fload_i1.pc
        Result := 1;
        txFree;
    end;
end;

{ HgaRetList }

////////////////////////////////////////
//  파견직 퇴직률.  20060929
////////////////////////////////////////
function HgaRetList.DataList: Integer;
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');

    SetFldValue(0,[sLocate,sYear,sJikmu]);

    if (txGetF('GA_INSAMT_L23')) then
    begin                // Tuxedo Service Call ga_insamt_l23.pc
        GetFldVar('S_STRING1' , sYearMon  );
        GetFldVar('S_STRING2' , sEntCnt1  );
        GetFldVar('S_STRING3' , sRetCnt1  );
        GetFldVar('S_STRING4' , sMonTot1  );
        GetFldVar('S_STRING5' , sMonCnt1  );
        GetFldVar('S_STRING6' , sMonPer1  );
        GetFldVar('S_STRING7' , sEntCnt2  );
        GetFldVar('S_STRING8' , sRetCnt2  );
        GetFldVar('S_STRING9' , sMonTot2  );
        GetFldVar('S_STRING10', sMonCnt2  );
        GetFldVar('S_STRING11', sMonPer2  );
        GetFldVar('S_STRING12', sEntCnt3  );
        GetFldVar('S_STRING13', sRetCnt3  );
        GetFldVar('S_STRING14', sMonTot3  );
        GetFldVar('S_STRING15', sMonCnt3  );
        GetFldVar('S_STRING16', sMonPer3  );
        GetFldVar('S_STRING17', sEntCnt4  );
        GetFldVar('S_STRING18', sRetCnt4  );
        GetFldVar('S_STRING19', sMonTot4  );
        GetFldVar('S_STRING20', sMonCnt4  );
        GetFldVar('S_STRING21', sMonPer4  );
        GetFldVar('S_STRING22', sEntCntSum);
        GetFldVar('S_STRING23', sRetCntSum);
        GetFldVar('S_STRING24', sMonTotSum);
        GetFldVar('S_STRING25', sMonCntSum);
        GetFldVar('S_STRING26', sMonPerSum);

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;

//근무평점점수 조회 화면 20061001
function HgaWkrank.ListGawkrank: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1'); //service입력변수
   SetFldValue(0,[sYear]);

   //ga_insamt_l2.pc
   if (txGetF('GA_WRANK_L2')) then begin //Tuxedo Service Call ga_wrank_l2.pc

      GetFldVar('S_STRING1' , sWkyear );    // 연도
      GetFldVar('S_STRING2' , sDeptnm );    // 소속부서
      GetFldVar('S_STRING3' , sWkareanm );  // 근무부서
      GetFldVar('S_STRING4' , sEmpno );     // 사원번호
      GetFldVar('S_STRING5' , sEmpnm );     // 성  명
      GetFldVar('S_STRING6' , sNum );       // 본인평점
      GetFldVar('S_STRING7' , sNum1 );      // 1차평가자
      GetFldVar('S_STRING8' , sNum2 );      // 2차평가자
      GetFldVar('S_STRING9' , sNum3 );      // 3차평가자
      GetFldVar('S_STRING10', sNum4 );      // 4차평가자
      GetFldVar('S_STRING11', sAvg );       // 평균

      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;
end;

//근무평점점수, 독서통신점수 조회 화면 수정  20061117 여경구
function HgaWkrank.ListGawkrankGaeducdt: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate,sYear,sGbgubun]);

   // ga_wrank_l3.pc
   if (txGetF('GA_WRANK_L3')) then begin //Tuxedo Service Call ga_wrank_l3.pc

      GetFldVar('S_STRING1' , sDeptnm );      // 소속부서
      GetFldVar('S_STRING2' , sWkareanm );    // 근무부서
      GetFldVar('S_STRING3' , sEmpno );       // 사원번호
      GetFldVar('S_STRING4' , sEmpnm );       // 성  명
      GetFldVar('S_STRING5' , sComcdnm );     // 현직위  2006.11.30
      GetFldVar('S_STRING6' , sApodate );     // 현직위의 발령일 2006.11.30
      GetFldVar('S_STRING7' , sWkpoint2 );    // 2년전 근무평점
      GetFldVar('S_STRING8' , sWkpoint1 );    // 1년전 근무평점
      GetFldVar('S_STRING9' , sWkpoint0 );    // 올해 근무평점
      GetFldVar('S_STRING10' , sWkavg );      // 평균 근무평점
      GetFldVar('S_STRING11' , sEdupoint2 );  // 2년전 통신점수
      GetFldVar('S_STRING12', sEdupoint1 );   // 1년전 통신점수
      GetFldVar('S_STRING13', sEdupoint0 );   // 올해 통신점수
      GetFldVar('S_STRING14', sEduavg );      // 평균 통신점수
      GetFldVar('S_STRING15', sEduyn );       // 승진자격시험 이수여부
      
      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;
end;



function HgaWMdutyt.SelMDutytholy: Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');  // service입력변수
   SetFldValue(0,[ssLocate, ssYYMM]);
                       
   if (txGetF('GA_MDUTY_L12')) then
   begin
      GetFldVar('S_STRING1' , sSunCnt  );       // 소속부서
      GetFldVar('S_STRING2' , sRullCnt );       // 근무부서
      GetFldVar('S_STRING3' , sDualSun );       // 사원번호


      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function HgaOvermt.CalcOverMT1: Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
   SetFldValue32(0,[ ssLocate
                   , ssYYMM
                   , ssDeptcd
                   , sEditid
                   , sEditip
                   , ssPaygbn

                   ]);

  if (txPutF32('GA_MDUTY_C2', 300)) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree32;
  end;
end;


function HgaApoid1.ListComCodeName1: Integer;
begin
  Result := -1;
   //Pointer를 받아옴.
   txAlloc;

   if (txGetF('GA_APOIC_L3')) then  //ga_apoic_l3.pc
   begin
     GetFldVar('S_STRING1',  sCode    );  // 코드
     GetFldVar('S_STRING2',  sCodeName);  // 코드명

      //조회건수 return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;




function HgaApoid1.Gbapoid_List: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh] );

 if (txGetF('GB_REPAY_L1')) then
 begin
    GetFldVar('S_STRING1' , sApodate    );
    GetFldVar('S_STRING2' , sEmpno      );
    GetFldVar('S_STRING3' , sEmpnm      );
    GetFldVar('S_STRING4' , sDeptcd     );
    GetFldVar('S_STRING5' , sDeptnm     );
    GetFldVar('S_STRING6' , sWkareacd   );
    GetFldVar('S_STRING7' , sWkareanm   );
    GetFldVar('S_STRING8' , sWKPLACE    );
    GetFldVar('S_STRING9' , sTotdutym   );
    GetFldVar('S_STRING10', sTotamt     );
    GetFldVar('S_STRING11', sInctax     );
    GetFldVar('S_STRING12', sRestax     );
    GetFldVar('S_STRING13', sDedtamt    );
    GetFldVar('S_STRING14', sRealamt    );
    GetFldVar('S_STRING15', sRemtxt     );
    GetFldVar('S_STRING16', sCloseyn    );
    GetFldVar('S_STRING17', sdutyyy     );
    GetFldVar('S_STRING18', sdutymm     );
    GetFldVar('S_STRING19', sdutydd     );

     Result := GetRecordCnt('S_STRING1');
     txFree;
 end;


end;

function HgaApoid1.GbApoid_Save: Integer;
begin
  Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8'+
                'S_TYPE9;;S_TYPE10'    ); //service입력변수
   SetFldValue32(0,[ sLocate
                   , sCodsrh
                   , sApocd
                   , sApodate
                   , sDeptcd
                   , sWkareacd
                   , sWkplace
                   , sRemtxt
                   , sEditid
                   , sEditip
                   ]);
  if (txPutF32('GB_REPAY_I2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree32;
  end;
end;

function HgaApoid1.delGBApoid: Integer;
begin
  Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수
   SetFldValue32(0,[ sLocate
                   , sEmpno
                   , sApodate
                   , sDeptcd
                   , sWkareacd
                   , sEditid
                   , sEditip
                   ]);
  if (txPutF32('GB_REPAY_D1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree32;
  end;
end;


function HgaApoid1.SelApoid5: Integer;
begin

  Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate, sCodsrh, sGubun] );


   if (txGetF('GA_APOID_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
     GetFldVar('S_STRING1'   ,  sApocd      );        // 발 령 코 드
     GetFldVar('S_STRING2'   ,  sApoinm     );        // 발 령 명
     GetFldVar('S_STRING3'   ,  sApodate    );        // 발 령 일
     GetFldVar('S_STRING4'   ,  sEnddate    );        // 발령종료
     GetFldVar('S_STRING5'   ,  sJikjong    );        // 직종코드
     GetFldVar('S_STRING6'   ,  sJikjongnm  );        // 직 종 명
     GetFldVar('S_STRING7'   ,  sJikgup     );        // 직급코드
     GetFldVar('S_STRING8'   ,  sJikgupnm   );        // 직 급 명
     GetFldVar('S_STRING9'   ,  sJikmu      );        // 직무코드(신분코드)
     GetFldVar('S_STRING10'  ,  sJikmunm    );        // 직무명(신분명)
     GetFldVar('S_STRING11'  ,  sJikchek    );        // 직책코드
     GetFldVar('S_STRING12'  ,  sJikcheknm  );        // 직 책 명
     GetFldVar('S_STRING13'  ,  sJikwe      );        // 직위코드
     GetFldVar('S_STRING14'  ,  sJikwenm    );        // 직 위 명
     GetFldVar('S_STRING15'  ,  sJikgun     );        // 직군코드
     GetFldVar('S_STRING16'  ,  sJikgunnm   );        // 직 군 명
     GetFldVar('S_STRING17'  ,  sHobong     );        // 호    봉
     GetFldVar('S_STRING18'  ,  sDeptcd     );        // 부서코드
     GetFldVar('S_STRING19'  ,  sDeptnm     );        // 부 서 명
     GetFldVar('S_STRING20'  ,  sWkareacd   );        // 근무지코드 --> 근무부서코드
     GetFldVar('S_STRING21'  ,  sWkareacdnm );        // 근무지명 --> 근무부서명
     GetFldVar('S_STRING22'  ,  sRemtxt     );        // 비    고
     GetFldVar('S_STRING23'  ,  sConCurYn   );        // 겸직주부구분
     GetFldVar('S_STRING24'  ,  sAppotno    );        // 사령장 번호
     GetFldVar('S_STRING25'  ,  sWLocate    );        // 근무부서 사업장 코드
     GetFldVar('S_STRING26'  ,  sWkplace    );        // 근무지  20060522  

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaAprovt.ListApprovt18: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수

  SetFldValue(0,[ssLocate,           // 사업장 코드
                 ssFromAppdate,      // 문서작성일
                 ssToAppdate,        // 작성 부서코드
                 ssMkdeptcd,         // 작성자 사번
                 ssDoctype,          // 문서형태
                 ssAppEmpno          // 20200403 오정은
                ]);                  // 로그인한 유저


  if (txGetF('GA_APROV_L18')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sRefwkcd    );    // 근태코드
    GetFldVar('S_STRING9'  , sWksdate    );    // 근태시작일
    GetFldVar('S_STRING10' , sWkedate    );    // 근태종료일
    GetFldVar('S_STRING11' , sRemtxt     );    // 근태사유
    GetFldVar('S_STRING12' , sCnt        );    // 근태일수
    GetFldVar('S_STRING13' , sRettxt     );    // 반송사유
    GetFldVar('S_STRING14' , sAllconyn   );    // 결제완료여부
    GetFldVar('S_STRING15' , sChkyn      );    // 인사팀확인여부
    GetFldVar('S_STRING16' , sGenconid   );    // 인사부서 확인자
    GetFldVar('S_STRING17' , sEmpnm      );    // 성명
    GetFldVar('S_STRING18' , sJikwe      );    // 직위
    GetFldVar('S_STRING19' , sWknm       );    // 근태명
    GetFldVar('S_STRING20' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING21' , sMkempnm    );    // 작성자 이름     추가 김용욱 2005-12-09
    GetFldVar('S_STRING22' , sANFlag     );    // 행정/간호 구분  추가 김용욱 2005-12-23

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;  

end;

function HgaOverddt.ListOveddt10: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수

  SetFldValue(0,[ssLocate,          // 사업장 코드
                 ssFromAppdate,     // 문서작성일
                 ssToAppdate,       // 작성 부서코드
                 ssMkdeptcd,        // 작성자 사번
                 ssDoctype,         // 문서형태
                 ssAppEmpno         // 특근 결재 조회 사번 20200403 오정은
                            ]);

  if (txGetF('GA_OVEDT_L10')) then              // ga_ovedt_l7.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sWkdate     );    // 특근일자
    GetFldVar('S_STRING9'  , sWketime    );    // 특근시작시간
    GetFldVar('S_STRING10' , sWkstime    );    // 특근종료시간
    GetFldVar('S_STRING11' , sWeekcnt    );    // 주차
    GetFldVar('S_STRING12' , sCnt        );    // 특근시간수
    GetFldVar('S_STRING13' , sCntovr     );    // 시간외
    GetFldVar('S_STRING14' , sCntnig     );    // 심야
    GetFldVar('S_STRING15' , sRemtxt     );    // 특근사유
    GetFldVar('S_STRING16' , sRettxt     );    // 반송사유
    GetFldVar('S_STRING17' , sAllconyn   );    // 결제완료여부
    GetFldVar('S_STRING18' , sChkyn      );    // 인사팀확인여부
    GetFldVar('S_STRING19' , sGenconid   );    // 인사부서 확인자
    GetFldVar('S_STRING20' , sEmpnm      );    // 성명
    GetFldVar('S_STRING21' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING22' , sMkempnm    );    // 작성자 이름

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.ListDutySelect1: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
  SetFldValue(0,[ ssLocate
                , ssEmpno
                , ssYYMM
                , ssGubun ]);

  if (txGetF('GA_OVEDT_L11')) then
  begin     //Tuxedo Service Call
      GetFldVar('S_STRING1'  , sEmpno        );
      GetFldVar('S_STRING2'  , sEmpnm        );
      GetFldVar('S_STRING3'  , sWkmonth      );
      GetFldVar('S_STRING4'  , sDeptcd       );
      GetFldVar('S_STRING5'  , sWkareacd     );
      GetFldVar('S_STRING6'  , sCnt          );
      GetFldVar('S_STRING7'  , sTottime      );
      GetFldVar('S_STRING8'  , sNighttime    );
      GetFldVar('S_STRING9'  , sYear         );
      GetFldVar('S_STRING10' , sOcnt         );
      GetFldVar('S_STRING11' , sUseVcnt      );
      GetFldVar('S_STRING12' , scntduty15    );
      GetFldVar('S_STRING13' , scntduty30    );
      GetFldVar('S_STRING14' , sCnt25    );




    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaMdutyt.ListSpecialDp: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수

  SetFldValue(0,[ sLocate
                , sEmpno
                , sWkdate
                , sWksTime
                , sWkeTime ]);

  if (txGetF('GA_OVEDT_L12')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sCnt    );


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


//근태 변경시 이전 근무코드 참조하도록 함..
function HgaMdutyt.ListFromDutySelect: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ ssLocate
                , ssEmpno
                , ssFromdate
                , ssDocType ]);

  if (txGetF('GA_MDUTY_L13')) then   //ga_mduty_l13.pc
  begin     //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,sLocate      );
      GetFldVar('S_STRING2'  ,sEmpno       );
      GetFldVar('S_STRING3'  ,sDeptcd      );
      GetFldVar('S_STRING4'  ,sWkareacd    );
      GetFldVar('S_STRING5'  ,sDutydate1   );
      GetFldVar('S_STRING6'  ,sDutydate2   );
      GetFldVar('S_STRING7'  ,sDutydate3   );
      GetFldVar('S_STRING8'  ,sDutydate4   );
      GetFldVar('S_STRING9'  ,sDutydate5   );
      GetFldVar('S_STRING10' ,sDutydate6   );
      GetFldVar('S_STRING11' ,sDutydate7   );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

//근태 변경시 이전 근무코드 참조하도록 함..
function HgaMdutyt.List: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ ssLocate
                , ssEmpno
                , ssFromdate
                , ssGubun ]);

  if (txGetF('GA_MDUTY_L17')) then
  begin     //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,sDutydate1      );
      GetFldVar('S_STRING2'  ,sDuty1       );


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


//근태 변경시 이전 근무코드 참조하도록 함..
function HgaMdutyt.IsRequest: Boolean;
begin

  Result := False;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2'); //service입력변수

  SetFldValue(0,[ssEmpno,                // 작성자사번
                 ssWkyymm]);            // 문서종류

  if (txGetF('GA_APROL_L9')) then        // ga_aprol_l9.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // 건수

    if sCnt[0] = '0' then
       Result := False
    else
       Result := True;

    txFree;
  end;

end;




{ HgaGrpmgt }
//SMS 그룹삭제
function HgaGrpmgt.DelMsgGrp: Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수

   SetFldValue(0,[  sLocate
                  , sGrpcd
                  , sGrpnm
                  , sEditid
                  , sEditip
                  ] );

  if (txPutF('GA_GRPMGT_D1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;



function HgaGrpmgt.DelMsgMember(iCnt:Integer): Integer;
var
  ii : Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수

  for ii:=0 to iCnt-1 do
  begin
    SetFldValue(ii,[  sLocate[ii]
                    , sGrpcd [ii]
                    , sMember[ii]
                    ] );
  end;

  if (txPutF('GA_GRPMGT_D3')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;



function HgaGrpmgt.DISmsMgt: Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;STYPE3'); //service입력변수

  SetFldValue(0,[  sLocate
                 , slocate_at
                 , sjobtype
                 ]);
                 
  if (txGetF('GA_SMSMGT_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , ssLocate  );
    GetFldVar('S_STRING2'  , ssTitle   );
    GetFldVar('S_STRING3'  , ssMsg     );
    GetFldVar('S_STRING4'  , ssRemix   );
    GetFldVar('S_STRING5'  , ssMsgdt   );
    GetFldVar('S_STRING6'  , ssSmseq   );


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;



function HgaGrpmgt.DisplyGrp: Integer;
var
  ii : Integer;
begin

 Result := -1;
 txAlloc;
 SetFldName('S_TYPE1'); //service입력변수
 SetFldValue(0,[sLocate]);

  if (txGetF('GA_GRPMGT_L2')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , v_Grpcd );
    GetFldVar('S_STRING2'  , v_Grpnm );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaGrpmgt.DisplyMember: Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수

  SetFldValue(0,[  sLocate
                 , sgrpcd ]);
  if (txGetF('GA_GRPMGT_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , v_Grpcd   );
    GetFldVar('S_STRING2'  , v_Members );
    GetFldVar('S_STRING3'  , v_Empnm   );
    GetFldVar('S_STRING4'  , v_Hpnmber );
    GetFldVar('S_STRING5'  , v_Deptnm  );
    GetFldVar('S_STRING6'  , v_Seqno   );


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

{ HgaGrpmgt }
//SMS 그룹입력
function HgaGrpmgt.InsMsgGrp(): Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수

   SetFldValue(0,[  sLocate
                  , sGrpcd
                  , sGrpnm
                  , sEditid
                  , sEditip
                  ] );
  if (txPutF('GA_GRPMGT_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

function HgaGrpmgt.InsMsgMember: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10'); //service입력변수

   SetFldValue(0,[  sLocate          //A1
                  , sGrpcd           //그룹명
                  , sMember          //사번(맴버코드)
                  , sMembernm        //성명(맴버명)
                  , sHponeNo         //핸드폰번호 (default 인사마스터)
                  , sEditid          //gawaguci
                  , sEditip
                  , sGubun
                  , sDeptnm
                  , sSeqno
                  ] );
  if (txPutF('GA_GRPMGT_I2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

function HgaGrpmgt.InsSmsMgt: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8'); //service입력변수

   SetFldValue(0,[  sLocate
                  , sTitle
                  , sMsg
                  , sRemtxt
                  , sEditid
                  , sEditip
                  , sGubun
                  , sMsseq
                  ] );
  if (txPutF('GA_SMSMGT_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;


function HgaAprovt.ListApprovt19: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0, [  ssLocate                  // 사업장
                  , ssAppempno                // 결재자 사번
                  , ssDoctype                 // 문서종류
                  , ssSdate                   // 문서작성일(From)
                  , ssEdate                   // 문서작성일(To)
                  , ssinsafirstyn             // 총무팀 최초결재자 여부 'Y', 'N'
                  , ssDeptcd                  // 조회부서
                  ]);
                  


  if (txGetF('GA_APROV_L20')) then              // ga_aprov_l16.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , ssnCount   );    // 사업장 코드

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.ListApprovt21: Integer;
begin
  Result := -1;
  txAlloc;                //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service입력변수

  SetFldValue(0,[ssLocate,
                 ssEmpno,
                 ssMkYymm,
                 ssDocType,
                 ssinsafirstyn,
                 ssDeptcd]);

  if (txGetF('GA_APROV_L21')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , ssnCount     );    // 사업장 코드

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.ListApprovt22: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0, [  ssLocate                  // 사업장
                  , ssAppempno                // 결재자 사번
                  , ssDoctype                 // 문서종류
                  , ssSdate                   // 문서작성일(From)
                  , ssEdate                   // 문서작성일(To)
                  , ssinsafirstyn             // 총무팀 최초결재자 여부 'Y', 'N'
                  , ssDeptcd                  // 조회부서
                  ]);


  if (txGetF('GA_APROV_L22')) then              // ga_aprov_l17.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , ssnCount   );    // 사업장 코드

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;


end;

{ HgaUsgrmt }



function HgaMdutyt.gaUsgrmt_List: Integer;
 begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);

  //ga_mduty_l14.pc
  if (txGetF('GA_MDUTY_L14')) then //ga_mduty_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // 사업장
    GetFldVar('S_STRING2' ,  sDeptcd   );    // 소속부서
    GetFldVar('S_STRING3' ,  sEmpno    );    // 사원번호
    GetFldVar('S_STRING4' ,  sEmpnm    );    // 사원명
    GetFldVar('S_STRING5' ,  sMkyymm   );    // 작성년월
    GetFldVar('S_STRING6' ,  sCloseyn  );    // 마감여부
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 일 근무
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 일 근무
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 일 근무
    GetFldVar('S_STRING10',  sDuty04   );    // 04 일 근무

    GetFldVar('S_STRING11',  sDuty05   );    // 05 일 근무
    GetFldVar('S_STRING12',  sDuty06   );    // 06 일 근무
    GetFldVar('S_STRING13',  sDuty07   );    // 07 일 근무
    GetFldVar('S_STRING14',  sDuty08   );    // 08 일 근무
    GetFldVar('S_STRING15',  sDuty09   );    // 09 일 근무
    GetFldVar('S_STRING16',  sDuty10   );    // 10 일 근무
    GetFldVar('S_STRING17',  sDuty11   );    // 11 일 근무
    GetFldVar('S_STRING18',  sDuty12   );    // 12 일 근무
    GetFldVar('S_STRING19',  sDuty13   );    // 13 일 근무
    GetFldVar('S_STRING20',  sDuty14   );    // 14 일 근무

    GetFldVar('S_STRING21',  sDuty15   );    // 15 일 근무
    GetFldVar('S_STRING22',  sDuty16   );    // 16 일 근무
    GetFldVar('S_STRING23',  sDuty17   );    // 17 일 근무
    GetFldVar('S_STRING24',  sDuty18   );    // 18 일 근무
    GetFldVar('S_STRING25',  sDuty19   );    // 19 일 근무
    GetFldVar('S_STRING26',  sDuty20   );    // 20 일 근무
    GetFldVar('S_STRING27',  sDuty21   );    // 21 일 근무
    GetFldVar('S_STRING28',  sDuty22   );    // 22 일 근무
    GetFldVar('S_STRING29',  sDuty23   );    // 23 일 근무
    GetFldVar('S_STRING30',  sDuty24   );    // 24 일 근무

    GetFldVar('S_STRING31',  sDuty25   );    // 25 일 근무
    GetFldVar('S_STRING32',  sDuty26   );    // 26 일 근무
    GetFldVar('S_STRING33',  sDuty27   );    // 27 일 근무
    GetFldVar('S_STRING34',  sDuty28   );    // 28 일 근무
    GetFldVar('S_STRING35',  sDuty29   );    // 29 일 근무
    GetFldVar('S_STRING36',  sDuty30   );    // 30 일 근무
    GetFldVar('S_STRING37',  sDuty31   );    // 31 일 근무
    GetFldVar('S_STRING38',  sJikwenm  );    // 직위명
    GetFldVar('S_STRING39',  sTotvcnt  );    // 총연차
    GetFldVar('S_STRING40',  sUsevcnt  );    // 사용연차

    GetFldVar('S_STRING41',  sAllconyn );    // 결재완료 여부
    GetFldVar('S_STRING42',  sAppdate  );    // 작성일자
    GetFldVar('S_STRING43',  sMkdeptcd );    // 작성부서
    GetFldVar('S_STRING44',  sMkempno  );    // 작성자사번
    GetFldVar('S_STRING45',  sAppseqno );    // 문서일련번호
    GetFldVar('S_STRING46',  sMeddept  );    // 간호부서코드       추가 김용욱 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // 근무부서코드
    GetFldVar('S_STRING48',  sUserid   );    // 간호부서사용userid
    GetFldVar('S_STRING49',  sChkyn    );    // 인사부서 결재완료 여부
    GetFldVar('S_STRING50',  sDocstep  );    // 문서단계
    GetFldVar('S_STRING51',  sDeptNm   );    // 문서단계


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaUsgrmt.gaUsgrmt_List_D1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_STYPE3;S_STYPE4'); //service입력변수

   SetFldValue(0,[  sLocate
                  , sEmpno
                  , sEditid
                  , sEditip
                  ] );
  if (txPutF('GA_USGRP_D1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

function HgaUsgrmt.gaUsgrmt_List_I1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_STYPE3;S_STYPE4'); //service입력변수

   SetFldValue(0,[  sLocate
                  , sEmpno
                  , sEditid
                  , sEditip
                  ] );
  if (txPutF('GA_USGRP_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;


end;

function HgaUsgrmt.gaUsgrmt_List_l1: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2'); //service입력변수

  SetFldValue(0, [sLocate,sgbn]);

  if (txGetF('GA_USGRP_L2')) then              // GA_USGRT_L1
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' , ssLocate   );    //  사번
    GetFldVar('S_STRING2' , ssdeptnm   );    // 성명
    GetFldVar('S_STRING3' , sswkareanm );    // 사업장
    GetFldVar('S_STRING4' , ssEmpno    );    // 직위
    GetFldVar('S_STRING5' , ssEmpnm    );    // 근무부서명
    GetFldVar('S_STRING6' , ssJikwenm  );    // 소속부서명
    GetFldVar('S_STRING7' , ssHphone   );
    GetFldVar('S_STRING8' , ssIntelno  );
    GetFldVar('S_STRING9' , ssRetdt    );    // 퇴직일자 추가 20210616

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

{ HgaHotlnk }
function HgaHotlnk.DelHotLn: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[ ssEmpno
                 , sLocate
                 , sSeqno ]);

   if (txPutF('GA_HOTLN_D1')) then begin //Tuxedo Service Call  ga_hotln_d1.pc
      Result := 1;
      txFree;
   end;
end;

function HgaHotlnk.InsUdt_ts13HotLn: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11'); //service입력변수
   SetFldValue(0,[  sGbn
                  , sInptdt
                  , ssEmpno
                  , sInEmpno
                  , sCont
                  , sResult
                  , sEditid
                  , sEditip
                  , sChoice
                  , sLocate
                  , sSeqno]);
  if (txPutF('GA_HOTLN_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;



function HgaHotlnk.SelHotlnk: Integer;
begin
 Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[ssLocate,ssEmpno]);

   if (txGetF('GA_HOTLN_L1')) then
   begin
     GetFldVar('S_STRING1'   , sInptdt    );     
     GetFldVar('S_STRING2'   , sGbn       );     
     GetFldVar('S_STRING3'   , sInEmpno   );     
     GetFldVar('S_STRING4'   , sCont      );     
     GetFldVar('S_STRING5'   , sResult    );
     GetFldVar('S_STRING6'   , sSeqno     );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;



function HgaApoid1.SelApoid6: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue(0,[sLocate,sEmpno,sSDate,sEDate]);

   if (txGetF('GA_APOID_L6')) then begin    //Tuxedo Service Call  ga_apoid_l5.pc
     GetFldVar('S_STRING1'  , sVaCnt    );   // 휴직기간 일수

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

//근로계약서 사원 발령정보 조회  20210924 추가
function HgaApoid1.SelApoid7():Integer;

begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sEmpno] );

   if (txGetF('GA_APOID_L9')) then begin     //Tuxedo Service Call ga_apoid_l9.pc
     GetFldVar('S_STRING1'   ,  sApocd      );        // 발 령 코 드
     GetFldVar('S_STRING2'   ,  sApoinm     );        // 발 령 명
     GetFldVar('S_STRING3'   ,  sApodate    );        // 발 령 일
     GetFldVar('S_STRING4'   ,  sEnddate    );        // 발령종료
     GetFldVar('S_STRING5'   ,  sHobong     );        // 호   봉
     GetFldVar('S_STRING6'   ,  sWkareanm   );        // 부 서 명
     GetFldVar('S_STRING7'   ,  sWkareacd   );        // 근무부서
     GetFldVar('S_STRING8'   ,  sPreApodate );        // 수습발령일
     GetFldVar('S_STRING9'   ,  sPreEnddate );        // 수습종료일
     GetFldVar('S_STRING10'  ,  sJikmu      );        // 직무코드
     GetFldVar('S_STRING11'  ,  sJikmunm    );        // 직무코드명
     GetFldVar('S_STRING12'  ,  sJikjong    );        // 직종코드
     GetFldVar('S_STRING13'  ,  sJikjongnm  );        // 직 종 명
     GetFldVar('S_STRING14'  ,  sJikwe      );        // 직위코드
     GetFldVar('S_STRING15'  ,  sJikwenm    );        // 직 위 명
     GetFldVar('S_STRING16'  ,  sJikgun     );        // 직군
     GetFldVar('S_STRING17'  ,  sJikgunnm   );        // 직 위 명
     GetFldVar('S_STRING18'  ,  sJikchek    );        // 직책 
     GetFldVar('S_STRING19'  ,  sJikcheknm  );        // 직 위 명
     GetFldVar('S_STRING20'  ,  ssApodate   );        // 수정발령일
     GetFldVar('S_STRING21'  ,  ssEnddate   );        // 수정발령종료일
     GetFldVar('S_STRING22'  ,  ssPreapodate);        // 수정수습발령일
     GetFldVar('S_STRING23'  ,  ssPreenddate);        // 수정수습발령종료일
     GetFldVar('S_STRING24'  ,  ssPreyn     );        // 수정수습여부
     GetFldVar('S_STRING25'  ,  ssWkareacd  );        // 수정근무부서
     GetFldVar('S_STRING26'  ,  ssWorktxt   );        // 수정업무내용

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

//근로계약서 수정사항  조회  20211008 추가
function HgaDconmt.ListDutycon():Integer;

begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sEmpno] );

   if (txGetF('GA_DUCON_L1')) then begin     //Tuxedo Service Call ga_ducon_l1.pc
     GetFldVar('S_STRING1'  ,  ssApodate   );        // 수정발령일
     GetFldVar('S_STRING2'  ,  ssEnddate   );        // 수정발령종료일
     GetFldVar('S_STRING3'  ,  ssPreapodate);        // 수정수습발령일
     GetFldVar('S_STRING4'  ,  ssPreenddate);        // 수정수습발령종료일
     GetFldVar('S_STRING5'  ,  ssPreyn     );        // 수정수습여부
     GetFldVar('S_STRING6'  ,  ssWkareacd  );        // 수정근무부서
     GetFldVar('S_STRING7'  ,  ssWorktxt   );        // 수정업무내용

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

//근로계약서 수정사항  저장  20211011 추가
function HgaDconmt.insDutycon: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14');

   SetFldValue(0 ,[sEmpno,sLocate,ssApodate,ssEnddate,ssPreapodate,ssPreenddate,
                   ssPreyn,ssWkareacd,ssWorktxt,sChoice,sEditid,sEditip,sPrintid,sPrintdate]);
   //ga_accid_i1.pc
   if (txPutF('GA_DUCON_I1')) then begin //Tuxedo Service Call ga_ducon_i1.pc
      Result := 1;
      txFree;
   end;

end;

//근로계약서 급여 조회  20211005 추가
function HgaApoid1.Dutysdamt():Integer;

begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
   SetFldValue(0,[sLocate,sPaygbn,sApplyymm,sEmpno] );

   if (txGetF('GA_MSALM_L1')) then begin     //Tuxedo Service Call ga_msalm_l1.pc
     GetFldVar('S_STRING1'   ,  sSdcd        );        // 수당코드
     GetFldVar('S_STRING2'   ,  sSdamt       );        // 수당금액
     GetFldVar('S_STRING3'   ,  sSdcdnm      );        // 수당이름
     GetFldVar('S_STRING4'   ,  sSdcd1012    );        // 직급수당
     GetFldVar('S_STRING5'   ,  sSdcd1017    );        // 체력수당
     GetFldVar('S_STRING6'   ,  sSdcd1027    );        // 급식수당
     GetFldVar('S_STRING7'   ,  sSdcd1048    );        // 교통수당
     GetFldVar('S_STRING8'   ,  sSdcd1062    );        // 특수업무수당
     GetFldVar('S_STRING9'   ,  sSdcd1064    );        // 임상보조수당

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;



{ HgaDptto }
function HgaDptto.SaveDptto1 : Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');
  SetFldValue(0 , [sLocate, sWkareacd, sJikmu, sJikjong, sSDATE, sUpdown,sDPTTO,sBIGO,sEditid,sEditip ]);

  if (txPutF('GA_DPTTO_I1')) then    // ga_insam_i3.pc
  begin
    Result := 1;
    txFree;
  end;
end;


function HgaDptto.SaveDiet : Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12');
  SetFldValue(0 , [sLocate, sEmpnm, sWkareacd, sResno, sEntdt,
                    sRetdt, sIdent,   sEditid,sEditip,sWkareanm , sMode, sEmpno ]);

  if (txPutF('GA_DIETM_I1')) then    // ga_insam_i3.pc
  begin
    Result := 1;
    txFree;
  end;
end;


function HgaDptto.SelDptto1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
   SetFldValue(0,[strLocate,strDeptcd,strSinbun,strJikjong,strDate] );

   //ga_dptto_l1.pc
   if (txGetF('GA_DPTTO_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sDeptcd     );        // 발 령 코 드
     GetFldVar('S_STRING2'   ,  sDeptnm     );        // 발 령 명
     GetFldVar('S_STRING3'   ,  sJikmu      );        // 발 령 일
     GetFldVar('S_STRING4'   ,  sJikjong    );        // 발령종료
     GetFldVar('S_STRING5'   ,  sSDATE      );        // 직종코드
     GetFldVar('S_STRING6'   ,  sUpdown     );        // 직 종 명
     GetFldVar('S_STRING7'   ,  sDPTTO      );        // 직급코드
     GetFldVar('S_STRING8'   ,  sBIGO       );        // 직 급 명

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;


function HgaDptto.SelDiet: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수
   SetFldValue(0,[sLocate,sWkareacd] );

   //ga_dptto_l1.pc
   if (txGetF('GA_DIET_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sEmpno      );        // 발 령 코 드
     GetFldVar('S_STRING2'   ,  sEmpnm      );        // 발 령 명
     GetFldVar('S_STRING3'   ,  sWkareanm   );        // 발 령 일
     GetFldVar('S_STRING4'   ,  sEntdt      );        // 발령종료
     GetFldVar('S_STRING5'   ,  sRetdt      );        // 직종코드
     GetFldVar('S_STRING6'   ,  sIdent      );        // 직 종 명

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

{ HgaSchult }
{
function HDelInformat(iCnt) : Integer;


end;
}


{ HgaDptto }
function HgaTalkht.SaveTalk : Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'+
             'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13');
  SetFldValue(0 , [ sEmpno, sLocate, sTalkdate, sGubun,sWritedate,
                    sTalk, sTemp1, sTemp2, sEditid, sEditip, sDeptcd, sWkareacd, sFlag ]);

  if (txPutF('GA_TALKH_I1')) then
  begin
    Result := 1;
    txFree;
  end;
end;


function HgaTalkht.SelTalk: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
   SetFldValue(0,[sEmpno, sTalkdate, sLocate] );

   //ga_dptto_l1.pc
   if (txGetF('GA_TALKH_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sGubun      );        // 발 령 코 드
     GetFldVar('S_STRING2'   ,  sEditid     );        // 발 령 코 드
     GetFldVar('S_STRING3'   ,  sTalkdate   );        // 발 령 코 드
     GetFldVar('S_STRING4'   ,  sWritedate   );        // 발 령 코 드
     GetFldVar('S_STRING5'   ,  sTalk     );        // 발 령 코 드
     GetFldVar('S_STRING6'   ,  sTemp1     );        // 발 령 코 드
     GetFldVar('S_STRING7'   ,  sTemp2     );        // 발 령 코 드

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;


function HgaTalkht.SelTalkList: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate, sEmpno] );

   //ga_dptto_l1.pc
   if (txGetF('GA_TALKH_L2')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sTalkdate      );        // 발 령 코 드
     GetFldVar('S_STRING2'   ,  sGubun         );        // 발 령 코 드
     GetFldVar('S_STRING3'   ,  sTalk          );        // 발 령 코 드
     GetFldVar('S_STRING4'   ,  sTemp1         );        // 발 령 코 드
     GetFldVar('S_STRING5'   ,  sTemp2         );        // 발 령 코 드
     GetFldVar('S_STRING6'   ,  sEditid        );        // 발 령 코 드
     GetFldVar('S_STRING7'   ,  sEditNm        );        // 발 령 코 드
     GetFldVar('S_STRING8'   ,  sGubun1        );        // 발 령 코 드


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;


function HgaSchult.DelInformat(iCnt: Integer): Integer;
var
 ii : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9');

   for ii:=0 to iCnt-1 do
   begin
       SetFldValue( ii ,[   sEmpno   [ii]
                          , sLocate  [ii]
                          , sSttime  [ii]
                          , sEndtime [ii]
                          , sWkareacd[ii]
                          , sStdt    [ii]
                          , sGivyymm [ii]
                          , sGmode   [ii]
                          , sSeqno   [ii]
                        ]);
    end;
   
  if (txPutF('GA_SCHULT_D1')) then    // GA_SCHULT_I1.pc
  begin
    Result := 1;
    txFree;
  end;

end;

function HgaSchult.GetDutylist: Integer;
begin
Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
   SetFldValue(0,[sLocate, sGivyymm, sDutydate, sWkareacd] );

   if (txGetF('GA_SCHULT_L7')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
        GetFldVar('S_STRING1' , ssLocate    );
        GetFldVar('S_STRING2' , ssEmpno     );
        GetFldVar('S_STRING3' , ssEmpnm     );
        GetFldVar('S_STRING4' , ssHobong    );
        GetFldVar('S_STRING5' , ssDeptcd    );
        GetFldVar('S_STRING6' , ssDeptnm    );
        GetFldVar('S_STRING7' , ssWkareacd  );
        GetFldVar('S_STRING8' , ssWkareanm  );
        GetFldVar('S_STRING9' , ssDutydate  );
        GetFldVar('S_STRING10', ssDuty      );
        GetFldVar('S_STRING11', ssDutynm    );
        GetFldVar('S_STRING12', ssIntelno   );
        GetFldVar('S_STRING13', ssPagerno   );
        GetFldVar('S_STRING14', ssHphoneno  );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaSchult.GetDutylist1: Integer;
begin
Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate, sGivyymm, sWkareacd] );


   if (txGetF('GA_SCHULT_L8')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
        GetFldVar('S_STRING1' , ssLocate    );
        GetFldVar('S_STRING2' , ssEmpno     );
        GetFldVar('S_STRING3' , ssEmpnm     );
        GetFldVar('S_STRING4' , ssHobong    );
        GetFldVar('S_STRING5' , ssDeptcd    );
        GetFldVar('S_STRING6' , ssDeptnm    );
        GetFldVar('S_STRING7' , ssWkareacd  );
        GetFldVar('S_STRING8' , ssWkareanm  );
        GetFldVar('S_STRING9' , ssDutydate  );
        GetFldVar('S_STRING10', ssDuty      );
        GetFldVar('S_STRING11', ssDutynm    );
        GetFldVar('S_STRING12', ssIntelno   );
        GetFldVar('S_STRING13', ssPagerno   );
        GetFldVar('S_STRING14', ssHphoneno  );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaSchult.GetEmpInfomat: Integer;
begin
 Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate,sEmpno,sGmode] );

   //ga_dptto_l1.pc
   if (txGetF('GA_SCHULT_L3')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
      GetFldVar('S_STRING1',   ssEmpno       );
      GetFldvar('S_STRING2',   ssEmpnm       );
      GetFldvar('S_STRING3',   ssLocate      );
      GetFldvar('S_STRING4',   ssDeptcd      );
      GetFldvar('S_STRING5',   ssWkareacd    );
      GetFldvar('S_STRING6',   ssDeptcdnm    );
      GetFldvar('S_STRING7',   ssWkareacdnm  );
      GetFldvar('S_STRING8',   ssTelno       );
      GetFldvar('S_STRING9',   ssIntelno     );
      GetFldvar('S_STRING10',  ssPagerno     );
      GetFldvar('S_STRING11',  ssHphoneno    );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaSchult.GetEmpSelectList: Integer;
begin
  Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8'); //service입력변수
   SetFldValue(0,[sLocate,sWkareacd,sGbn ,sSelectEmp, sJikjong ,sDeptcd,sEmpno,sEditid] );

// ShowMessage(sLocate+'/'+sDeptcd+'/'+sWkareacd+'/'+sGbn+'/'+sEditid+'/'+sJikjong);

   if (txGetF('GA_SCHULT_L5')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
   
      GetFldVar('S_STRING1' ,   ssEmpno       );       
      GetFldvar('S_STRING2' ,   ssEmpnm       ); 
      GetFldvar('S_STRING3' ,   ssEntdt       ); 
      GetFldvar('S_STRING4' ,   ssRetdt       ); 
      GetFldvar('S_STRING5' ,   ssDeptcd      ); 
      GetFldvar('S_STRING6' ,   ssDeptnm      ); 
      GetFldvar('S_STRING7' ,   ssWkareacd    ); 
      GetFldvar('S_STRING8' ,   ssWkareanm    );
      GetFldvar('S_STRING9' ,   ssDpcd        ); 
      GetFldvar('S_STRING10',   ssJikmu       );
      GetFldvar('S_STRING11',   ssJikmunm     ); 
      GetFldvar('S_STRING12',   ssJikmuseq    ); 
      GetFldvar('S_STRING13',   ssJikchek     ); 
      GetFldvar('S_STRING14',   ssJikchecknm  );
      GetFldvar('S_STRING15',   ssJikcheckseq );
      GetFldvar('S_STRING16',   ssJikwe       );
      GetFldvar('S_STRING17',   ssJikwenm     );
      GetFldvar('S_STRING18',   ssJikweseq    );
      GetFldvar('S_STRING19',   ssHobong      );
      GetFldvar('S_STRING20',   ssHphoneno    );
      GetFldvar('S_STRING21',   ssPagerno     );
      GetFldvar('S_STRING22',   ssInPhoneno   );
      GetFldvar('S_STRING23',   ssRemark      );


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaSchult.GetItList: Integer;
begin
 Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate,sGivyymm,sGmode] );

   //ga_schult_l4.pc
   if (txGetF('GA_SCHULT_L4')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
      GetFldVar('S_STRING1',   ssEmpno       );
      GetFldvar('S_STRING2',   ssEmpnm       );
      GetFldvar('S_STRING3',   sStdt         );
      GetFldvar('S_STRING4',   ssDeptcd      );
      GetFldvar('S_STRING5',   ssWkareacd    );
      GetFldvar('S_STRING6',   ssDeptcdnm    );
      GetFldvar('S_STRING7',   ssWkareacdnm  );
      GetFldvar('S_STRING8',   ssTelno       );
      GetFldvar('S_STRING9',   ssIntelno     );
      GetFldvar('S_STRING10',  ssPagerno     );
      GetFldvar('S_STRING11',  ssHphoneno    );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaSchult.GetList: Integer;
begin
Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
   SetFldValue(0,[sLocate,sWkareacd,sGivyymm] );

   //ga_dptto_l1.pc
   if (txGetF('GA_SCHULT_L6')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
          GetFldVar('S_STRING1' , ssEmpno          );
          GetFldVar('S_STRING2' , ssEmpnm          );
          GetFldVar('S_STRING3' , ssEntdt          );
          GetFldVar('S_STRING4' , ssRetdt          );
          GetFldVar('S_STRING5' , ssDeptcd         );
          GetFldVar('S_STRING6' , ssDeptnm         );
          GetFldVar('S_STRING7' , ssWkareacd       );
          GetFldVar('S_STRING8' , ssWkareanm       );
          GetFldVar('S_STRING9' , ssDpcd           );
          GetFldVar('S_STRING10', ssJikmu          );
          GetFldVar('S_STRING11', ssJikmunm        );
          GetFldVar('S_STRING12', ssJikmuseq       );
          GetFldVar('S_STRING13', ssJikchek        );
          GetFldVar('S_STRING14', ssJikchecknm     );
          GetFldVar('S_STRING15', ssJikcheckseq    );
          GetFldVar('S_STRING16', ssJikwe          );
          GetFldVar('S_STRING17', ssJikwenm        );
          GetFldVar('S_STRING18', ssJikweseq       );
          GetFldVar('S_STRING19', ssHobong         );
          GetFldVar('S_STRING20', ssHphoneno       );
          GetFldVar('S_STRING21', ssPagerno        );
          GetFldVar('S_STRING22', ssInPhoneno      );
          GetFldVar('S_STRING23', ssRemark         );
          GetFldVar('S_STRING24', ssDay1           );
          GetFldVar('S_STRING25', ssDay2           );
          GetFldVar('S_STRING26', ssDay3           );
          GetFldVar('S_STRING27', ssDay4           );
          GetFldVar('S_STRING28', ssDay5           );
          GetFldVar('S_STRING29', ssDay6           );
          GetFldVar('S_STRING30', ssDay7           );
          GetFldVar('S_STRING31', ssDay8	     		 );
          GetFldVar('S_STRING32', ssDay9           );
          GetFldVar('S_STRING33', ssDay10          );
          GetFldVar('S_STRING34', ssDay11          );
          GetFldVar('S_STRING35', ssDay12          );
          GetFldVar('S_STRING36', ssDay13          );
          GetFldVar('S_STRING37', ssDay14	     		 );
          GetFldVar('S_STRING38', ssDay15			     );
          GetFldVar('S_STRING39', ssDay16			     );
          GetFldVar('S_STRING40', ssDay17			     );
          GetFldVar('S_STRING41', ssDay18			     );
          GetFldVar('S_STRING42', ssDay19			     );
          GetFldVar('S_STRING43', ssDay20			     );
          GetFldVar('S_STRING44', ssDay21			     );
          GetFldVar('S_STRING45', ssDay22			     );
          GetFldVar('S_STRING46', ssDay23			     );
          GetFldVar('S_STRING47', ssDay24			     );
          GetFldVar('S_STRING48', ssDay25          );
          GetFldVar('S_STRING49', ssDay26          );
          GetFldVar('S_STRING50', ssDay27          );
          GetFldVar('S_STRING51', ssDay28		       );
          GetFldVar('S_STRING52', ssDay29          );
          GetFldVar('S_STRING53', ssDay30			     );
          GetFldVar('S_STRING54', ssDay31		       );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaSchult.MainSave: Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;');

  SetFldValue(0 , [ sLocate
                  , sGivyymm
                  , sFromdate1
                  , sFromdate2
                  , sFromdate3
                  , sTodate1
                  , sTodate2
                  , sTodate3
                  , sDeptcd
                  , sMemo
                  , sEditid
                  , sEditip
                   ]);
                  
  if (txPutF('GA_SCHMST_I4')) then    // GA_SCHULT_I1.pc
  begin
    Result := 1;
    txFree;
  end;


end;

//Main화면의 부서별 당직시간, Memo를 가지고 옴.
function HgaSchult.MainWorkList: Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
   SetFldValue(0,[sLocate,sGivyymm,sDeptcd]);

  // Tuxedo Service Call GA_SCHULT_L10.pc
   if (txGetF('GA_SCHULT_L10')) then
   begin
      GetFldVar('S_STRING1' ,  ssLocate    );
      GetFldvar('S_STRING2' ,  ssGivyymm   );
      GetFldvar('S_STRING3' ,  ssDeptcd    );                       
      GetFldVar('S_STRING4' ,  ssFromdate1 );
      GetFldvar('S_STRING5' ,  ssFromdate2 );
      GetFldvar('S_STRING6' ,  ssFromdate3 );                       
      GetFldVar('S_STRING7' ,  ssTodate1   );
      GetFldvar('S_STRING8' ,  ssTodate2   );
      GetFldvar('S_STRING9' ,  ssTodate3   );                       
      GetFldVar('S_STRING10',  ssMeMo      );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;


function HgaSchult.selectIntenList: Integer;
begin
  Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수
   SetFldValue(0,[sLocate,sGivyymm] );

   //ga_schult_l9.pc
   if (txGetF('GA_SCHULT_L9')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

      GetFldVar('S_STRING1',   ssEmpno    );
      GetFldvar('S_STRING2',   ssEmpnm    );
      GetFldvar('S_STRING3',   ssEntdt	  );
      GetFldvar('S_STRING4',   ssDeptnm1  );
      GetFldvar('S_STRING5',   ssDeptnm2  );
      GetFldvar('S_STRING6',   ssDeptnm3  );
      GetFldvar('S_STRING7',   ssDeptnm4  );
      GetFldvar('S_STRING8',   ssDeptnm5  );
      GetFldvar('S_STRING9',   ssDeptnm6  );
      GetFldvar('S_STRING10',  ssDeptnm7  );
      GetFldvar('S_STRING11',  ssDeptnm8  );
      GetFldvar('S_STRING12',  ssDeptnm9  );
      GetFldvar('S_STRING13',  ssDeptnm10 );
      GetFldvar('S_STRING14',  ssDeptnm11 );
      GetFldvar('S_STRING15',  ssDeptnm12 );
      GetFldvar('S_STRING16',  ssDeptnm13 );
      
     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaSchult.SelSchList1: Integer;
begin
 Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수
   SetFldValue(0,[sLocate,sGivyymm,sWkareacd] );

   //ga_dptto_l1.pc
   if (txGetF('GA_SCHULT_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
      GetFldVar('S_STRING1',   ssEmpno     );
      GetFldvar('S_STRING2',   ssLocate    );
      GetFldvar('S_STRING3',   ssStdt      );
      GetFldvar('S_STRING4',   ssSttime    );
      GetFldvar('S_STRING5',   ssEndtime   );
      GetFldvar('S_STRING6',   ssDeptcd    );
      GetFldvar('S_STRING7',   ssWkareacd  );
      GetFldvar('S_STRING8',   ssRemtxt    );
      GetFldvar('S_STRING9',   ssTelno     );
      GetFldvar('S_STRING10',  ssIntelno   );
      GetFldvar('S_STRING11',  ssPagerno   );
      GetFldvar('S_STRING12',  ssHphoneno  );
      GetFldvar('S_STRING13',  ssDays      );
      GetFldvar('S_STRING14',  ssEmpnm      );
      GetFldvar('S_STRING15',  ssSeqno      );


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaSchult.SelSchList2: Integer;
begin
 Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   SetFldValue(0,[sLocate,sGivyymm,sWkareacd, sDays ] );

   //ga_dptto_l1.pc
   if (txGetF('GA_SCHULT_L2')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
      GetFldVar('S_STRING1',   ssEmpno     );
      GetFldvar('S_STRING2',   ssLocate    );
      GetFldvar('S_STRING3',   ssStdt      );
      GetFldvar('S_STRING4',   ssSttime    );
      GetFldvar('S_STRING5',   ssEndtime   );
      GetFldvar('S_STRING6',   ssDeptcd    );
      GetFldvar('S_STRING7',   ssWkareacd  );
      GetFldvar('S_STRING8',   ssRemtxt    );
      GetFldvar('S_STRING9',   ssTelno     );
      GetFldvar('S_STRING10',  ssIntelno   );
      GetFldvar('S_STRING11',  ssPagerno   );
      GetFldvar('S_STRING12',  ssHphoneno  );
      GetFldvar('S_STRING13',  ssDays      );
      GetFldvar('S_STRING14',  ssEmpnm     );
      GetFldvar('S_STRING15',  ssDeptcdnm  );
      GetFldvar('S_STRING16',  ssWkareacdnm);
      GetFldvar('S_STRING17',  ssSeqno     );



     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;



function HgaSchult.SetDoctorList(iCnt : Integer): Integer;
var
  i,ii : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;' +
             'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25;' +
             'S_TYPE26;S_TYPE27;S_TYPE28;S_TYPE29;S_TYPE30;' +
             'S_TYPE31;S_TYPE32;S_TYPE33;S_TYPE34;S_TYPE35;' +
             'S_TYPE36;S_TYPE37;S_TYPE38;S_TYPE39;S_TYPE40;' +
             'S_TYPE41;S_TYPE42;S_TYPE43;S_TYPE44;S_TYPE45;' +
             'S_TYPE46;S_TYPE47;S_TYPE48;S_TYPE49;S_TYPE50;' +
             'S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;'+
             'S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;');


  for i :=0 to iCnt-2  do
  begin
     SetFldValue32(i ,[   ssLocate      [i]
                        , ssEmpno       [i]
                        , ssEmpnm       [i]
                        , ssEntdt       [i]
                        , ssGiyymm      [i]
                        , ssEditid      [i]
                        , ssEditip      [i]
                        , ssFromdate1   [i]
                        , ssTodate1     [i]
                        , ssFromdate2   [i]
                        , ssTodate2     [i]
                        , ssFromdate3   [i]
                        , ssTodate3     [i]
                        , ssFromdate4   [i]
                        , ssTodate4     [i]
                        , ssFromdate5   [i]
                        , ssTodate5     [i]
                        , ssFromdate6   [i]
                        , ssTodate6     [i]
                        , ssFromdate7   [i]
                        , ssTodate7     [i]
                        , ssFromdate8   [i]
                        , ssTodate8     [i]
                        , ssFromdate9   [i]
                        , ssTodate9     [i]
                        , ssFromdate10  [i]
                        , ssTodate10    [i]
                        , ssFromdate11  [i]
                        , ssTodate11    [i]
                        , ssFromdate12  [i]
                        , ssTodate12    [i]
                        , ssFromdate13  [i]
                        , ssTodate13    [i]
                        , ssDeptcd1     [i]
                        , ssDeptcd2     [i]
                        , ssDeptcd3     [i]
                        , ssDeptcd4     [i]
                        , ssDeptcd5     [i]
                        , ssDeptcd6     [i]
                        , ssDeptcd7     [i]
                        , ssDeptcd8     [i]
                        , ssDeptcd9     [i]
                        , ssDeptcd10    [i]
                        , ssDeptcd11    [i]
                        , ssDeptcd12    [i]
                        , ssDeptcd13    [i]
                        , ssDeptnm1     [i]
                        , ssDeptnm2     [i]
                        , ssDeptnm3     [i]
                        , ssDeptnm4     [i]
                        , ssDeptnm5     [i]
                        , ssDeptnm6     [i]
                        , ssDeptnm7     [i]
                        , ssDeptnm8     [i]
                        , ssDeptnm9     [i]
                        , ssDeptnm10    [i]
                        , ssDeptnm11    [i]
                        , ssDeptnm12    [i]
                        , ssDeptnm13    [i]
                        , ssGbn         [i]
                      ] );

   end;

   if (txPutF32('GA_SCHMST_I3')) then //Tuxedo Service Call GA_SCHMST_I3.pc
   begin
       Result := 1;  //
       txFree32;
   end;
end;

function HgaSchult.SetDoctorList1(iCnt: Integer): Integer;
var
  i : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' );


  for i :=0 to iCnt-1  do
  begin
     SetFldValue32(i ,[     ssLocate   [i]
                          , ssEmpno    [i]
                          , ssEmpnm    [i]
                          , ssHobong   [i]
                          , ssHphoneno [i]
                          , ssPagerno  [i]
                          , ssInPhoneno[i]
                          , ssRemark   [i]
                          , ssEditid   [i]
                          , ssEditip   [i]
                      ] );

   end;

   if (txPutF32('GA_SCHMST_I1')) then //Tuxedo Service Call GA_SCHMST_I1.pc
   begin
       Result := 1;  //
       txFree32;
   end;

end;

function HgaSchult.SetInformat: Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16');
  SetFldValue(0 , [ sEmpno
                  , sLocate
                  , sSttime
                  , sEndtime
                  , sDeptcd
                  , sWkareacd
                  , sRemtxt
                  , sEditid
                  , sEditip
                  , sIntelno
                  , sPagerno
                  , sHphoneno
                  , sStdt
                  , sGivyymm
                  , sGmode
                  , sSeqno]);
  if (txPutF('GA_SCHULT_I1')) then    // GA_SCHULT_I1.pc
  begin
    Result := 1;
    txFree;
  end;
end;

function HgaInsab1.SelInsab2(ssLocate, ssCodsrh: string): Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue32(0,[ssLocate,ssCodsrh] );

   if (txGetF32('GA_INSAM_L8')) then begin //Tuxedo Service Call  ga_insam_l1.pc
// 기본정보0  고정좌측
      GetFldVar32('S_STRING1'   , sEmpno       );      // 개인번호
      GetFldVar32('S_STRING2'   , sLocate      );      // 사 업 장
      GetFldVar32('S_STRING3'   , sLocatenm    );      // 사 업 장명
      GetFldVar32('S_STRING4'   , sEmpnm       );      // 성    명
      GetFldVar32('S_STRING5'   , sEngnm       );      // 영문성명
      GetFldVar32('S_STRING6'   , sHanmunnm    );      // 한문성명
      GetFldVar32('S_STRING7'   , sResno       );      // 주민등록번호
      GetFldVar32('S_STRING8'   , sBorndt      );      // 생년월일
      GetFldVar32('S_STRING9'   , sSolucd      );      // 음양구분 (+양.-음)
      GetFldVar32('S_STRING10'  , sSexcd       );      // 성별     (M남.F여)
      GetFldVar32('S_STRING11'  , sJikjong     );      // 직종코드
      GetFldVar32('S_STRING12'  , sJikjongnm   );      // 직종명
      GetFldVar32('S_STRING13'  , sJikgup      );      // 직급코드
      GetFldVar32('S_STRING14'  , sJikgupnm    );      // 직급명
      GetFldVar32('S_STRING15'  , sJikmu       );      // 직무코드
      GetFldVar32('S_STRING16'  , sJikmunm     );      // 직무명
      GetFldVar32('S_STRING17'  , sJikchek     );      // 직책코드
      GetFldVar32('S_STRING18'  , sJikcheknm   );      // 직책명
      GetFldVar32('S_STRING19'  , sJikwe       );      // 직위코드
      GetFldVar32('S_STRING20'  , sJikwenm     );      // 직위명
      GetFldVar32('S_STRING21'  , sJikgun      );      // 직군코드
      GetFldVar32('S_STRING22'  , sJikgunnm    );      // 직군명
      GetFldVar32('S_STRING23'  , sHobong      );      // 호    봉
      GetFldVar32('S_STRING24'  , sWLocate     );      // 근무부서 사업장코드
      GetFldVar32('S_STRING25'  , sConType     );      // 계약형태
      GetFldVar32('S_STRING26'  , sDeptcd      );      // 부서코드
      GetFldVar32('S_STRING27'  , sDeptnm      );      // 부서명
      GetFldVar32('S_STRING28'  , sWkareacd    );      // 근 무 지  => 근무부서
      GetFldVar32('S_STRING29'  , sWkareanm    );      // 근 무 지명  => 근무부서명
      GetFldVar32('S_STRING30'  , sEntdt       );      // 입 사 일(임용일자)
      GetFldVar32('S_STRING31'  , sRetdt       );      // 퇴 사 일(퇴직일자)
      GetFldVar32('S_STRING32'  , sMemyn       );      // 결혼구분
      GetFldVar32('S_STRING33'  , sMemdt       );      // 기 념 일
      GetFldVar32('S_STRING34'  , sHeadyn      );      // 가장여부
      GetFldVar32('S_STRING35'  , sBohuntyp    );      // 보훈구분
      GetFldVar32('S_STRING36'  , sBohungrd    );      // 보훈등급
      GetFldVar32('S_STRING37'  , sBohunno     );      // 보훈번호
      GetFldVar32('S_STRING38'  , sBohunorg    );      // 보훈지청
      GetFldVar32('S_STRING39'  , sJangtyp     );      // 장애구분
      GetFldVar32('S_STRING40'  , sJanggrd     );      // 장애등급
      GetFldVar32('S_STRING41'  , sJangno      );      // 장애인번호
      GetFldVar32('S_STRING42'  , sRLocate     );      // 전공의 소속사업장코드
      GetFldVar32('S_STRING43'  , sAddrbon     );      // 본적
      GetFldVar32('S_STRING44'  , sSedenm      );      // 세대주성명
      GetFldVar32('S_STRING45'  , sHozunm      );      // 호주성명
      GetFldVar32('S_STRING46'  , sHozurela    );      // 호주와의 관계
      GetFldVar32('S_STRING47'  , sLivtyp      );      // 주거구분
      GetFldVar32('S_STRING48'  , sDongsan     );      // 동산
      GetFldVar32('S_STRING49'  , sBudongsa    );      // 부동산
      GetFldVar32('S_STRING50'  , sRgncd       );      // 종교구분
      GetFldVar32('S_STRING51'  , sHobby       );      // 취    미
      GetFldVar32('S_STRING52'  , sTalent      );      // 특    기
      GetFldVar32('S_STRING53'  , sZip         );      // 주민등록지우편번호
      GetFldVar32('S_STRING54'  , sZipnm       );      // 주민등록지우편번호명
      GetFldVar32('S_STRING55'  , sAddr        );      // 주민등록지주소
      GetFldVar32('S_STRING56'  , sCurzip      );      // 현주소우편번호
      GetFldVar32('S_STRING57'  , sCurzipnm    );      // 현주소우편번호명
      GetFldVar32('S_STRING58'  , sCuraddr     );      // 현주소
      GetFldVar32('S_STRING59'  , sEngaddr     );      // 영문주소
      GetFldVar32('S_STRING60'  , sTelno       );      // 집전화번호
      GetFldVar32('S_STRING61'  , sIntelno     );      // 원내전화번호
      GetFldVar32('S_STRING62'  , sPagerno     );      // 호출기번호
      GetFldVar32('S_STRING63'  , sHphoneno    );      // 휴대폰번호
      GetFldVar32('S_STRING64'  , sFaxno       );      // 팩스번호
      GetFldVar32('S_STRING65'  , sEmail       );      // EMAIL 주소
      GetFldVar32('S_STRING66'  , sPreempno    );      // 전번개인번호
      GetFldVar32('S_STRING67'  , sMiltype     );      // 병역구분
      GetFldVar32('S_STRING68'  , sMilkind     );      // 병역군별
      GetFldVar32('S_STRING69'  , sMilyuk      );      // 병역역종
      GetFldVar32('S_STRING70'  , sMilyn       );      // 병역미필여부
      GetFldVar32('S_STRING71'  , sMilrsn      );      // 병역미필사유
      GetFldVar32('S_STRING72'  , sMilsrt      );      // 복무기간fr
      GetFldVar32('S_STRING73'  , sMilend      );      // 복무기간to
      GetFldVar32('S_STRING74'  , sMilgrade    );      // 병역계급
      GetFldVar32('S_STRING75'  , sMilbrnc     );      // 병역병과
      GetFldVar32('S_STRING76'  , sMilno       );      // 군  번
      GetFldVar32('S_STRING77'  , sDamdang     );      // 담당업무
      GetFldVar32('S_STRING78'  , sRcmnm       );      // 추천인성명
      GetFldVar32('S_STRING79'  , sRcmrel      );      // 추천인관계
      GetFldVar32('S_STRING80'  , sRcmcoara    );      // 추천인근무지명
      GetFldVar32('S_STRING81'  , sRcmjikwe    );      // 추천인직위명
//    GetFldVar32('S_STRING82'  , sRemtxt      );      // 자기신고사항
      GetFldVar32('S_STRING83'  , sApptyp      );      // 채용구분
      GetFldVar32('S_STRING84'  , sRstdt       );      // 휴직일
      GetFldVar32('S_STRING85'  , sReturndt    );      // 복직일
      GetFldVar32('S_STRING86'  , sRstmm       );      // 휴직개월수
      GetFldVar32('S_STRING87'  , sTrnstdt     );      // 수습시작일
      GetFldVar32('S_STRING88'  , sTrnenddt    );      // 수습만료일
      GetFldVar32('S_STRING89'  , sWkmm        );      // 인정경력개월수
      GetFldVar32('S_STRING95'  , sRetresn     );      // 퇴직사유
      GetFldVar32('S_STRING96'  , sSchship     );      // 최종학력
      GetFldVar32('S_STRING97'  , sLicno       );      // 면허번호
      GetFldVar32('S_STRING98'  , sMajorno     );      // 전문의번호
      GetFldVar32('S_STRING99'  , sEditid      );      // 수정자 ID
      GetFldVar32('S_STRING100' , sEditip      );      // 수정자 IP
      GetFldVar32('S_STRING101' , sEditdate    );      // 수정일
      GetFldVar32('S_STRING102' , sDeldate     );      // 삭제일
      GetFldVar32('S_STRING103' , sSggbn       );      // 승급구분
      GetFldVar32('S_STRING104' , sDepteng     );      // 영어부서명
      GetFldVar32('S_STRING105' , sInternNo    );      // 전공의 번호
      GetFldVar32('S_STRING106' , sIntHospNm   );      // 인턴수련병원
      GetFldVar32('S_STRING107' , sIntStDt     );      // 인턴시작일
      GetFldVar32('S_STRING108' , sIntEnDt     );      // 인턴종료일
      GetFldVar32('S_STRING109' , sRegStDt     );      // 레지던트 시작일
      GetFldVar32('S_STRING110' , sRegEnDt     );      // 레지던트 종료일
      GetFldVar32('S_STRING111' , sIntPoint    );      // 성적(000000) -> 000/000
      GetFldVar32('S_STRING112' , sIntAve      );      // 평균점수
      GetFldVar32('S_STRING113' , sIntSeats    );      // 석차(000000) -> 000/000
      GetFldVar32('S_STRING114' , sIntGrade    );      // 영어부서명
      GetFldVar32('S_STRING115' , sInDate      );      // 전입일
      GetFldVar32('S_STRING116' , sOutDate     );      // 전출일
      GetFldVar32('S_STRING117' , sPaygbn      );      // 전출일
      GetFldVar32('S_STRING118' , sInDt        );      // 근무시작일  추가 김용욱 2005-12-09
      GetFldVar32('S_STRING119' , sDincomeyn   );      // 맞벌이여부
      GetFldVar32('S_STRING120' , sWkplace     );      // 근무지  추가 :   2006-05-18

      GetFldVar32('S_STRING121' , sYearsCnt    );      // 근속년수 추가
      GetFldVar32('S_STRING122' , sMonCnt      );      // 근속월수 추가
      GetFldVar32('S_STRING123' , sDayCnt      );      // 근속일수 추가 gawaguci 2008-03-11
      GetFldVar32('S_STRING124' , sTotCnt      );      // 근속일수 추가 gawaguci 2008-03-11

      GetFldVar32('S_STRING125' , sBankcd      );      // 근속일수 추가 gawaguci 2008-03-11
      GetFldVar32('S_STRING126' , sAcntno      );      // 근속일수 추가 gawaguci 2008-03-11
      GetFldVar32('S_STRING127' , sBanknm      );      // 근속일수 추가 gawaguci 2008-03-11


      Result := 1 ;
      txFree32;
   end;
end;


function HgaHolydt.ListHolyday(sMonth: String): Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;'); //service입력변수
   SetFldValue(0,[sMonth]);

   if (txGetF('GA_HOLYD_L3')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sDay     );    //사원번호

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;   


end;

function HgaHolydt.GetHolyday41: Integer; // 2020.01.05 오정은 추가
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수
   SetFldValue(0,[sStdt, sEndt]);

   if (txGetF('GA_HOLYD_L4')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sfStdt      );    
     GetFldVar('S_STRING2' , sfEndt      );    
     

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaAprovt.SaveAprovt14: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0, [sLocate               // 사업장 코드
                ,  sAppdate              // 문서작성일
                ,  sMkdeptcd             // 작성 부서코드
                ,  sMkempno              // 작성자 사번
                ,  sDoctype              // 문서형태
                ,  sAppseqno             // 작성일련번호
                ,  sSeqno                // 결재순번
                ,  sAppempno             // 결재자 사번
                ,  sAppyn                // 결재여부
                ,  sRemtxt               // 비고
                ,  sEditid               // 작성자 ID
                ,  sEditip               // 작성자 IP
                ,  sInsaEmpno            // 인사부서 사번
                ,  sInsaDpcd             // 인사부서 부서코드
                ,  sFinalyn               // 총무결재라인 여부
                ,  sRettxt               // 반환사유
                ,  sFinal_firstyn          // 총무팀 최초 결재권자여부
                  ]);
{
    showmessage( sLocate
        + '/' + sAppdate
        + '/' + sMkdeptcd
        + '/' + sMkempno
        + '/' + sDoctype
        + '/' + sAppseqno
        + '/' + sSeqno
        + '/' + sAppempno
        + '/' +'부서결재여부'+ sAppyn
        + '/' + sRemtxt
        + '/' + sEditid
        + '/' + sEditip
        + '/' + sInsaEmpno
        + '/' + sInsaDpcd
        + '/' +'최종결재여부'+ sFinalyn
        + '/' + sRettxt
        + '/' + '부서 최초 결재자 여부'+sFinal_firstyn );
}

//GA_APROV_I14 신로직 적용

   if (txPutF('GA_APROV_I14', 300)) then   //Tuxedo Service Call   ga_aprov_i14.pc
   begin
      Result := 1;
      txFree;
   end;

end;

function HgaMdutyt.IsFirstAppEmp2: Boolean;
begin
  Result := False;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수

  SetFldValue(0,[ssLocate,               // 사업장
                 ssAppempno,             // 결재자사번
                 ssEmpno,                // 작성자사번
                 ssDoctype]);            // 문서종류

  if (txGetF('GA_APROL_L8')) then        // ga_aprol_l4.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // 건수

    if sCnt[0] = '0' then
       Result := False
    else
       Result := True;

    txFree;
  end;

end;

function HgaAprovt.ListApprovt23: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0, [  ssLocate                  // 사업장
                  , ssAppempno                // 결재자 사번
                  , ssDoctype                 // 문서종류
                  , ssSdate                   // 문서작성일(From)
                  , ssEdate                   // 문서작성일(To)
                  , ssinsafirstyn             // 총무팀 최초결재자 여부 'Y', 'N'
                  , ssDeptcd                  // 조회부서
                  ]);

  if (txGetF('GA_APROV_L23')) then              // ga_aprov_l16.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate  );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd );    // 작성부서코드
    GetFldVar('S_STRING4'  , sMkempno  );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype  );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno );    // 작성일련번호
    GetFldVar('S_STRING7'  , sSeqno    );    // 결재순번
    GetFldVar('S_STRING8'  , sAppempno );    // 결재자 사번
    GetFldVar('S_STRING9'  , sAppyn    );    // 결재여부
    GetFldVar('S_STRING10' , sRemtxt   );    // 비고
    GetFldVar('S_STRING11' , sEmpnm    );    // 결재자 성명
    GetFldVar('S_STRING12' , sDeptnm   );    // 부서명
    GetFldVar('S_STRING13' , sDocstep  );    // 해당문서의 현재 결재단계
    GetFldVar('S_STRING14' , sInsayn   );    // 총무결재라인여부
    GetFldVar('S_STRING15' , sRettxt   );    // 반송사유

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.SaveAprovt13: Integer;
var
  Servernm : String;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service입력변수

   SetFldValue(0,[sLocate  ,                  // 사업장
                  sAppdate ,                  // 문서작성일(이전에 저장되어 있는 문서작성일) => Pro*C 에서 시스템 날짜로 UPDATE 된다
                  sMkdeptcd,                  // 작성 부서코드
                  sMkempno ,                  // 작성자 사번(결재요청하는 사원의 사번)
                  sDoctype ,                  // 문서종류
                  sAppseqno,                  // 작성일련번호(문서번호)
                  sAppyn   ,                  // 결재구분
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // 인사결재선 여부 => 신청화면이므로 일반부서의 결재선을 탐
                  sWkareacd]);                // 작성자 근무부서 = 요청자 근무부서

//  GA_APROV_I9
//  GA_APROV_I13
  if (txPutF('GA_APROV_I13')) then   //Tuxedo Service Call
  begin
    Result := 1;
    txFree;
  end;
end;

function HgaSchult.SetList(iCnt: Integer): Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13');

  for i :=0 to iCnt - 1 do
  begin
     SetFldValue(i , [   sLocate  [i]
                       , sEmpno   [i]
                       , sEmpnm   [i]
                       , sGivyymm [i]
                       , sDutydate[i]
                       , sDuty01  [i]
                       , sFlag    [i]
                       , sEditid  [i]
                       , sEditip  [i]
                       , sMkEmpno [i]
                       , sWkareacd[i]
                       , sDeptcd  [i]
                       , sMKDeptcd[i]
                      ]);  
  end;

  if (txPutF('GA_SCHULT_I2')) then   
  begin
    Result := 1;
    txFree;
  end;

end;

function HgaMdutyt.ListMdutyOp_A: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptCd,ssSdate,ssEdate]);

  if (txGetF('GA_MDUTYL_L9')) then             // ga_mdutyl_l6.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno	     );    // 당직자 사번
    GetFldVar('S_STRING2'  , sEmpnm	     );    // 당직자 이름
    GetFldVar('S_STRING3'  , sDutyDate	 );    // 당직일자
    GetFldVar('S_STRING4'  , sDutyCode	 );    // 당직코드
    GetFldVar('S_STRING5'  , sDutyName	 );    // 당직코드명
    GetFldVar('S_STRING6'  , sIntelno	   );    // 원내번호 20061015
    GetFldVar('S_STRING7'  , sPagerno	   );    // 호출기번호 20061015
    GetFldVar('S_STRING8'  , sHphoneno	 );    // 휴대폰번호 20061015

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


{ HgaOffdrt }

function HgaOffdrt.ListDrOff : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldNamE('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
    
    SetFldValue(0,[  sLocate
                   , sType1
                   , sDeptcd
                   , sFromdate
                   , sTodate
                   ]);
//    ShowMessage(sFromdate+'/'+sTodate);

    if (txGetF('GA_OFFDR_L1')) then begin
       GetFldVar('S_STRING1', ssMeddr      );
       GetFldVar('S_STRING2', ssEmpno      );
       GetFldVar('S_STRING3', ssUsername   );
       GetFldVar('S_STRING4', ssFromDate   );
       GetFldVar('S_STRING5', ssToDate     );
       GetFldVar('S_STRING6', ssOffResnNm  );
       GetFldVar('S_STRING7', ssRemark     );
       GetFldVar('S_STRING8', ssAMPMFlag   );

       Result := GetRecordCnt('S_STRING1');
       txFree;
    end;
end;

{ HGAMEDSHT }

function HGAMEDSHT.MEDSH_S1: Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_MEDDEPT;S_DR1;S_DATE1');
    SetFldValue(0,[String(sMeddept),String(sMeddr),String(sMeddate)]);

    if txGetF('AP_MEDSH_S1') then
    begin
        Result := GetRecordCnt('S_DATE1');

        GetFldvar('L_CNT1',     lRsvfcnt);
        GetFldvar('L_CNT2',     lFstcnt );
        GetFldvar('L_CNT3',     lRsvrcnt);
        GetFldvar('L_CNT4',     lRecnt  );
        GetFldvar('S_DATE1',    sDd     );
        GetFldvar('S_TYPE1',    sAmpm   );
        GetFldvar('S_DATE2',    sHolyday);
        GetFldvar('S_STRING1',  sOffdr  );

        txFree;
    end
    else
    begin
        if GetTxUrCode = 1403 then
           Result := 0
        else
           Result := -1;
    end;

end;

function HGAMEDSHT.MEDSH_S2: Integer;
begin
 Result := -1;
    txAlloc;

    SetFldName('S_MEDDEPT;S_DR1;S_MEDDATE');
    SetFldValue(0,[String(sMeddept),String(sMeddr),String(sMeddate)]);

    if txGetF('AP_MEDSH_S2') then
    begin
        Result := GetRecordCnt('S_TIME1');

        GetFldvar('L_CNT1',     lFstcnt);
        GetFldvar('L_CNT2',     lRecnt);
        GetFldvar('L_CNT3',     lTotcnt);
        GetFldvar('L_CNT4',     lRsvfcnt);
        GetFldvar('L_CNT5',     lRsvrcnt);
        GetFldvar('L_CNT6',     lRsvtcnt);
        GetFldvar('S_TIME1',    sExamtm);
        GetFldvar('S_TEXT1',    sComments);
        GetFldvar('S_YN1',      sSpcdryn);

        txFree;
    end
    else
    begin
        if GetTxUrCode = 1403 then
           Result := 0
        else
           Result := -1;
    end;

end;

function HGAMEDSHT.MEDSH_S3: Integer;
begin
  Result := -1;
    txAlloc;

    SetFldName('S_MEDDEPT;S_MEDDATE;S_STRING1;S_STRING2;S_STRING4');
    SetFldValue(0,[String(sMeddept),String(sMeddate),string(sFlag),string(sNoFlag),String(sMeddr)]);

    if txGetF('AP_MEDSH_S3') then
    begin
        Result := GetRecordCnt('S_DR1');
        
        GetFldvar('L_CNT1',     lFstcnt);
        GetFldvar('L_CNT2',     lRecnt);
        GetFldvar('L_CNT3',     lTotcnt);
        GetFldvar('L_CNT4',     lRsvfcnt);
        GetFldvar('L_CNT5',     lRsvrcnt);
        GetFldvar('L_CNT6',     lRsvtcnt);
        GetFldvar('S_DR1',      sMeddr);
        GetFldvar('S_DRNAME1',  sMeddrnm);
        GetFldvar('S_TIME1',    sExamtm);
        GetFldvar('S_STRING2',  sAmpmflag);
        GetFldvar('S_STRING3',  sUseyn);
        GetFldvar('S_DATE1',    sMeddate);
        GetFldvar('S_STRING4',  sCnt);
        
        txFree;
    end
    else
    begin
        if GetTxUrCode = 1403 then
               Result := 0
        else
               Result := -1;
    end;

end;

function HGAMEDSHT.MEDSH_S4: Integer;
begin
  Result := -1;
    txAlloc32;

    SetFldName32('S_MEDDEPT;S_DR1;S_FROMDATE;S_TODATE;S_STRING1');
    SetFldValue32(0,[String(sMeddept),String(sMeddr),
                   String(sFromdate),String(sTodate),String(sFlag)]);

  if txGetF32('GA_MEDSH_S4') then
    begin
        Result := GetRecordCnt32('S_MEDDEPT');
        
        GetFldvar32('S_MEDDEPT',    sMeddept  );
        GetFldvar32('S_NAME1',      sMeddeptnm);
        GetFldvar32('S_DR1',        sMeddr    );
        GetFldvar32('S_DRNAME1',    sMeddrnm  );
        GetFldvar32('S_FROMDATE',   sFromdate );
        GetFldvar32('S_TODATE',     sTodate   );
        GetFldvar32('S_CODE1',      sOffresn  );
        GetFldvar32('S_NAME2',      sOffresnnm);
        GetFldvar32('S_TEXT1',      sRemark   );
        GetFldVar32('S_NO1',        sLicno    );
        GetFldVar32('S_CODE2',      sAmpmflag );
        GetFldVar32('S_YN1'  ,      sSpcdryn  );
        GetFldVar32('S_STRING1',    sDays     );
        GetfLDvAR32('S_STRING2'  ,  holcnt    );
        GetFldVar32('S_STRING3',    sEmpno    );
        GetFldVar32('S_STRING4',    sHolyday  );        


        txFree32;
    end
    else
    begin
       if GetTxUrCode = 1403 then
           Result := 0
       else
           Result := -1;
    end;

end;

function HgaMdutyt.GetCalendar: Integer;
begin

  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수
  
  SetFldValue(0,[ ssFromdate
                , ssTodate   ]);

  if (txGetF('GA_CALEND_L1')) then
  begin
    GetFldVar('S_STRING1'  , ssDays    );
    GetFldVar('S_STRING2'  , ssDayCnt  );
    GetFldVar('S_STRING3'  , ssDD      );
    GetFldVar('S_STRING4'  , ssWeeks1   ); // 20200318 OJE

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaInsamt.ListgaInsamt8: Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');

   SetFldValue(0,[ sLocate
                 , sWkareacd
                 , sEmpno
                  ]);

   if (txGetF('GA_INSAM_L9')) then begin                // Tuxedo Service Call ga_insam_l6.pc
          GetFldVar('S_STRING1'   , ssLoate           );    
          GetFldVar('S_STRING2'   , ssEmpno           );
          GetFldVar('S_STRING3'   , ssEmpnm           );
          GetFldVar('S_STRING4'   , ssEntdt           );
          GetFldVar('S_STRING5'   , ssDeptcd          );
          GetFldVar('S_STRING6'   , ssDeptnm          );
          GetFldVar('S_STRING7'   , ssWkareacd        );
          GetFldVar('S_STRING8'   , ssWkareacdnm      );
          GetFldVar('S_STRING9'   , ssJikcheknm       );
          GetFldVar('S_STRING10'  , ssJikwenm         );
          GetFldVar('S_STRING11'  , ssHphoneno        );
          GetFldVar('S_STRING12'  , ssIntelno         );

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;

function HgaAprovt.ListApprovt24: Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수

  SetFldValue(0,[ssLocate,          // 사업장 코드
                 ssAppdate,         // 문서작성일
                 ssMkdeptcd,        // 작성 부서코드
                 ssMkempno,         // 작성자 사번
                 ssDoctype,         // 문서형태
                 ssAppseqno,        // 작성일련번호
                 ssLoginuser]);     // 로그인한 유저


  if (txGetF('GA_APROV_L24')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING5'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING6'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING7'  , sEmpno      );    // 사원번호
    GetFldVar('S_STRING8'  , sRefwkcd    );    // 근태코드
    GetFldVar('S_STRING9'  , sWksdate    );    // 근태시작일
    GetFldVar('S_STRING10' , sWkedate    );    // 근태종료일
    GetFldVar('S_STRING11' , sRemtxt     );    // 근태사유
    GetFldVar('S_STRING12' , sCnt        );    // 근태일수
    GetFldVar('S_STRING13' , sRettxt     );    // 반송사유
    GetFldVar('S_STRING14' , sAllconyn   );    // 결제완료여부
    GetFldVar('S_STRING15' , sChkyn      );    // 인사팀확인여부
    GetFldVar('S_STRING16' , sGenconid   );    // 인사부서 확인자
    GetFldVar('S_STRING17' , sEmpnm      );    // 성명
    GetFldVar('S_STRING18' , sJikwe      );    // 직위
    GetFldVar('S_STRING19' , sWknm       );    // 근태명
    GetFldVar('S_STRING20' , sDeptnm     );    // 부서명
    GetFldVar('S_STRING21' , sMkempnm    );    // 작성자 이름     추가 김용욱 2005-12-09
    GetFldVar('S_STRING22' , sANFlag     );    // 행정/간호 구분  추가 김용욱 2005-12-23
    GetFldVar('S_STRING23' , sBefwkcd    );    // 행정/간호 구분  추가 김용욱 2005-12-23


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaAprovt.ListApprovt25: Integer;
begin
 Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_APROV_L25')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드
    GetFldVar('S_STRING2'  , sAppdate    );    // 문서작성일
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // 작성 부서코드
    GetFldVar('S_STRING4'  , sMkempno    );    // 작성자 사번
    GetFldVar('S_STRING5'  , sDoctype    );    // 문서형태
    GetFldVar('S_STRING6'  , sAppseqno   );    // 작성일련번호
    GetFldVar('S_STRING7'  , sEmpnm      );    // 작성자 성명
    GetFldVar('S_STRING8'  , sDeptnm     );    // 부서명
    GetFldVar('S_STRING9'  , sRettxt     );    // 반환사유
    GetFldVar('S_STRING10' , sDocstep    );    // 문서단계

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

{ HgaStatst }
function HgaStatst.SelChaStatst: Integer;
begin
 Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');   //service입력변수
  SetFldValue(0,[sLocate, sYyyymm, sPremm, sFlag]); //locate, '200806', '200805', 'A'

  if (txGetF('')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // 사업장 코드

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

{ HgaOutamt }

function HgaOutamt.GetUseridSelect: Integer;
begin
 Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service입력변수

  SetFldValue(0,[ ssLocate
                , ssWkareacd
                , ssUserid   ]);

  if (txGetF('GA_OUTAT_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate      );
    GetFldVar('S_STRING2'  , sEmpno       );
    GetFldVar('S_STRING3'  , sEmpnm       );
    GetFldVar('S_STRING4'  , sWkareacd    );
    GetFldVar('S_STRING5'  , sWkareacdnm  );
    GetFldVar('S_STRING6'  , sJikjong     );
    GetFldVar('S_STRING7'  , sJikjongnm   );
    GetFldVar('S_STRING8'  , sJikwe       );
    GetFldVar('S_STRING9'  , sJikwenm     );
    GetFldVar('S_STRING10' , sJikmu       );
    GetFldVar('S_STRING11' , sJikmunm     );
    GetFldVar('S_STRING12' , sEntdt       );
    GetFldVar('S_STRING13' , sRetdt       );
    GetFldVar('S_STRING14' , sIdent       );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;




function HgaOutamt.SetPinCodeMach: Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;'+
              'S_TYPE12;S_TYPE13;'
              );



    SetFldValue(0,[sLocate
                 , sEmpno
                 , sEmpnm
                 , sWkareacd
                 , sWkareacdnm
                 , sJikmu
                 , sJikjong
                 , sJikwe
                 , sIdent
                 , sEntdt
                 , sRetdt
                 , sEditid
                 , sEditip  ]);

  if (txPutF('GA_OUTAT_I1')) then   //Tuxedo Service Call
  begin
    Result := 1;
    txFree;
  end;

end;

{ HgbSndSms }
//20210602 제증명 결재 문자전송
function HgbSndSms.SndMsgText(iCnt: Integer): Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6'); //service입력변수

  for ii:=0 to iCnt-1 do
  begin
    SetFldValue(ii,[ in_Sendtm[ii]
                   , in_SendPhone[ii]
                   , in_RevPhone[ii]
                   , in_Msg[ii]
                   , in_Editid[ii]
                   , in_Editip[ii]
                   ]);
  end;
   //ga_sdsms_i1.pc
  if (txPutF('GA_TNSMS_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;


end;

//20210611 제증명 발급  문자전송
function HgbSndSms.SndMsgText2(iCnt: Integer): Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6'); //service입력변수
  SetFldValue(0,[in_Sendtm
              , in_SendPhone
              , in_RevPhone
              , in_Msg
              , in_Editid
              , in_Editip
              ]);

   //ga_sdsms_i2.pc
  if (txPutF('GA_TNSMS_I2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;


end;

function HgaOvermt.GetOverMT1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptcd,ssYYMM,ssPaygbn,ssCgubun,ssJikmu]);
  //ga_mduty_l15.pc
  if (txGetF('GA_MDUTY_L15')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno  );
    GetFldVar('S_STRING2'  , sEmpnm  );
    GetFldVar('S_STRING3'  , sEntdt  );
    GetFldVar('S_STRING4'  , sJikwenm);
    GetFldVar('S_STRING5'  , sDeptnm );
    GetFldVar('S_STRING6'  , sCnt    );
    GetFldVar('S_STRING7'  , sCnt25  );
    GetFldVar('S_STRING8'  , sCnt50  );
    GetFldVar('S_STRING9'  , sCntnig );

    GetFldVar('S_STRING10' , sNight   );
    GetFldVar('S_STRING11' , sDuty1  );
    GetFldVar('S_STRING12' , sDuty2  );      
    GetFldVar('S_STRING13' , sDuty3  );                       
    GetFldVar('S_STRING14' , sDuty4  );      
    GetFldVar('S_STRING15' , sDuty5  );      
    GetFldVar('S_STRING16' , sDuty6  );      
    GetFldVar('S_STRING17' , sDuty7  );      
    GetFldVar('S_STRING18' , sDuty8  );      
    GetFldVar('S_STRING19' , sDuty9  );                       
    GetFldVar('S_STRING20' , sVCnt   );                       
    GetFldVar('S_STRING21' , sNowork );                       
    GetFldVar('S_STRING22' , sNowork1);                       
    GetFldVar('S_STRING23' , sWorkMM );                        

    GetFldVar('S_STRING24' , sConDate );
    GetFldVar('S_STRING25' , sCntFa0 );       
    GetFldVar('S_STRING26' , sCntFa1 );                                         
    GetFldVar('S_STRING27' , sCntFa2 ); 
    GetFldVar('S_STRING28' , sCntFa3 ); 
    GetFldVar('S_STRING29' , sCntFa4 ); 
    GetFldVar('S_STRING30' , sCntD12 );
    GetFldVar('S_STRING31' , sFACILCNT );


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;                                                         

function HgaMdutyt.SelMDutyCD: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[ssLocate,ssDeptcd,ssFlag]);

  if (txGetF('GA_MDUTY_L16')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sDutycd  );
    GetFldVar('S_STRING2'  , sDutynm  );
    GetFldVar('S_STRING3'  , sFlag    );
    GetFldVar('S_STRING4'  , sUseYn   );
    GetFldVar('S_STRING5'  , stm      );
    GetFldVar('S_STRING6'  , etm      );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;


end;

function HgaMdutyt.SetMDutyCD(sRowNo: Integer): Integer;
var
  i : integer;
begin

  Result := -1;
  txAlloc32;
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');

  for i :=0 to sRowNo - 1 do
  begin
     SetFldValue32(i,[ sLocate [i]
                   , sDeptcd [i]
                   , sDutycd [i]
                   , sEditid [i]
                   , sEditip [i]
                   , sFlag   [i]]);
  end;

  if (txPutF32('GA_MDUTY_I5')) then
  begin
    Result := 1;
    txFree32;
  end;

end;

function HgaVacact.ListGaVacact1(Code1, Code2, Code3,Code4: String): integer;
 begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[Code1, Code2, Code3, Code4] );

   if (txGetF('GA_COMCD_L12')) then       // Tuxedo Service Call
   begin
      GetFldVar('S_STRING1', sCode);     // 근태구분코드
      GetFldVar('S_STRING2', sCodeName); // 근태구분코드명
      GetFldVar('S_STRING3', sFlag);     // 행정/간호 구분 추가 김용욱 2005-12-23
      GetFldVar('S_STRING4', sWktime);     // 행정/간호 구분 추가 김용욱 2005-12-23

      Result := GetRecordCnt('S_STRING1');

      txFree;
   end;
end;

{ HgaAccid }

function HgaAccid.delAccid: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

   SetFldValue(0,[ssEmpno, sLocate, sAccidate, sAccicd]);
   //ga_accid_d1.pc
   if (txPutF('GA_ACCID_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HgaAccid.insAccid: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8');

   SetFldValue(0 ,[ssEmpno,sLocate,sAccidate,sAccicd,sRemtxt,sEditid,sEditip,sChoice]);
   //ga_accid_i1.pc
   if (txPutF('GA_ACCID_I1')) then begin //Tuxedo Service Call ga_award_i1.pc
      Result := 1;
      txFree;
   end;

end;

function HgaAccid.ListMon1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sYear] );

   //ga_accid_l2.pc
   if (txGetF('GA_ACCID_L2')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,  sMon   );
      GetFldVar('S_STRING2'  ,  sCol1     );
      GetFldVar('S_STRING3'  ,  sCol2     );
      GetFldVar('S_STRING4'  ,  sCol3     );
      GetFldVar('S_STRING5'  ,  sCol4     );
      GetFldVar('S_STRING6'  ,  sCol5     );


      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;

// 2009.6.10 이창주 작성 - 년도별 사고발생 현황
function HgaAccid.ListMon4 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sYear] );

   //ga_accid_l5.pc
   if (txGetF('GA_ACCID_L5')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,  sMon   );
      GetFldVar('S_STRING2'  ,  sCol1     );
      GetFldVar('S_STRING3'  ,  sCol2     );
      GetFldVar('S_STRING4'  ,  sCol3     );
      GetFldVar('S_STRING5'  ,  sCol4     );


      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;

// 2009.6.10 이창주 작성 - 원인별 사고발생 현황
function HgaAccid.ListMon5 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sYear] );

   //ga_accid_l6.pc
   if (txGetF('GA_ACCID_L6')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,  sMon   );
      GetFldVar('S_STRING2'  ,  sCol1     );
      GetFldVar('S_STRING3'  ,  sCol2     );
      GetFldVar('S_STRING4'  ,  sCol3     );
      GetFldVar('S_STRING5'  ,  sCol4     );
      GetFldVar('S_STRING6'  ,  sCol5     );

      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;

// 2009.6.10 이창주 작성 - 직종별 사고발생 현황
function HgaAccid.ListMon6 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sYear] );

   //ga_accid_l7.pc
   if (txGetF('GA_ACCID_L7')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,  sMon   );
      GetFldVar('S_STRING2'  ,  sCol1     );
      GetFldVar('S_STRING3'  ,  sCol2     );
      GetFldVar('S_STRING4'  ,  sCol3     );
      GetFldVar('S_STRING5'  ,  sCol4     );

      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;

// 2009.6.10 이창주 작성 - 경력별 주사침 자상 발생 현황
function HgaAccid.ListMon7 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sYear] );

   //ga_accid_l8.pc
   if (txGetF('GA_ACCID_L8')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,  sMon   );
      GetFldVar('S_STRING2'  ,  sCol1     );
      GetFldVar('S_STRING3'  ,  sCol2     );
      GetFldVar('S_STRING4'  ,  sCol3     );
      GetFldVar('S_STRING5'  ,  sCol4     );

      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;


// 2009.6.10 이창주 작성 - 월별 직종별  사고발생 현황
function HgaAccid.ListMon2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sYear] );

   //ga_accid_l3.pc
   if (txGetF('GA_ACCID_L3')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,  sMon   );
      GetFldVar('S_STRING2'  ,  sCol1     );
      GetFldVar('S_STRING3'  ,  sCol2     );
      GetFldVar('S_STRING4'  ,  sCol3     );
      GetFldVar('S_STRING5'  ,  sCol4     );
      GetFldVar('S_STRING6'  ,  sCol5     );
      GetFldVar('S_STRING7'  ,  sCol6     );

      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;


// 2009.6.10 이창주 작성 - 경력별 사고발생 현황
function HgaAccid.ListMon3 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[sLocate,sYear] );

   //ga_accid_l4.pc
   if (txGetF('GA_ACCID_L4')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,  sMon   );
      GetFldVar('S_STRING2'  ,  sCol1     );
      GetFldVar('S_STRING3'  ,  sCol2     );
      GetFldVar('S_STRING4'  ,  sCol3     );
      GetFldVar('S_STRING5'  ,  sCol4     );
      GetFldVar('S_STRING6'  ,  sCol5     );
      GetFldVar('S_STRING7'  ,  sCol6     );
      GetFldVar('S_STRING8'  ,  sCol7     );



      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;

end;




function HgaAccid.SelAccid: Integer;
begin
 Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
   SetFldValue(0,[ssLocate,ssEmpno]);

   if (txGetF('GA_ACCID_L1')) then
   begin
     GetFldVar('S_STRING1'   , sAccidate    );
     GetFldVar('S_STRING2'   , sAccicd       );
     GetFldVar('S_STRING3'   , sAccicdnm   );
     GetFldVar('S_STRING4'   , sRemtxt      );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;



function HgaDocvat.SelDocvat: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수  //20161114 LEE S_TYPE5 추가
    SetFldValue(0,[ssLocate,ssEmpno,ssVtype,ssYYYY,ssType]);

    if (txGetF('GA_DOCVA_L1')) then        //ga_docva_l1.pc
    begin

        GetFldVar('S_STRING1'   , sMeddept   );
        GetFldVar('S_STRING2'   , sEmpno     );
        GetFldVar('S_STRING3'   , sEmpnm     );
        GetFldVar('S_STRING4'   , sEntdt     );
        GetFldVar('S_STRING5'   , sRetdt     );
        GetFldVar('S_STRING6'   , sGrudt     );
        GetFldVar('S_STRING7'   , sVtotcnt   );
        GetFldVar('S_STRING8'   , sVusecnt   );
        GetFldVar('S_STRING9'   , sVremcnt   );
        GetFldVar('S_STRING10'  , sVmodcnt   );
        GetFldVar('S_STRING11'  , sVremark   );
        GetFldVar('S_STRING12'  , sVtype     );
        GetFldVar('S_STRING13'  , sYYYY      );

        GetFldVar('S_STRING14'  , sVcnt1      );
        GetFldVar('S_STRING15'  , sVcnt2      );
        GetFldVar('S_STRING16'  , sVcnt3      );
        GetFldVar('S_STRING17'  , sVcnt4      );
        GetFldVar('S_STRING18'  , sAcnt1      );
        GetFldVar('S_STRING19'  , sAcnt2      );
        GetFldVar('S_STRING20'  , sAcnt3      );
        GetFldVar('S_STRING21'  , sAcnt4      );
        GetFldVar('S_STRING22'  , sFcnt1      );
        GetFldVar('S_STRING23'  , sFcnt2      );
        GetFldVar('S_STRING24'  , sFcnt3      );
        GetFldVar('S_STRING25'  , sFcnt4      );

        Result := GetRecordCnt('S_STRING1');
        txFree;

    end;

end;


//20151215 LEE
function HgaDocvat.insCalcVacation: Integer;
begin
//
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName(
              'S_TYPE1;S_TYPE8;S_TYPE11;S_TYPE14;S_TYPE15'
              );
   SetFldValue(0 ,[sLocate,ssYYYY,sChoice,ssEditid,ssEditip]);     //20150918 강돈우 ,sEntdt,sGrudt 추가

   if (txPutF('GA_DOCVA_I1')) then  //ga_docva_i1.pc
   begin //Tuxedo Service Call

       Result := 1;
       txFree;

   end;

end;



function HgaDocvat.insDocvat: Integer;
begin
//
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName(
              'S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;'+
              'S_TYPE10;S_TYPE11;S_TYPE12;'+
              'S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;' +
              'S_TYPE19;S_TYPE20;S_TYPE21;' +
              'S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25'
              );
   SetFldValue(0 ,[sChoice,sYYYY,sLocate,
                   sVtype,sMeddept,sMeddr,
                   sVfromdate,sVtodate,sVusecnt,
                   sAcaname,sAcaplace,sVremark,
                   sEditid,sEditip,sMkdeptcd,
                   sOffresn,sAmpmflag,ssDocno,    //sVapocd,sOffresn,sAmpmflag,ssDocno,
                   sVdetail,sReldoc,sAdocYN,
                   sAfromdate,sAtodate,sAusecnt,sImpactfr
                   ]);

   if (txPutF('GA_DOCVA_I2')) then  //ga_docva_i2.pc
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1', sYYYY );
      GetFldVar('S_STRING2', sDocNo);
      GetFldVar('S_STRING3', sVtype);
      GetFldVar('S_STRING4', sEmpid);   //20150506 lee 추가
      GetFldVar('S_STRING5', sMkdate);  //20150512 lee 추가
      GetFldVar('S_STRING6', sVusecnt); //20150610 lee 추가
      GetFldVar('S_STRING7', sAusecnt); //20150618 lee 추가
      Result := 1;
      txFree;
   end;


end;

function HgaDocvat.insDocvat1: Integer;
begin
//

   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName(
              'S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13'
              );
   SetFldValue(0 ,[sLocate,sEmpno,sVtype,
                   sVtotcnt,sVusecnt,sVmodcnt,
                   sVremcnt,sYYYY,sVremark,sVtype1,sChoice,sEntdt,sGrudt]);     //20150918 강돈우 ,sEntdt,sGrudt 추가

   if (txPutF('GA_DOCVA_I1')) then  //ga_docva_i1.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;


end;

function HgaDocvat.insDocvat2: Integer;
begin
//
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName(
              'S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11'
              );
   SetFldValue(0 ,[sLocate,sEmpno,sVtype,
                   sAtotcnt,sAusecnt,sAmodcnt,
                   sAremcnt,sYYYY,sVremark,sVtype1,sChoice]);

   if (txPutF('GA_DOCVA_I1')) then  //ga_docva_i1.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HgaDocvat.insDocvat3(iCnt: integer): Integer;
var
  ii : Integer;
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName(
               'S_TYPE1;S_TYPE2;S_TYPE3;' +
               'S_TYPE4;S_TYPE5;S_TYPE6;' +
               'S_TYPE7;S_TYPE8;S_TYPE9;' +
               'S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13;' +
               'S_TYPE14;S_TYPE15;S_TYPE16;S_TYPE17'       //20150514 LEE
              ); //service입력변수

    for ii := 0 to iCnt - 1 do
    begin
        SetFldValue(ii,[
                       sYYYY        [ii], sDocno      [ii], sVtype     [ii],
                       sSubdate     [ii], sSubamjik   [ii], sSubamnm   [ii],
                       sSubpmjik    [ii], sSubpmnm    [ii], sEditid    [ii],
                       sEditip      [ii], sEmpid      [ii], sSubamsign [ii],  sSubpmsign [ii],
                       sChangedateyn[ii], sChangeamyn [ii], sChangepmyn[ii],  sChangedate[ii]
                       ]);
    end;

    if (txPutF('GA_DOCVA_I4')) then   //Tuxedo Service Call  ga_docva_i4.pc
    begin
        Result := 1;
        txFree;
    end;

end;

function HgaDocvat.insDocvat4(iCnt: integer): Integer;
var
  ii : Integer;
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName(
               'S_TYPE1;S_TYPE2;S_TYPE3;' +
               'S_TYPE4;S_TYPE5;S_TYPE6;' +
               'S_TYPE7;S_TYPE8;S_TYPE9;' +
               'S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13'
              ); //service입력변수

    for ii := 0 to iCnt - 1 do
    begin
        SetFldValue(ii,[
                       sYYYY        [ii], sDocno      [ii], sVtype     [ii],
                       sSubdate     [ii], sSubamnm    [ii], sSubpmnm   [ii],
                       sEditid      [ii], sEditip     [ii], sEmpid     [ii],
                       sChangedateyn[ii], sChangeamyn [ii], sChangepmyn[ii], sChangedate[ii]
                       ]);
    end;

    if (txPutF('GA_DOCVA_I6')) then   //Tuxedo Service Call  ga_docva_i6.pc
    begin
        Result := 1;
        txFree;
    end;

end;

function HgaDocvat.insDocvat5: Integer;
begin

   //20150602 LEE 문서번호는 새로 생성하고 기존데이터는 복사해서 생성하는 쿼리 짜기...

   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8');
   SetFldValue(0 ,[ssYYYY,ssLocate,ssVtype,ssDocno,sEditid,sEditip,sEmpno,sVusecnt]);

   if (txPutF('GA_DOCVA_I8')) then  //ga_docva_i8.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HgaDocvat.insDocvat6: Integer;
begin
//
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7');
   SetFldValue(0 ,[sEmpno,sYYYY,sVtype,sVusecnt,sType,sEditid,sEditip]);

   if (txPutF('GA_DOCVA_I9')) then  //ga_docva_i9.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HgaDocvat.insDocvat7: Integer;
begin
//
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName(
              'S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6'
              );
   SetFldValue(0 ,[sYYYY,sLocate,ssDocno,
                   sVremark,sEditid,sEditip
                   ]);

   if (txPutF('GA_DOCVA_I10')) then  //ga_docva_i10.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;


function HgaDocvat.SelReason: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3'); //service입력변수
    SetFldValue(0,[sType,Comcd1,Comcd2,Comcd3]);

    if (txGetF('MD_MCOMC_L1')) then        //md_mcomc_l1.pc
    begin
        {
        GetFldVar('S_CODE1'     , sDeptCd   );
        GetFldVar('S_CODE2'     , sDeptNm   );
        GetFldVar('S_CODE3'     , sSupDept  );
        }
        GetFldVar('S_STRING3',  sComcd3  );
        GetFldVar('S_STRING6',  sComcdnm3);

        Result := GetRecordCnt('S_STRING3');
        txFree;

    end;

end;


function HgaDocvat.insDocvat8: Integer;
begin
//
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName(
              'S_TYPE1;S_TYPE2;S_TYPE3'
              );
   SetFldValue(0 ,[sYYYY,sLocate,ssDocno
                   ]);

   if (txPutF('GA_DOCVA_I11')) then  //ga_docva_i11.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HgaDocvat.insSubDrSign(iCnt: integer): Integer;
var
  ii : Integer;
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName(
               'S_TYPE1;S_TYPE2;S_TYPE3;' +
               'S_TYPE4'
              ); //service입력변수

    for ii := 0 to iCnt - 1 do
    begin
        SetFldValue(ii,[
                       sYYYY     [ii], sDocno    [ii], sEmpid    [ii],
                       sEditip   [ii]
                       ]);
    end;

    if (txPutF('GA_DOCVA_I5')) then   //Tuxedo Service Call  ga_docva_i5.pc
    begin
        Result := 1;
        txFree;
    end;

end;

//20150511 LEE
function HgaDocvat.SelAppInfo(ssLocate, ssMkdate, ssDocno,
  ssFlag: String): Integer;
begin

    Result := -1;
    txAlloc32; //Pointer를 받아옴.
    SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
    SetFldValue32(0,[ssLocate,ssMkdate,ssDocno,ssFlag]);

    if (txGetF32('GA_DOCVA_L6')) then //ga_docva_l6.pc
    begin
        //if (ssFlag = 'A') or
        //  (ssFlag = 'VV') or
        //  (ssFlag = 'VA') or
        //   (ssFlag = 'VF')
        //then
        //begin

           GetFldVar32('S_STRING1'   , sAppEmpnm1   );
           GetFldVar32('S_STRING2'   , sAppyn1      );
           GetFldVar32('S_STRING3'   , sAppgbn1     );
           GetFldVar32('S_STRING4'   , sAppEmpnm2   );
           GetFldVar32('S_STRING5'   , sAppyn2      );
           GetFldVar32('S_STRING6'   , sAppgbn2     );
           GetFldVar32('S_STRING7'   , sAppEmpnm3   );
           GetFldVar32('S_STRING8'   , sAppyn3      );
           GetFldVar32('S_STRING9'   , sAppgbn3     );
           GetFldVar32('S_STRING10'  , sAppEmpnm4   );
           GetFldVar32('S_STRING11'  , sAppyn4      );
           GetFldVar32('S_STRING12'  , sAppgbn4     );
           GetFldVar32('S_STRING13'  , sAppdate0    ); //20150615 LEE 추가
           GetFldVar32('S_STRING14'  , sAppdate1    );
           GetFldVar32('S_STRING15'  , sAppdate2    );
           GetFldVar32('S_STRING16'  , sAppdate3    );
           GetFldVar32('S_STRING17'  , sAppdate4    );
           //20150615 LEE
           GetFldVar32('S_STRING18'  , sAppjiknm0   );
           GetFldVar32('S_STRING19'  , sAppjiknm1   );
           GetFldVar32('S_STRING20'  , sAppjiknm2   );
           GetFldVar32('S_STRING21'  , sAppjiknm3   );
           GetFldVar32('S_STRING22'  , sAppjiknm4   );
           GetFldVar32('S_STRING23'  , sAppEmpnm0   );
           GetFldVar32('S_STRING24'  , sAppyn0      );
           GetFldVar32('S_STRING25'  , sAppgbn0     );

        //end

        Result := GetRecordCnt('S_STRING1');
        txFree32;

    end;

end;

function HgaDocvat.SelAppReturnInfo: Integer;
begin

    Result := -1;
    txAlloc32; //Pointer를 받아옴.
    SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
    SetFldValue32(0,[ssYYYY,ssLocate,ssVtype,ssDocNo,ssMkdate]);

    if (txGetF32('GA_DOCVA_L8')) then //ga_docva_l8.pc
    begin

        GetFldVar32('S_STRING1'   , sAppEmpnm1  );
        GetFldVar32('S_STRING2'   , sAppdate1   );
        GetFldVar32('S_STRING3'   , sAppRemark  );

        Result := GetRecordCnt('S_STRING1');
        txFree32;

    end;

end;

function HgaDocvat.SelAprolt: Integer;
begin
//
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
    SetFldValue(0,[ssLocate,ssVtype,ssEmpno]);

    if (txGetF('GA_DOCVA_L11')) then               //ga_docva_l11.pc
    begin

        GetFldVar('S_STRING1'   , sAproltcnt );

        Result := GetRecordCnt('S_STRING1');
        txFree;

    end;


end;

function HgaDocvat.SelDeptNm: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
    SetFldValue(0,[sType1,sType2]);

    if (txGetF('GA_DEPTC_L40')) then        //20150424 LEE md_deptc_l1.pc -> ga_deptc_l40.pc
    begin

        GetFldVar('S_CODE1'     , sDeptCd   );
        GetFldVar('S_CODE2'     , sDeptNm   );
        GetFldVar('S_CODE3'     , sSupdept  );

        Result := GetRecordCnt('S_CODE1');
        txFree;

    end;

end;


{ HgaDocvat }

function HgaDocvat.delDocvat(iCnt: Integer): Integer;
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

   for i := 0 to iCnt -1 do
   begin
     SetFldValue(i,[String(ssLocate[i]),
                    String(ssEmpno[i]),
                    String(ssVtype[i]),
                    String(ssYYYY[i])
                    ]);
   end;

   if (txPutF('GA_DOCVA_D1')) then begin //Tuxedo Service Call ga_docva_d1.pc
      Result := 1;
      txFree;
   end;
end;


function HgaDocvat.SelDrNm: Integer;
begin
//
    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
    SetFldValue(0,[sType1,sType2,sType3,sType4]);
    if (txGetF('MD_INSAM_L1')) then                //md_insam_l1.pc
    begin

        GetFldVar('S_STRING1'     , sEmpNo   );
        GetFldVar('S_STRING2'     , sEmpNm   );
        GetFldVar('S_STRING3'     , sComCdNm );
        GetFldVar('S_STRING4'     , sDeptCd  );
        GetFldVar('S_STRING5'     , sDeptNm  );
        GetFldVar('S_STRING6'     , sLicNo   );
        GetFldVar('S_STRING7'     , sMajorNo );
        GetFldVar('S_STRING10'    , sEmpid   );

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;

end;



function HgaDocvat.delDocvat1: Integer;
begin
//

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');                      //20150611 LEE sVcnt1, sAcnt1 추가

    SetFldValue(0,[ssYYYY,ssVtype,ssDocno,sVcnt1,sAcnt1,ssEmpno]);                      //20150611 LEE sVcnt1, sAcnt1 추가
    //ga_accid_d1.pc
    if (txPutF('GA_DOCVA_D2')) then   //Tuxedo Service Call  ga_docva_d2.pc
    begin
        Result := 1;
        txFree;
    end;

end;

function HgaDocvat.insAppHitory: Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9');

    SetFldValue(0,[string(ssYYYY   )
                 , string(ssLocate )
                 , string(ssVtype  )
                 , string(ssDocNo  )
                 , string(ssMkdate )
                 , string(ssEmpno )
                 , string(ssEditid )
                 , string(ssEditip )
                 , string(ssRemark )
                  ]);
    if (txPutF('GA_DOCVA_I7')) then   //ga_docva_i7.pc
    begin //Tuxedo Service Call
        Result := 1;
        txFree;
    end;

end;


function HgaDocvat.SelDocvlt: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service입력변수
    SetFldValue(0,[ssLocate,ssVtype,ssEmpno,ssFromdt,ssTodt,ssYYYY]);

    if (txGetF('GA_DOCVA_L2')) then               //ga_docva_l2.pc
    begin

        GetFldVar('S_STRING1'   , sEmpno    );
        GetFldVar('S_STRING2'   , sEmpnm    );
        GetFldVar('S_STRING3'   , sVtype    );
        GetFldVar('S_STRING4'   , sVfromdate);
        GetFldVar('S_STRING5'   , sVtodate  );
        GetFldVar('S_STRING6'   , sAcaname  );
        GetFldVar('S_STRING7'   , sAcaplace );
        GetFldVar('S_STRING8'   , sVremark  );
        GetFldVar('S_STRING9'   , sMkdate   );
        GetFldVar('S_STRING10'  , sDocno    );
        GetFldVar('S_STRING11'  , sVusecnt  );
        GetFldVar('S_STRING12'  , sOffresn  );
        GetFldVar('S_STRING13'  , sAmpmflag );
        GetFldVar('S_STRING14'  , sDocstep  );    //20150423 LEE 추가

        GetFldVar('S_STRING15'  , sVdetail  );    //20150426 LEE 추가
        GetFldVar('S_STRING16'  , sImpactfr );    //20150426 LEE 추가
        GetFldVar('S_STRING17'  , sReldoc   );    //20150426 LEE 추가
        GetFldVar('S_STRING18'  , sAdocYN   );    //20150426 LEE 추가
        GetFldVar('S_STRING19'  , sAfromdate);    //20150426 LEE 추가
        GetFldVar('S_STRING20'  , sAtodate  );    //20150426 LEE 추가
        GetFldVar('S_STRING21'  , sAusecnt  );    //20150426 LEE 추가
        GetFldVar('S_STRING22'  , sVtypecd  );    //20150426 LEE 추가
        GetFldVar('S_STRING23'  , sYYYY     );    //20150426 LEE 추가
        GetFldVar('S_STRING24'  , sTelno    );    //20150506 LEE 추가
        GetFldVar('S_STRING25'  , sHphoneno );    //20150506 LEE 추가
        GetFldVar('S_STRING26'  , sSubsign  );    //20150514 LEE 추가
        GetFldVar('S_STRING27'  , sAppRemark);    //20150515 LEE 추가
        GetFldVar('S_STRING28'  , sCdocyn   );    //20150603 LEE 추가
        GetFldVar('S_STRING29'  , sRemark   );    //20150718 LEE 추가

        GetFldVar('S_STRING30'  , sAppEmpno1);    //20150824 LEE 추가
        GetFldVar('S_STRING31'  , sAppEmpno2);    //20150824 LEE 추가
        GetFldVar('S_STRING32'  , sAppEmpno3);    //20150824 LEE 추가
        GetFldVar('S_STRING33'  , sAppEmpno4);    //20150824 LEE 추가
        GetFldVar('S_STRING34'  , sAppyn1   );    //20150824 LEE 추가
        GetFldVar('S_STRING35'  , sAppyn2   );    //20150824 LEE 추가
        GetFldVar('S_STRING36'  , sAppyn3   );    //20150824 LEE 추가
        GetFldVar('S_STRING37'  , sAppyn4   );    //20150824 LEE 추가
        GetFldVar('S_STRING38'  , sAppdate1 );    //20150824 LEE 추가
        GetFldVar('S_STRING39'  , sAppdate2 );    //20150824 LEE 추가
        GetFldVar('S_STRING40'  , sAppdate3 );    //20150824 LEE 추가
        GetFldVar('S_STRING41'  , sAppdate4 );    //20150824 LEE 추가
        GetFldVar('S_STRING42'  , sJikmu    );    //20161108 LEE 추가  

        Result := GetRecordCnt('S_STRING1');
        txFree;

    end;

end;



function HgaDocvat.SelSubDrInfo1: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
    SetFldValue(0,[ssYYYY,ssDocno,ssVtype]);

    if (txGetF('GA_DOCVA_L7')) then        //ga_docva_l7.pc
    begin

        GetFldVar('S_STRING1'   , sSubdate );
//        GetFldVar('S_STRING2'   , sSubamjik);
        GetFldVar('S_STRING2'   , sSubamnm );
//        GetFldVar('S_STRING4'   , sSubpmjik);
        GetFldVar('S_STRING3'   , sSubpmnm );
//        GetFldVar('S_STRING6'   , sSubamid );
//        GetFldVar('S_STRING7'   , sSubpmid );

//        GetFldVar('S_STRING8'   , sSubamsign );  //20150507 LEE
//        GetFldVar('S_STRING9'   , sSubpmsign );
//        GetFldVar('S_STRING10'  , sEmpnm1    );
//        GetFldVar('S_STRING11'  , sEmpnm2    );

        Result := GetRecordCnt('S_STRING1');
        txFree;

    end;

end;

 
function HgaDocvat.SelSubDrInfo: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
    SetFldValue(0,[ssYYYY,ssDocno,ssVtype]);

    if (txGetF('GA_DOCVA_L3')) then        //ga_docva_l3.pc
    begin

        GetFldVar('S_STRING1'   , sSubdate );
        GetFldVar('S_STRING2'   , sSubamjik);
        GetFldVar('S_STRING3'   , sSubamnm );
        GetFldVar('S_STRING4'   , sSubpmjik);
        GetFldVar('S_STRING5'   , sSubpmnm );
        GetFldVar('S_STRING6'   , sSubamid );
        GetFldVar('S_STRING7'   , sSubpmid );

        GetFldVar('S_STRING8'   , sSubamsign );  //20150507 LEE
        GetFldVar('S_STRING9'   , sSubpmsign );
        GetFldVar('S_STRING10'  , sEmpnm1    );
        GetFldVar('S_STRING11'  , sEmpnm2    );

        Result := GetRecordCnt('S_STRING1');
        txFree;

    end;

end;


function HgaDocvat.SelSubDrSign: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2'); //service입력변수
    SetFldValue(0,[ssYYYY,ssEmpno]);

    if (txGetF('GA_DOCVA_L4')) then        //ga_docva_l4.pc
    begin

        GetFldVar('S_STRING1'   , sEmpnm     );
        GetFldVar('S_STRING2'   , sSubdate   );
        GetFldVar('S_STRING3'   , sSubsign   );
        GetFldVar('S_STRING4'   , sVtype     );
        GetFldVar('S_STRING5'   , sAmpmflag  );
        GetFldVar('S_STRING6'   , sYYYY      );
        GetFldVar('S_STRING7'   , sDocno     );

        Result := GetRecordCnt('S_STRING1');
        txFree;

    end;

end;


function HgaDocvat.SelVacInfo(ssLocate, ssMkdate, ssFlag, ssEmpno,
  ssDocyear, ssMkdate1, ssYFlag: String): Integer;
begin
//
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service입력변수
   SetFldValue32(0,[ssLocate,ssMkdate,ssFlag,ssEmpno,ssDocyear,ssMkdate1,ssYFlag]);

   if (txGetF32('GA_DOCVA_L5')) then //ga_docva_l5.pc
   begin
      GetFldVar32('S_STRING1'   , sMkdate    );
      GetFldVar32('S_STRING2'   , sDocNo     );
      GetFldVar32('S_STRING3'   , sApocd     );
      GetFldVar32('S_STRING4'   , sApocdnm   );
      GetFldVar32('S_STRING5'   , sMkempno   );
      GetFldVar32('S_STRING6'   , sEmpnm     );
      GetFldVar32('S_STRING7'   , sDocstep   );
      GetFldVar32('S_STRING8'   , sDocspnm   );
      GetFldVar32('S_STRING9'   , sDocempno  );
      GetFldVar32('S_STRING10'  , sAppseqno  );
      GetFldVar32('S_STRING11'  , sCdabbrnm  );
      GetFldVar32('S_STRING12'  , sRemark    );
      GetFldVar32('S_STRING13'  , sAppRemark );
      GetFldVar32('S_STRING14'  , sEmail     );
      GetFldVar32('S_STRING15'  , sVfromdate );
      GetFldVar32('S_STRING16'  , sVtodate   );
      GetFldVar32('S_STRING17'  , sVtotcnt   );
      GetFldVar32('S_STRING18'  , sAfromdate );
      GetFldVar32('S_STRING19'  , sAtodate   );
      GetFldVar32('S_STRING20'  , sAtotcnt   );
      GetFldVar32('S_STRING21'  , sVdetail   );
      GetFldVar32('S_STRING22'  , sAcaname   );
      GetFldVar32('S_STRING23'  , sAcaplace  );
      GetFldVar32('S_STRING24'  , sVremark   );
      GetFldVar32('S_STRING25'  , sReldoc    );
      GetFldVar32('S_STRING26'  , sAdocYN    );
      GetFldVar32('S_STRING27'  , sImpactfr  );
      GetFldVar32('S_STRING28'  , sDeptNm    );
      GetFldVar32('S_STRING29'  , sTelno     );
      GetFldVar32('S_STRING30'  , sYYYY      );
      GetFldVar32('S_STRING31'  , sCdocyn    );   //20150604 LEE 추가
      GetFldVar32('S_STRING32'  , sJikmu     );   //20161104 LEE 추가        

      Result := GetRecordCnt('S_STRING1');
      txFree32;
    end;

end;


//20161104 LEE 전공의/인턴 추가에 따른 의사이름 조회 부분 전체 수정
function HgaDocvat.SelDrNm_New: Integer;
begin
//

    Result := -1;
    txAlloc;                          //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2');    //service입력변수
    SetFldValue(0,[sType1,sType2]);
    if (txGetF('GA_DOCVA_L21')) then  //ga_docva_l21.pc
    begin

        GetFldVar('S_STRING1'     , sEmpno   );
        GetFldVar('S_STRING2'     , sWkareacd);
        GetFldVar('S_STRING3'     , sEmpnm   );
        GetFldVar('S_STRING4'     , sJikmu   );  //20161109 LEE 추가
        GetFldVar('S_STRING5'     , sEmpid   );  //20161110 LEE 추가

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;


end;


function HgaInsamt.List2GaInsamt2: integer;
begin
//
    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

    SetFldValue(0,[sType1,                               // 사업장
                   sType2,                               // 부서구분
                   sType3,                               // 부서
                   SType4                                // 조회기준일
                   //,SType5                             // 20151105 lee 추가 : 조회구분(D 대진의 조회 N 해당과의사조회)
                  ] );

    if (txGetF('GA_DOCVA_L9')) then
    begin                                                 // Tuxedo Service Call ga_docva_l9.pc
        GetFldVar('S_STRING1'  , sEmpno             );    // 사번
        GetFldVar('S_STRING2'  , sEmpnm             );    // 성명
        GetFldVar('S_STRING3'  , sJikjongnm         );    // 직종
        GetFldVar('S_STRING4'  , sJikwenm           );    // 직위
    end;

    Result := GetRecordCnt('S_STRING1');
    txFree;

end;


function HgaInsab1.InsVacForApprovalAprov(iCnt: Integer): Integer;
var
 i : Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7');

   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[string(ssLocate [i])
                , string(ssMkdate [i])
                , string(ssDocNo  [i])
                , string(ssEditid [i])
                , string(ssEditip [i])
                , string(ssDocyear[i])
                , string(ssFlag   [i])]);
   end;
   if (txPutF('GA_APOID_I43')) then      //ga_apoid_i43.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;


function HgaInsab1.SelInsab6(ssLocate, ssApodate,
  ssDocNo,ssFlag: String): Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
   SetFldValue32(0,[ssLocate,ssMkdate,ssDocNo,ssFlag]);

       if (txGetF32('GA_INSAM_L19')) then //ga_insam_l19.pc
       begin
           if (ssFlag = 'A') or
              (ssFlag = 'VV') or         //20150414 LEE 추가
              (ssFlag = 'VA') or
              (ssFlag = 'VF')
           then
           begin
              GetFldVar32('S_STRING1'   , sAppseqno     );
              GetFldVar32('S_STRING2'   , sAppempno     );
              GetFldVar32('S_STRING3'   , sAppEmpnm     );
              GetFldVar32('S_STRING4'   , sJikwe        );
              GetFldVar32('S_STRING5'   , sAppyn        );
              GetFldVar32('S_STRING6'   , sAppgbn       );

           end
           else if (ssFlag = 'C') or
                   (ssFlag = 'V2')      //20150414 LEE 추가
           then
           begin
              GetFldVar32('S_STRING1'   , sAppseqno     );
              GetFldVar32('S_STRING2'   , sAppempno     );
              GetFldVar32('S_STRING3'   , sAppEmpnm     );
              GetFldVar32('S_STRING4'   , sRemtxt       );
           end
           else if ssFlag = 'V' then                                            //20150414 LEE 추가
           begin
              GetFldVar32('S_STRING1'   , sEmpno        );
              GetFldVar32('S_STRING2'   , sEmpnm        );
              GetFldVar32('S_STRING3'   , sApodate      );
              GetFldVar32('S_STRING4'   , sEnddate      );
              GetFldVar32('S_STRING5'   , sAcaname      );
              GetFldVar32('S_STRING6'   , sAcaplace     );
              GetFldVar32('S_STRING7'   , sRemtxt       );
              GetFldVar32('S_STRING8'   , sVtype        );
              GetFldVar32('S_STRING9'   , sMeddept      );                      //20150619 LEE 추가
              GetFldVar32('S_STRING10'  , sMeddr        );
              GetFldVar32('S_STRING11'  , sAfromdate    );
              GetFldVar32('S_STRING12'  , sAtodate      );
              GetFldVar32('S_STRING13'  , sVaccnt       );
              GetFldVar32('S_STRING14'  , sAvaccnt      );
           end
           else
           begin
              GetFldVar32('S_STRING1'   , sEmpno        );
              GetFldVar32('S_STRING2'   , sEmpnm        );
              GetFldVar32('S_STRING3'   , sConcuryn     );
              GetFldVar32('S_STRING4'   , sApodate      );
              GetFldVar32('S_STRING5'   , sEnddate      );
              GetFldVar32('S_STRING6'   , sDeptcd       );
              GetFldVar32('S_STRING7'   , sDeptcdnm     );
              GetFldVar32('S_STRING8'   , sWkareacd     );
              GetFldVar32('S_STRING9'   , sWkareacdnm   );
              GetFldVar32('S_STRING10'  , sJikmu        );
              GetFldVar32('S_STRING11'  , sJikmunm      );
              GetFldVar32('S_STRING12'  , sJikgun       );
              GetFldVar32('S_STRING13'  , sJikgunnm     );
              GetFldVar32('S_STRING14'  , sJikjong      );
              GetFldVar32('S_STRING15'  , sJikjongnm    );
              GetFldVar32('S_STRING16'  , sJikwe        );
              GetFldVar32('S_STRING17'  , sJikwenm      );
              GetFldVar32('S_STRING18'  , sJikchek      );
              GetFldVar32('S_STRING19'  , sJikcheknm    );
              GetFldVar32('S_STRING20'  , sHobong       );
              GetFldVar32('S_STRING21'  , sRemtxt       );
              GetFldVar32('S_STRING22'  , sApocd        );
              GetFldVar32('S_STRING23'  , sPredeptcd    );
              GetFldVar32('S_STRING24'  , sPrewkarreacd );
              GetFldVar32('S_STRING25'  , sPredeptcdnm  );
              GetFldVar32('S_STRING26'  , sPrewkarreacdnm);
              GetFldVar32('S_STRING27'  , sApocdnm      );
              GetFldVar32('S_STRING28'  , sWkplace      );
              GetFldVar32('S_STRING29'  , sWkplacenm    );
              GetFldVar32('S_STRING30'  , sDocno        );
              GetFldVar32('S_STRING31'  , sPrewkplace   );
              GetFldVar32('S_STRING32'  , sPrewkplacenm );
              GetFldVar32('S_STRING33'  , sPrejikmu     );
              GetFldVar32('S_STRING34'  , sPrejikmunm   );
           end;

            Result := GetRecordCnt('S_STRING1');
            txFree32;
       end;

end;


function HgaInsab1.InsVacData(iCnt: Integer): Integer;
var
 i : Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7');

   for i := 0 to iCnt -1 do
   begin
   SetFldValue(i,[string(ssLocate   [i])
                , string(ssMkdate   [i])
                , string(ssDocNo    [i])
                , string(ssEditid   [i])
                , string(ssEditip   [i])
                , string(ssDocyear  [i])
                , string(ssFlag     [i])]);
   end;
   if (txPutF('GA_APOID_I40')) then  //ga_apoid_i40.pc
   begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

{ HgaGyeolhack }
(***** 타기관 결핵 검진 내용 삭제 2018-04-16 *****)
function HgaGyeolhack.DelGyeolhack: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt, ssGJType]);

   if (txPutF('GA_EMPMDGH_D1')) then  // ga_empmdgh_d1.pc
   begin
      Result := 1;
      txFree;
   end;

end;

{ 오정은 2019-03-19 }
function HgaGyeolhack.DelChaeYong: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt, ssGJType]);

   if (txPutF('GA_EMPMDCY_D1')) then  // ga_empmdcy_d1.pc
   begin
      Result := 1;
      txFree;
   end;

end;


{ 오정은 2019-03-19 }
function HgaGyeolhack.DelYeBang: Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt, ssGJType]);

   if (txPutF('GA_EMPMDYB_D1')) then  // ga_empmdyb_d1.pc
   begin
      Result := 1;
      txFree;
   end;

end;


(***** 타기관 결핵 검진 내용 입력/수정 *****)
function HgaGyeolhack.InsUpdGyeolhack: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;' +
             'S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;' +
             'S_TYPE10;S_TYPE11;');  //오정은 추가
  SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt,
                  sExamDate, sExamHspt, sExamName, sExamRslt, sExamMemo,
                  sChoice, ssGJType]); //오정은 추가

   if (txPutF('GA_EMPMDGH_I1')) then   // ga_empmdgh_i1.pc
   begin
      Result := 1;
      txFree;
   end;

end;

(***** (오정은 2019-03-18 추가) 채용 검진 내용 입력/수정 *****)
function HgaGyeolhack.InsUpdCyGunjin: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;' +
             'S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;' +
             'S_TYPE10;S_TYPE11;');
  SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt,
                  sExamDate, sExamHspt, sExamName, sExamRslt, sExamMemo,
                  sChoice, ssGJType]);

   if (txPutF('GA_EMPMDCY_I1')) then   // ga_empmdcy_i1.pc
   begin
      Result := 1;
      txFree;
   end;

end;


(***** (오정은 2019-03-19 추가) 예방접종 내용 입력/수정 *****)
function HgaGyeolhack.InsUpdYbGunjin: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;' +
             'S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;' +
             'S_TYPE10;S_TYPE11;');
  SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt,
                  sExamDate, sExamHspt, sExamName, sExamRslt, sExamMemo,
                  sChoice, ssGJType]);

   if (txPutF('GA_EMPMDYB_I1')) then   // ga_empmdyb_i1.pc
   begin
      Result := 1;
      txFree;
   end;

end;

// 예방접종 엑셀업로드 추가 (오정은 2019-05-03)
function HgaGyeolhack.InsExcelYbGunjin(iCnt:Integer) :Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;' +
             'S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;' +
             'S_TYPE10;S_TYPE11;');
  SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt,
                  sExamDate, sExamHspt, sExamName, sExamRslt, sExamMemo,
                  sChoice, ssGJType]);

   if (txPutF('GA_EMPMDYB_I1')) then   // ga_empmdyb_i1.pc
   begin
      Result := 1;
      txFree;
   end;
end;

(***** 모든 결핵 검진 내용 조회 (강남차,분당차,차움삼성,타기관) *****)
function HgaGyeolhack.SelGyeolhack: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');  //(오정은 2019-03-18 추가)
  SetFldValue(0, [ssEmpno, ssLoc, ssGJType]);

  if txPutF('GA_EMPMDGH_L1') then        // ga_empmdgh_l1.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

(***** 채용검진 - 조회 *****)
function HgaGyeolhack.SelChaeyong: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
  SetFldValue(0, [ssEmpno, ssLoc, ssGJType]);

  if txPutF('GA_EMPMDCY_L1') then        // ga_empmdcy_l1.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt); //(오정은 2019-03-18 추가)

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

(***** 예방접종 - 조회 *****)
function HgaGyeolhack.SelYebang: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
  SetFldValue(0, [ssEmpno, ssLoc, ssGJType]);

  if txPutF('GA_EMPMDYB_L1') then        // ga_empmdyb_l1.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt); //(오정은 2019-03-18 추가)

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// 수두예방접종 통계- 조회///////
//////// 2019-09-20 오정은 ////////////
function HgaGyeolhack.SelSDYBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);
  if txPutF('GA_INSAMT_L5') then        // ga_insamt_l5.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// MMR예방접종 통계- 조회///////
//////// 2019-09-20 오정은 ////////////
function HgaGyeolhack.SelMMRYBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L6') then        // ga_insamt_l6.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// 백일해예방접종 통계- 조회///////
//////// 2019-09-20 오정은 ////////////
function HgaGyeolhack.SelBIHYBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L7') then        // ga_insamt_l7.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// B형간염예방접종 통계- 조회////
//////// 2019-09-20 오정은 ////////////
function HgaGyeolhack.SelBHGYYBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L8') then        // ga_insamt_l8.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
///// 인플루엔자예방접종 통계- 조회////
//////// 2019-09-20 오정은 ////////////
function HgaGyeolhack.SelInfluYBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L9') then        // ga_insamt_l9.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// 결핵검진1 통계- 조회//////////
//////// 2019-09-20 오정은 ////////////
function HgaGyeolhack.SelGH1YBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L10') then        // ga_insamt_l10.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// 결핵검진2 통계- 조회//////////
//////// 2019-09-20 오정은 ////////////
function HgaGyeolhack.SelGH2YBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L11') then        // ga_insamt_l11pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

/////////////////////////////////////
////// 코로나19검사  통계- 조회//////
////// 2020-10-12 이은아  ///////////
function HgaGyeolhack.SelCRYBTonggye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L31') then        //ga_insamt_l31.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

/////////////////////////////////////
////// 코로나19예방접종 통계- 조회///
////// 2021-05-10 이은아  ///////////
function HgaGyeolhack.SelCRYBTonggye2: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn, sHsptGbn]);

  if txPutF('GA_INSAMT_L32') then        //ga_insamt_l32.pc
  begin
    GetFldVar('S_STRING1', sExamDate);
    GetFldVar('S_STRING2', sExamHspt);
    GetFldVar('S_STRING3', sExamName);
    GetFldVar('S_STRING4', sExamRslt);
    GetFldVar('S_STRING5', sExamMemo);
    GetFldVar('S_STRING6', sSDateCnt);
    GetFldVar('S_STRING7', sPatno   );
    GetFldVar('S_STRING8', sDeptnm  );
    GetFldVar('S_STRING9', sWkareanm);
    GetFldVar('S_STRING10', sEmpno  );
    GetFldVar('S_STRING11', sEmpnm  );
    GetFldVar('S_STRING12', sEntdt  );
    GetFldVar('S_STRING13', sJikjong);
    GetFldVar('S_STRING14', sJindt  );
    GetFldVar('S_STRING15', sRetdt  );

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

{ HgaBosang }

function HgaBosang.SelAvbBS: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
  SetFldValue(0, [ssEmpno, ssLocate, ssSdate, ssEdate, ssGubun]);

  if txPutF('GA_BOSANG_L1') then        // ga_bosang_l1.pc
  begin
    GetFldVar('S_STRING1', sNewTime);
    GetFldVar('S_STRING2', sUseTime);
    GetFldVar('S_STRING3', sAvbtime);

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaBosang.SelBSHistroty: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');
  SetFldValue(0, [ssEmpno, ssLocate, ssSdate, ssEdate, ssGubun, ssDeptCD]);

  if txPutF('GA_BOSANG_L2') then        // ga_bosang_l2.pc
  begin
    GetFldVar('S_STRING1', sBsgbn);
    GetFldVar('S_STRING2', sEmpno);
    GetFldVar('S_STRING3', sBsdate);
    GetFldVar('S_STRING4', sNewtime);
    GetFldVar('S_STRING5', sAvbTime);
    GetFldVar('S_STRING6', sUsetime);
    GetFldVar('S_STRING7', sDeptnm);
    GetFldVar('S_STRING8', sEmpnm);
    GetFldVar('S_STRING9', sWkstime);

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

{오정은 추가 2019.03.29 지우기
function HgaMdutyt.SelDocDuty : Integer;
var
  ii, jj : Integer;
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE8;');
  SetFldValue(0, [sDeptcd, sEmpno, sStartDay, sLastDay, sEndDay, ssYYMM, ssWkyymm]);

  SetFldName('S_TYPE7;');
  for ii:=1 to 31 do
  begin
   SetFldValue(ii, [sDuty[ii]]);
  end;


  ShowMessage('프록시 전');
  if(txGetF('GA_DOCDTY_L1')) then
  begin
    ShowMessage('파일 있음');

    GetFldVar('S_STRING1'  , sEmpno);
    GetFldVar('S_STRING2'  , dutyAvg80Flag);
    GetFldVar('S_STRING3'  , gdAvg3Flag);

    for jj := 1 to 31 do
    begin
      GetFldVar('S_STRING4'  , MaxDuty36[jj]);
      GetFldVar('S_STRING5'  , MinFree10[jj]);
    end;




    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;
}

function HgaMdutyt.SelMDutyt20: Integer; // 2020.01.05 오정은 추가
begin
 Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);

  //ga_mduty_l20.pc
  if (txGetF('GA_MDUTY_L30')) then //ga_mduty_l20.pc -> ga_mduty_l30.pc 20200318 OJE
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // 사업장
    GetFldVar('S_STRING2' ,  sDeptcd   );    // 소속부서
    GetFldVar('S_STRING3' ,  sEmpno    );    // 사원번호
    GetFldVar('S_STRING4' ,  sEmpnm    );    // 사원명
    GetFldVar('S_STRING5' ,  sMkyymm   );    // 작성년월
    GetFldVar('S_STRING6' ,  sCloseyn  );    // 마감여부
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 일 근무
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 일 근무
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 일 근무
    GetFldVar('S_STRING10',  sDuty04   );    // 04 일 근무

    GetFldVar('S_STRING11',  sDuty05   );    // 05 일 근무
    GetFldVar('S_STRING12',  sDuty06   );    // 06 일 근무
    GetFldVar('S_STRING13',  sDuty07   );    // 07 일 근무
    GetFldVar('S_STRING14',  sDuty08   );    // 08 일 근무
    GetFldVar('S_STRING15',  sDuty09   );    // 09 일 근무
    GetFldVar('S_STRING16',  sDuty10   );    // 10 일 근무
    GetFldVar('S_STRING17',  sDuty11   );    // 11 일 근무
    GetFldVar('S_STRING18',  sDuty12   );    // 12 일 근무
    GetFldVar('S_STRING19',  sDuty13   );    // 13 일 근무
    GetFldVar('S_STRING20',  sDuty14   );    // 14 일 근무

    GetFldVar('S_STRING21',  sDuty15   );    // 15 일 근무
    GetFldVar('S_STRING22',  sDuty16   );    // 16 일 근무
    GetFldVar('S_STRING23',  sDuty17   );    // 17 일 근무
    GetFldVar('S_STRING24',  sDuty18   );    // 18 일 근무
    GetFldVar('S_STRING25',  sDuty19   );    // 19 일 근무
    GetFldVar('S_STRING26',  sDuty20   );    // 20 일 근무
    GetFldVar('S_STRING27',  sDuty21   );    // 21 일 근무
    GetFldVar('S_STRING28',  sDuty22   );    // 22 일 근무
    GetFldVar('S_STRING29',  sDuty23   );    // 23 일 근무
    GetFldVar('S_STRING30',  sDuty24   );    // 24 일 근무

    GetFldVar('S_STRING31',  sDuty25   );    // 25 일 근무
    GetFldVar('S_STRING32',  sDuty26   );    // 26 일 근무
    GetFldVar('S_STRING33',  sDuty27   );    // 27 일 근무
    GetFldVar('S_STRING34',  sDuty28   );    // 28 일 근무
    GetFldVar('S_STRING35',  sDuty29   );    // 29 일 근무
    GetFldVar('S_STRING36',  sDuty30   );    // 30 일 근무
    GetFldVar('S_STRING37',  sDuty31   );    // 31 일 근무
    GetFldVar('S_STRING38',  sJikwenm  );    // 직위명
    GetFldVar('S_STRING39',  sTotvcnt  );    // 총연차
    GetFldVar('S_STRING40',  sUsevcnt  );    // 사용연차

    GetFldVar('S_STRING41',  sAllconyn );    // 결재완료 여부
    GetFldVar('S_STRING42',  sAppdate  );    // 작성일자
    GetFldVar('S_STRING43',  sMkdeptcd );    // 작성부서
    GetFldVar('S_STRING44',  sMkempno  );    // 작성자사번
    GetFldVar('S_STRING45',  sAppseqno );    // 문서일련번호
    GetFldVar('S_STRING46',  sMeddept  );    // 간호부서코드       추가 김용욱 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // 근무부서코드
    GetFldVar('S_STRING48',  sUserid   );    // 간호부서사용userid
    GetFldVar('S_STRING49',  sChkyn    );    // 인사부서 결재완료 여부
    GetFldVar('S_STRING50',  sDocstep  );    // 문서단계
    GetFldVar('S_STRING51',  sWkareacdnm  );    // 문서단계
    GetFldVar('S_STRING52',  sHobong   );    //

    GetFldVar('S_STRING53',  sDutytime );    //
    GetFldVar('S_STRING54',  sDutytime1);    //
    GetFldVar('S_STRING55',  sMagamyn  );    // 근태집계마감여부 20170523 LEE
    GetFldVar('S_STRING56',  sNdutytime);    // 1.5배근태시간 20171128 LEE

    GetFldVar('S_STRING57',  sDutytime11);   // 2018년기준  20171128 LEE
    GetFldVar('S_STRING58',  sNdutytime1);   // 1.5배근태시간 2018년기준  20171128 LEE
    GetFldVar('S_STRING59',  sYearcnt);      // 전공의연차카운트 2018년기준  20171128 LEE

    GetFldVar('S_STRING60',  sDuty90);      // 전공의연차카운트 2018년기준  20171128 LEE
    GetFldVar('S_STRING61',  sDuty91);      // 전공의연차카운트 2018년기준  20171128 LEE
    GetFldVar('S_STRING62',  sNtmcnt);      // 20210726 전공의 심야시간 추가

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.SelMdutyt8: Integer; // 2020.01.05 오정은 추가
begin
 Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
  SetFldValue(0,[ssLocate, ssYYMMst, ssYYMMed, ssDeptcd]);

  if (txGetF('GA_MDUTY_L21')) then    // ga_mduty_l21.pc
  begin     //Tuxedo Service Call
    GetFldVar32('S_STRING1' ,  sHobong     );
    GetFldVar32('S_STRING2' ,  sEmpno      );
    GetFldVar32('S_STRING3' ,  sEmpnm      );
    GetFldVar32('S_STRING4' ,  sGbn        );
    GetFldVar32('S_STRING5' ,  sDuty01     );
    GetFldVar32('S_STRING6' ,  sDuty02     );
    GetFldVar32('S_STRING7' ,  sDuty03     );
    GetFldVar32('S_STRING8' ,  sDuty04     );
    GetFldVar32('S_STRING9' ,  sDuty05     );
    GetFldVar32('S_STRING10',  sDuty06     );
    GetFldVar32('S_STRING11',  sDuty07     );
    GetFldVar32('S_STRING12',  sDuty08     );
    GetFldVar32('S_STRING13',  sDuty09     );
    GetFldVar32('S_STRING14',  sDuty10     );
    GetFldVar32('S_STRING15',  sDuty11     );
    GetFldVar32('S_STRING16',  sDuty12     );
    GetFldVar32('S_STRING17',  sDuty13     );
    GetFldVar32('S_STRING18',  sDuty14     );
    GetFldVar32('S_STRING19',  sDuty15     );
    GetFldVar32('S_STRING20',  sDuty16     );
    GetFldVar32('S_STRING21',  sDuty17     );
    GetFldVar32('S_STRING22',  sDuty18     );
    GetFldVar32('S_STRING23',  sDuty19     );
    GetFldVar32('S_STRING24',  sDuty20     );
    GetFldVar32('S_STRING25',  sDuty21     );
    GetFldVar32('S_STRING26',  sDuty22     );
    GetFldVar32('S_STRING27',  sDuty23     );
    GetFldVar32('S_STRING28',  sDuty24     );
    GetFldVar32('S_STRING29',  sDuty25     );
    GetFldVar32('S_STRING30',  sDuty26     );
    GetFldVar32('S_STRING31',  sDuty27     );
    GetFldVar32('S_STRING32',  sDuty28     );
    GetFldVar32('S_STRING33',  sDuty29     );
    GetFldVar32('S_STRING34',  sDuty30     );
    GetFldVar32('S_STRING35',  sDuty31     );
    GetFldVar32('S_STRING36',  sDuty32     );
    GetFldVar32('S_STRING37',  sDuty33     );
    GetFldVar32('S_STRING38',  sDuty34     );
    GetFldVar32('S_STRING39',  sDuty35     );

    GetFldVar32('S_STRING40',  sVcnt       );
    GetFldVar32('S_STRING41',  sOtcnt      );
    GetFldVar32('S_STRING42',  sItcnt      );
    GetFldVar32('S_STRING43',  sP1cnt      );
    GetFldVar32('S_STRING44',  sP2cnt      );
    
    Result := GetRecordCnt32('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.GetCalendar2: Integer; // 2020.01.05 오정은 추가
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수

    SetFldValue(0,[ ssFromdate
                  , ssTodate   ]);

    if (txGetF('GA_CALEND_L3')) then  //ga_calend_l3.pc
    begin
      GetFldVar('S_STRING1'  , ssDays    );
      GetFldVar('S_STRING2'  , ssDayCnt  );
      GetFldVar('S_STRING3'  , ssDD      );
      GetFldVar('S_STRING4'  , ssMinDays );
      GetFldVar('S_STRING5'  , ssMaxDays );

      Result := GetRecordCnt('S_STRING1');
      txFree;
    end;
end;

function HgaMdutyt.GetCalendar1: Integer; // 2020.01.05 오정은 추가
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수

    SetFldValue(0,[ ssFromdate
                  , ssTodate   ]);

    if (txGetF('GA_CALEND_L2')) then  //ga_calend_l2.pc
    begin
      GetFldVar('S_STRING1'  , ssDays    );
      GetFldVar('S_STRING2'  , ssDayCnt  );
      GetFldVar('S_STRING3'  , ssDD      );
      GetFldVar('S_STRING4'  , ssMinDays );
      GetFldVar('S_STRING5'  , ssMaxDays );

      Result := GetRecordCnt('S_STRING1');
      txFree;
    end;
end;

function HgaMdutyt.GetCalendar3: Integer; // 2020.01.05 오정은 추가
begin
//
    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수

    SetFldValue(0,[ ssFromdate
                  , ssTodate   ]);

    if (txGetF('GA_CALEND_L4')) then  //ga_calend_l4.pc
    begin
      GetFldVar('S_STRING1'  , ssDays    );
      GetFldVar('S_STRING2'  , ssDayCnt  );
      GetFldVar('S_STRING3'  , ssDD      );
      GetFldVar('S_STRING4'  , ssMinDays );
      GetFldVar('S_STRING5'  , ssMaxDays );

      Result := GetRecordCnt('S_STRING1');
      txFree;
    end;

end;

function HgaMdutyt.SaveMDutyt4: Integer; // 2020.01.05 오정은 추가
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
             'S_TYPE11;');

   SetFldValue(0,[sLocate
                ,sEmpno
                ,sFromDt
                ,sToDt
                ,sDuty01
                ,sDeptcd
                ,sDoctype
                ,sAppseqno
                ,sEditid
                ,sEditip
                ,sWkareacd]);

  if (txPutF('GA_MDUTY_I9')) then   //ga_mduty_i9.pc
  begin
    Result := 1;
    txFree;
  end;
end;

function HgaMdutyt.SelMdutyt26: Integer; // 2020.01.05 오정은 추가
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
  SetFldValue(0,[sLocate, sYYMM, sDeptcd, sFlag, sEmpno]);

  if (txGetF('GA_MDUTY_L26')) then    // ga_mduty_l26.pc
  begin     //Tuxedo Service Call
    GetFldVar32('S_STRING1' ,  ssNmonths   );
    GetFldVar32('S_STRING2' ,  ssWkareacd  );
    GetFldVar32('S_STRING3' ,  ssHobong    );
    GetFldVar32('S_STRING4' ,  ssEmpno     );
    GetFldVar32('S_STRING5' ,  ssEmpnm     );
    GetFldVar32('S_STRING6' ,  ssGbn       );
    GetFldVar32('S_STRING7' ,  ssRemark1   );
    GetFldVar32('S_STRING8' ,  ssWeeks1    );
    GetFldVar32('S_STRING9' ,  ssWeeks2    );
    GetFldVar32('S_STRING10',  ssWeeks3    );
    GetFldVar32('S_STRING11',  ssWeeks4    );
    GetFldVar32('S_STRING12',  ssWeeks5    );
    GetFldVar32('S_STRING13',  ssVflag     );
    GetFldVar32('S_STRING14',  ssRemark    );

    Result := GetRecordCnt32('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.SelMdutyt26_1: Integer;  // 2020.01.05 오정은 추가
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
    SetFldValue(0,[sLocate, sYYMM, sDeptcd, sFlag, sEmpno]);

    if (txGetF('GA_MDUTY_L45')) then    // ga_mduty_l45.pc
    begin                               // Tuxedo Service Call
        GetFldVar32('S_STRING1' ,  ssEmpno     );
        GetFldVar32('S_STRING2' ,  ssDutydate  );
        GetFldVar32('S_STRING3' ,  ssDutycode  );   //
        GetFldVar32('S_STRING4' ,  ssWeekcnt   );
        GetFldVar32('S_STRING5' ,  ssTimegap   );
        GetFldVar32('S_STRING6' ,  ssDutytime  );
        GetFldVar32('S_STRING7' ,  ssResttime  );

        Result := GetRecordCnt32('S_STRING1');
        txFree;
    end;
end;

function HgaMdutyt.SelMdutyt22: Integer; // 2020.01.05 오정은 추가
begin
  Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service입력변수
  SetFldValue(0,[sLocate, sYYMM, sDeptcd, sFlag, sEmpno]);

  if (txGetF('GA_MDUTY_L22')) then    // ga_mduty_l22.pc
  begin     //Tuxedo Service Call
    GetFldVar32('S_STRING1' ,  ssNmonths    );
    GetFldVar32('S_STRING2' ,  ssWkareacd  );
    GetFldVar32('S_STRING3' ,  ssHobong    );
    GetFldVar32('S_STRING4' ,  ssEmpno     );
    GetFldVar32('S_STRING5' ,  ssEmpnm     );
    GetFldVar32('S_STRING6' ,  ssGbn       );
    GetFldVar32('S_STRING7' ,  ssRemark1   );
    GetFldVar32('S_STRING8' ,  ssWeeks1    );
    GetFldVar32('S_STRING9' ,  ssWeeks2    );
    GetFldVar32('S_STRING10',  ssWeeks3    );
    GetFldVar32('S_STRING11',  ssWeeks4    );
    GetFldVar32('S_STRING12',  ssWeeks5    );
    GetFldVar32('S_STRING13',  ssVflag     );
    GetFldVar32('S_STRING14',  ssRemark     );


    Result := GetRecordCnt32('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.SelMdutyt8n: Integer; // 2020.01.05 오정은 추가
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
    SetFldValue(0,[ssLocate, ssYYMMst, ssYYMMed, ssDeptcd]);

    if (txGetF('GA_MDUTY_L27')) then    // ga_mduty_l27.pc
    begin     //Tuxedo Service Call
        GetFldVar('S_STRING1' ,  sHobong     );
        GetFldVar('S_STRING2' ,  sEmpno      );
        GetFldVar('S_STRING3' ,  sEmpnm      );
        GetFldVar('S_STRING4' ,  sGbn        );
        GetFldVar('S_STRING5' ,  sDuty01     );
        GetFldVar('S_STRING6' ,  sDuty02     );
        GetFldVar('S_STRING7' ,  sDuty03     );
        GetFldVar('S_STRING8' ,  sDuty04     );
        GetFldVar('S_STRING9' ,  sDuty05     );
        GetFldVar('S_STRING10',  sDuty06     );
        GetFldVar('S_STRING11',  sDuty07     );
        GetFldVar('S_STRING12',  sDuty08     );
        GetFldVar('S_STRING13',  sDuty09     );
        GetFldVar('S_STRING14',  sDuty10     );
        GetFldVar('S_STRING15',  sDuty11     );
        GetFldVar('S_STRING16',  sDuty12     );
        GetFldVar('S_STRING17',  sDuty13     );
        GetFldVar('S_STRING18',  sDuty14     );
        GetFldVar('S_STRING19',  sDuty15     );
        GetFldVar('S_STRING20',  sDuty16     );
        GetFldVar('S_STRING21',  sDuty17     );
        GetFldVar('S_STRING22',  sDuty18     );
        GetFldVar('S_STRING23',  sDuty19     );
        GetFldVar('S_STRING24',  sDuty20     );
        GetFldVar('S_STRING25',  sDuty21     );
        GetFldVar('S_STRING26',  sDuty22     );
        GetFldVar('S_STRING27',  sDuty23     );
        GetFldVar('S_STRING28',  sDuty24     );
        GetFldVar('S_STRING29',  sDuty25     );
        GetFldVar('S_STRING30',  sDuty26     );
        GetFldVar('S_STRING31',  sDuty27     );
        GetFldVar('S_STRING32',  sDuty28     );
        GetFldVar('S_STRING33',  sDuty29     );
        GetFldVar('S_STRING34',  sDuty30     );
        GetFldVar('S_STRING35',  sDuty31     );
        GetFldVar('S_STRING36',  sDuty32     );
        GetFldVar('S_STRING37',  sDuty33     );
        GetFldVar('S_STRING38',  sDuty34     );
        GetFldVar('S_STRING39',  sDuty35     );
        GetFldVar('S_STRING40',  sVcnt       );
        GetFldVar('S_STRING41',  sOtcnt      );
        GetFldVar('S_STRING42',  sItcnt      );
        GetFldVar('S_STRING43',  sP1cnt      );
        GetFldVar('S_STRING44',  sP2cnt      );

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;

end;

function HgaMdutyt.SelMdutyt9: Integer; // 2020.01.05 오정은 추가
begin
//

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service입력변수
    SetFldValue(0,[ssLocate, ssYYMMst, ssYYMMed, ssDeptcd]);

    if (txGetF('GA_MDUTY_L28')) then    // ga_mduty_l28.pc
    begin     //Tuxedo Service Call
        GetFldVar('S_STRING1' ,  sHobong     );
        GetFldVar('S_STRING2' ,  sEmpno      );
        GetFldVar('S_STRING3' ,  sEmpnm      );
        GetFldVar('S_STRING4' ,  sGbn        );
        GetFldVar('S_STRING5' ,  sDuty01     );
        GetFldVar('S_STRING6' ,  sDuty02     );
        GetFldVar('S_STRING7' ,  sDuty03     );
        GetFldVar('S_STRING8' ,  sDuty04     );
        GetFldVar('S_STRING9' ,  sDuty05     );
        GetFldVar('S_STRING10',  sDuty06     );
        GetFldVar('S_STRING11',  sDuty07     );
        GetFldVar('S_STRING12',  sDuty08     );
        GetFldVar('S_STRING13',  sDuty09     );
        GetFldVar('S_STRING14',  sDuty10     );
        GetFldVar('S_STRING15',  sDuty11     );
        GetFldVar('S_STRING16',  sDuty12     );
        GetFldVar('S_STRING17',  sDuty13     );
        GetFldVar('S_STRING18',  sDuty14     );
        GetFldVar('S_STRING19',  sDuty15     );
        GetFldVar('S_STRING20',  sDuty16     );
        GetFldVar('S_STRING21',  sDuty17     );
        GetFldVar('S_STRING22',  sDuty18     );
        GetFldVar('S_STRING23',  sDuty19     );
        GetFldVar('S_STRING24',  sDuty20     );
        GetFldVar('S_STRING25',  sDuty21     );
        GetFldVar('S_STRING26',  sDuty22     );
        GetFldVar('S_STRING27',  sDuty23     );
        GetFldVar('S_STRING28',  sDuty24     );
        GetFldVar('S_STRING29',  sDuty25     );
        GetFldVar('S_STRING30',  sDuty26     );
        GetFldVar('S_STRING31',  sDuty27     );
        GetFldVar('S_STRING32',  sDuty28     );
        GetFldVar('S_STRING33',  sDuty29     );
        GetFldVar('S_STRING34',  sDuty30     );
        GetFldVar('S_STRING35',  sDuty31     );
        GetFldVar('S_STRING36',  sDuty32     );
        GetFldVar('S_STRING37',  sDuty33     );
        GetFldVar('S_STRING38',  sDuty34     );
        GetFldVar('S_STRING39',  sDuty35     );
        GetFldVar('S_STRING40',  sVcnt       );
        GetFldVar('S_STRING41',  sOtcnt      );
        GetFldVar('S_STRING42',  sItcnt      );
        GetFldVar('S_STRING43',  sP1cnt      );
        GetFldVar('S_STRING44',  sP2cnt      );

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;

function HgaMdutyt.SaveMDutyt9: Integer; // 2020.01.05 오정은 추가
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');
    SetFldValue(0,[sLocate
                  ,sMkyymm
                  ,sWkareacd
                  ,sDoctype
                  ,sEditid
                  ,sEditip]);
    if (txPutF('GA_MDUTY_I11')) then   //ga_mduty_i11.pc
    begin
      Result := 1;
      txFree;
    end;
  
end;

function HgaMdutyt.CloseDuty: Integer; // 2020.01.05 오정은 추가
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;');

    SetFldValue(0,[sLocate
                  ,sMkyymm
                  ,sWkareacd
                  ,sDoctype
                  ,sCloseyn
                  ,sEditid
                  ,sEditip
                  ]);

    if (txPutF('GA_MDUTY_I12')) then   //ga_mduty_i12.pc
    begin
        Result := 1;
        txFree;
    end;
end;

function HgaMdutyt.SelMDutyt21: Integer; // 2020.01.05 오정은 추가
begin
 Result := -1;
  txAlloc; //Pointer를 받아옴.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service입력변수
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);

  //ga_mduty_l21.pc
  if (txGetF('GA_MDUTY_L29')) then
  begin                                      // Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // 사업장
    GetFldVar('S_STRING2' ,  sDeptcd   );    // 소속부서
    GetFldVar('S_STRING3' ,  sEmpno    );    // 사원번호
    GetFldVar('S_STRING4' ,  sEmpnm    );    // 사원명
    GetFldVar('S_STRING5' ,  sMkyymm   );    // 작성년월
    GetFldVar('S_STRING6' ,  sCloseyn  );    // 마감여부
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 일 근무
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 일 근무
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 일 근무
    GetFldVar('S_STRING10',  sDuty04   );    // 04 일 근무

    GetFldVar('S_STRING11',  sDuty05   );    // 05 일 근무
    GetFldVar('S_STRING12',  sDuty06   );    // 06 일 근무
    GetFldVar('S_STRING13',  sDuty07   );    // 07 일 근무
    GetFldVar('S_STRING14',  sDuty08   );    // 08 일 근무
    GetFldVar('S_STRING15',  sDuty09   );    // 09 일 근무
    GetFldVar('S_STRING16',  sDuty10   );    // 10 일 근무
    GetFldVar('S_STRING17',  sDuty11   );    // 11 일 근무
    GetFldVar('S_STRING18',  sDuty12   );    // 12 일 근무
    GetFldVar('S_STRING19',  sDuty13   );    // 13 일 근무
    GetFldVar('S_STRING20',  sDuty14   );    // 14 일 근무

    GetFldVar('S_STRING21',  sDuty15   );    // 15 일 근무
    GetFldVar('S_STRING22',  sDuty16   );    // 16 일 근무
    GetFldVar('S_STRING23',  sDuty17   );    // 17 일 근무
    GetFldVar('S_STRING24',  sDuty18   );    // 18 일 근무
    GetFldVar('S_STRING25',  sDuty19   );    // 19 일 근무
    GetFldVar('S_STRING26',  sDuty20   );    // 20 일 근무
    GetFldVar('S_STRING27',  sDuty21   );    // 21 일 근무
    GetFldVar('S_STRING28',  sDuty22   );    // 22 일 근무
    GetFldVar('S_STRING29',  sDuty23   );    // 23 일 근무
    GetFldVar('S_STRING30',  sDuty24   );    // 24 일 근무

    GetFldVar('S_STRING31',  sDuty25   );    // 25 일 근무
    GetFldVar('S_STRING32',  sDuty26   );    // 26 일 근무
    GetFldVar('S_STRING33',  sDuty27   );    // 27 일 근무
    GetFldVar('S_STRING34',  sDuty28   );    // 28 일 근무
    GetFldVar('S_STRING35',  sDuty29   );    // 29 일 근무
    GetFldVar('S_STRING36',  sDuty30   );    // 30 일 근무
    GetFldVar('S_STRING37',  sDuty31   );    // 31 일 근무
    GetFldVar('S_STRING38',  sJikwenm  );    // 직위명
    GetFldVar('S_STRING39',  sTotvcnt  );    // 총연차
    GetFldVar('S_STRING40',  sUsevcnt  );    // 사용연차

    GetFldVar('S_STRING41',  sAllconyn );    // 결재완료 여부
    GetFldVar('S_STRING42',  sAppdate  );    // 작성일자
    GetFldVar('S_STRING43',  sMkdeptcd );    // 작성부서
    GetFldVar('S_STRING44',  sMkempno  );    // 작성자사번
    GetFldVar('S_STRING45',  sAppseqno );    // 문서일련번호
    GetFldVar('S_STRING46',  sMeddept  );    // 간호부서코드       추가 김용욱 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // 근무부서코드
    GetFldVar('S_STRING48',  sUserid   );    // 간호부서사용userid
    GetFldVar('S_STRING49',  sChkyn    );    // 인사부서 결재완료 여부
    GetFldVar('S_STRING50',  sDocstep  );    // 문서단계
    GetFldVar('S_STRING51',  sWkareacdnm  );    // 문서단계
    GetFldVar('S_STRING52',  sHobong   );    //

    GetFldVar('S_STRING53',  sDutytime );    //
    GetFldVar('S_STRING54',  sDutytime1);    //
    GetFldVar('S_STRING55',  sMagamyn  );    // 근태집계마감여부 20170523 LEE
    GetFldVar('S_STRING56',  sNdutytime);    // 1.5배근태시간 20171128 LEE

    GetFldVar('S_STRING57',  sDutytime11);   // 2018년기준  20171128 LEE
    GetFldVar('S_STRING58',  sNdutytime1);   // 1.5배근태시간 2018년기준  20171128 LEE
    GetFldVar('S_STRING59',  sYearcnt   );   // 전공의연차카운트 2018년기준  20171128 LEE
    GetFldVar('S_STRING60',  sNtmcnt    );   // 20210726 전공의 심야시간 추가

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// 건진년도별 통계- 조회/////////
//////// 2020-04-20 오정은 ////////////
function HgaGyeolhack.SelGJYearTongye: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
  SetFldValue(0, [sLocate, sFdate, sTdate, sGubun, sRetYn]);

  if txPutF('GA_INSAMT_L99') then        // ga_insamt_l99.pc
  begin
    GetFldVar('S_STRING1', sCdgbn     );
    GetFldVar('S_STRING2', sA01       );
    GetFldVar('S_STRING3', sA02       );
    GetFldVar('S_STRING4', sA03       );
    GetFldVar('S_STRING5', sA04       );
    GetFldVar('S_STRING6', sA05       );
    GetFldVar('S_STRING7', sA06       );
    GetFldVar('S_STRING8', sA07       );
    GetFldVar('S_STRING9', sA08       );
    GetFldVar('S_STRING10',sA09       );
    GetFldVar('S_STRING11',sA10       );
    GetFldVar('S_STRING12',sA11       );
    GetFldVar('S_STRING13',sA12       );
    GetFldVar('S_STRING14',sTotamt    );
    GetFldVar('S_STRING15',sAveamt    );


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

// 호봉 Check 20200507 오정은 추가
// '입력할 호봉' vs '발령사항내의 MAX 호봉' 중 큰 값 RETURN
function HgaApoid1.CheckHobong : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;'); //service입력변수
   SetFldValue(0,[sEmpno, sHobong]);

   if (txGetF('GA_APOID_L8')) then //ga_apoid_l8.pc
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sMaxHobong     );    //사원번호

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaFamld1 타기관 진료직 사원 가족정보
   조회
   작성자 : 오정은  2020-05-18
===============================================================================}
function HgaFamld1.SelFamld2():Integer; //사원 가족정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh, sChoice] );

   if (txGetF('GA_FAMLD_L2')) then begin //Tuxedo Service Call 'ga_famld_l1.pc'
       GetFldVar('S_STRING1'   , sResno	   );        //가족 주민번호
       GetFldVar('S_STRING2'   , sFmlynm   );        //가족성명
       GetFldVar('S_STRING3'   , sRelcd    );        //가족관계코드
       GetFldVar('S_STRING4'   , sRelcdnm  );        //가족관계명
       GetFldVar('S_STRING5'   , sSupcd    );        //부양구분
       GetFldVar('S_STRING6'   , sSchship  );        //최종학력코드
       GetFldVar('S_STRING7'   , sSchshipnm);        //최종학력명
       GetFldVar('S_STRING8'   , sJob      );        //직업
       GetFldVar('S_STRING9'   , sSdyn     );        //수당지급대상 여부===> 차후조정후 반영
       GetFldVar('S_STRING10'  , sDedyn    );        //진료비감면여
       GetFldVar('S_STRING11'  , sMinsutyp );        //의료보험구분
       GetFldVar('S_STRING12'  , sRsdyn    );        //동거여부
       GetFldVar('S_STRING13'  , sInjuryyn );        //장애인여부
       GetFldVar('S_STRING14'  , sFmleditid);        //가족수당 수정자 20140626 김승철 추가
       GetFldVar('S_STRING15'  , sFmleditdate);      //가족수당 수정일 20140626 김승철 추가
       GetFldVar('S_STRING15'  , sFmleditdate);
       GetFldVar('S_STRING16'  , sEmpno  );
       GetFldVar('S_STRING17'  , sEmpnm  );
       GetFldVar('S_STRING18'  , sRgtdate);
       GetFldVar('S_STRING19'  , sResid);

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

{===============================================================================
   HgaSchod1 타기관 진료직 사원 학력정보
   조회
   작성자 : 오정은  2020-05-18
 ===============================================================================
}
function HgaSchod1.SelSchod2():Integer; //사원 학력정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh,sChoice] );

   if (txGetF('GA_SCHOD_L2')) then begin     //Tuxedo Service Call ga_schod_l1.pc
     GetFldVar('S_STRING1'   , sSchship    );        // 학력구분코드
     GetFldVar('S_STRING2'   , sSchshnm	   );        // 학력구분명
     GetFldVar('S_STRING3'   , sSdt        );        // 학력시작일자
     GetFldVar('S_STRING4'   , sGrudt      );        // 학력종료일자
     GetFldVar('S_STRING5'   , sSchoolnm   );        // 학교명
     GetFldVar('S_STRING6'   , sMjrnm      );        // 전공명
     GetFldVar('S_STRING7'   , sMjrcd      );        // 전공코드
     GetFldVar('S_STRING8'   , sEndyn      );        // 최종여부
     GetFldVar('S_STRING9'   , sRemtxt     );        // 비고
     GetFldVar('S_STRING10'  , sEntGubn    );        // 입사전후
     GetFldVar('S_STRING11'  , sSchoolcd   );        // 학력코드
     GetFldVar('S_STRING12'  , sEmpno  );
     GetFldVar('S_STRING13'  , sEmpnm  );
     GetFldVar('S_STRING14'  , sRgtdate);
     GetFldVar('S_STRING15'  , sResid  );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaWoiwd1 타기관 진료직 사원 경력정보
   조회
   작성자 : 오정은  2020-05-18
===============================================================================}
function HgaWoiwd1.SelWoiwd2():Integer; //사원 경력정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh,sChoice] );

   if (txGetF('GA_WOIWD_L2')) then  //ga_woiwd_l2.pc
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sSdate      );        // 근무시작일자
     GetFldVar('S_STRING2'   , sEdate      );        // 근무종료일자
     GetFldVar('S_STRING3'   , sCompnm     );        // 회사명
     GetFldVar('S_STRING4'   , sJikwe      );        // 직위
     GetFldVar('S_STRING5'   , sJikmunm    );        // 담당업무명
     GetFldVar('S_STRING6'   , sWkmm       );        // 인정개월수
     GetFldVar('S_STRING7'   , sWkRate     );        // 경력기간 인정율
     GetFldVar('S_STRING8'   , sEmpno  );
     GetFldVar('S_STRING9'   , sEmpnm  );
     GetFldVar('S_STRING10'  , sRgtdate);
     GetFldVar('S_STRING11'  , sResid  );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaQulid1 타기관 진료직 사원 자격정보
   조회
   작성자 : 오정은  2020-05-18
===============================================================================}
function HgaQulid1.SelQulid2():Integer; //사원 경력정보 조회
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service입력변수
   SetFldValue(0,[sLocate,sCodsrh,sChoice] );

   if (txGetF('GA_QULID_L3')) then begin     //Tuxedo Service Call ga_qulid_l1.pc
     GetFldVar('S_STRING1'   , sLcncd      );        // 자격코드
     GetFldVar('S_STRING2'   , sLcncdn     );        // 자격코드명
     GetFldVar('S_STRING3'   , sOrgcd      );        // 발행기관코드
     GetFldVar('S_STRING4'   , sOrgcdn     );        // 발행기관코드명
     GetFldVar('S_STRING5'   , sGetdate    );        // 취득일자
     GetFldVar('S_STRING6'   , sFnsdate    );        // 유효일자
     GetFldVar('S_STRING7'   , sChgdate    );        // 차기갱신일자
     GetFldVar('S_STRING8'   , sLcnno      );        // 자격번호
     GetFldVar('S_STRING9'   , sRemix      );        // 자격번호
     GetFldVar('S_STRING10'  , sSubject      );        // 자격번호
     GetFldVar('S_STRING11'  , sSubnm        );        // 자격번호
     GetFldVar('S_STRING12'  , sEmpno  );
     GetFldVar('S_STRING13'  , sEmpnm  );
     GetFldVar('S_STRING14'  , sRgtdate);
     GetFldVar('S_STRING15'  , sResid  );



     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaFamld1 타기관 진료직 사원 가족정보
   신규입력
   작성자 : 오정은  20/05/20
===============================================================================}
function HgaFamld1.insFamld3(iCnt: Integer): Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer를 받아옴.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
               'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
               'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [sEmpno    [ii]     //  1. 사번
                       ,  sLocate   [ii]     //  2. 사업장
                       ,  sResno    [ii]     //  3. 가족 주민번호
                       ,  sFmlynm   [ii]     //  4. 가족 이름
                       ,  sRelcd    [ii]     //  5. 가족 관계코드
                       ,  sSupcd    [ii]     //  6. 부양구분
                       ,  sSchship  [ii]     //  7. 최종 학력코드
                       ,  sJob      [ii]     //  8. 직업
                       ,  sSdyn     [ii]     //  9. 수당지급대상 여부
                       ,  sDedyn    [ii]     // 10. 진료비 감면여부
                       ,  sRsdyn    [ii]     // 11. 동거 여부
                       ,  sEditid   [ii]     // 12.
                       ,  sEditip   [ii]     // 13.
                       ,  sInjuryyn [ii]     // 14. 장애여부
                       ,  sRgtdate  [ii]     // 15. 데이터 등록일자
                       ,  sResid  [ii] 
                       ]);

  end;

  if (txPutF32('GA_FAMLD_I3')) then    // ga_famld_i3.pc
  begin
     Result := 1;
     txFree32;
  end;
end;
{===============================================================================
   HgaFamld1 타기관 진료직 사원 학력정보
   신규입력
   작성자 : 오정은  20/05/20
===============================================================================}
function HgaSchod1.insSchod2(iCnt: Integer): Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer를 받아옴.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
               'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
               'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [sLocate    [ii]     // 1. 사업장
                       ,  sEmpno     [ii]     // 2. 사원번호
                       ,  sSdt       [ii]     // 3. 학력시작일자  
                       ,  sGrudt     [ii]     // 4. 학력종료일자  
                       ,  sSchoolnm  [ii]     // 5. 학교명        
                       ,  sMjrnm     [ii]     // 6. 전공명        
                       ,  sEndyn     [ii]     // 7. 최종여부      
                       ,  sEntGubn   [ii]     // 8. 입사전후      
                       ,  sRemtxt    [ii]     // 9. 비고          
                       ,  sSchship   [ii]     // 10.학력구분코드  
                       ,  sMjrcd     [ii]     // 11.전공코드      
                       ,  sSchoolcd  [ii]     // 12.학교코드      
                       ,  sEditid    [ii]     
                       ,  sEditip    [ii]      
                       ,  sRgtdate   [ii]
                       ,  sResid     [ii]
                       ]);

  end;

  if (txPutF32('GA_SCHOD_I2')) then    // ga_schod_i2.pc
  begin
     Result := 1;
     txFree32;
  end;
end;
{===============================================================================
   HgaFamld1 타기관 진료직 사원 경력정보
   신규입력
   작성자 : 오정은  20/05/20
===============================================================================}
function HgaWoiwd1.insWoiwd2(iCnt: Integer):Integer;    // 사원 경력 신규입력/수정
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer를 받아옴.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
               'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
               'S_TYPE11;S_TYPE12;S_TYPE13;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [  sEmpno   [ii]
                          , sLocate  [ii]
                          , sSdate   [ii] 
                          , sEdate   [ii] 
                          , sCompnm  [ii] 
                          , sJikwe   [ii] 
                          , sJikmunm [ii] 
                          , sWkmm    [ii] 
                          , sWkrate  [ii] 
                          , sEditid  [ii] 
                          , sEditip  [ii]
                          , sRgtdate [ii]
                          , sResid   [ii]
                       ]);

  end;

  if (txPutF32('GA_WOIWD_I2')) then    // ga_woiwd_i2.pc
  begin
     Result := 1;
     txFree32;
  end;

end;
{===============================================================================
   HgaFamld1 타기관 진료직 사원 자격정보
   신규입력
   작성자 : 오정은  20/05/20
===============================================================================}
function HgaQulid1.insQulid2(iCnt: Integer):Integer;    // 사원 경력 신규입력/수정
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer를 받아옴.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
               'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
               'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [    sEmpno    [ii]
                            , sLocate   [ii]
                            , sLcncd    [ii]
                            , sOrgcd    [ii]
                            , sGetdate  [ii]
                            , sFnsdate  [ii]
                            , sChgdate  [ii]
                            , sLcnno    [ii]
                            , sEditid   [ii]
                            , sEditip   [ii]
                            , sRemix    [ii]
                            , sSubject  [ii]
                            , sRgtdate  [ii]
                            , sResid    [ii]
                       ]);

  end;

  if (txPutF32('GA_QULID_I2')) then    // ga_qulid_i2.pc
  begin
     Result := 1;
     txFree32;
  end;

end;

function HgaUpLoad.UpdateUpLoadFilefn(iCnt: Integer): Integer; //20200623 오정은
var
    idx : Integer;
begin

    Result := -1;
    txAlloc; //Pointer를 받아옴.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx ,[sFileGbn  [idx]  // 총무서식 1, 관리서식 2
                        , sFileName [idx]  // 파일명
                        , sEditid   [idx]  //
                        , sEditip   [idx]  //
                        , sMkdate   [idx]
                        , sDocno    [idx]]);
    end;
    if (txPutF('GA_FLOAD_U1')) then
    begin   // ga_fload_u1.pc
        Result := 1;
        txFree;
    end;
end;


end.





