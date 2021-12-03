                          ////////////////////////////////////////////////////////////////////////////////
// MIS CLASS Define                                                           //
//  HgeAcctmt	���������ڵ�                                                    //
//  HgeExCode   Ÿ�ý��� �ڵ�                                                 //
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
// �����ȣ ä��
// �ۼ��� : 2004.07.21
// �ۼ��� : ���¿�
// ���� ���̺� : GAAOTONOT
////////////////////////////////////////////////////////
  HgaCreEmpNo = class
    sLocate        : Variant;           // �� �� ��
    sLocate_Abbr   : Variant;           // ����� ��� �ڵ�
    sJob_Type      : Variant;           // ��������
    sNo_Year       : VAriant;           // ä������
    sMaxEmpNo      : Variant;           // ä����ȣ

    function CreateEmpNo(sLocate,sLocate_Abbr,sJob_Type,sNo_Year:string):Integer;
  end;
//======================================================
// �����ȸ
// �ۼ��� : 2002.01.15
// �ۼ��� : ������
// ���� ���̺� : GAINSAMT , CCCOMCDT, CCDEPTCT
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

    ssLocate       : Variant;         // �����(��ȸ)
    ssDeptcd       : Variant;         // �μ��ڵ�
    ssEmpno        : Variant;         // �˻��� ���
    ssNewEmpno     : Variant;         // ���ο� ���
    ssResno        : Variant;         // �ֹι�ȣ 20201118
    sAppgbn        : Variant;
    sAppseqno      : Variant;
    sAppempno      : Variant;
    ssRemark       : Variant;

    ssGubun        : Variant;         // ���а�(�׶��׶����)

    sEmpno         : Variant;          // ���ι�ȣ
    sRemark        : Variant;
    sPincode       : Variant;
    sLocate        : Variant;          // �� �� ��
    sLocatenm      : Variant;          // �� �� ���
    sEmpnm         : Variant;          // ��    ��
    sEngnm         : Variant;          // ��������
    sHanmunnm      : Variant;          // �ѹ�����
    sResno         : Variant;          // �ֹε�Ϲ�ȣ
    sBorndt        : Variant;          // �������
    sSolucd        : Variant;          // ���籸�� (+��.-��)
    sSexcd         : Variant;          // ����     (+��.-��)
    sJikjong       : Variant;          // �����ڵ�
    sJikjongnm     : Variant;          // ������
    sJikgup        : Variant;          // �����ڵ�
    sJikgupnm      : Variant;          // ���޸�
    sJikmu         : Variant;          // �����ڵ�
    sJikmunm       : Variant;          // ������
    sJikchek       : Variant;          // ��å�ڵ�
    sJikcheknm     : Variant;          // ��å��
    sJikwe         : Variant;          // �����ڵ�
    sJikwenm       : Variant;          // ������
    sJikgun        : Variant;          // �����ڵ�
    sJikgunnm      : Variant;          // ������
    sHobong        : Variant;          // ȣ    ��
    sGubho         : Variant;          // ��    ȣ
    sConType       : Variant;          // �������
    sDeptcd        : Variant;          // �μ��ڵ�
    sDeptnm        : Variant;          // �μ���
    sWLocate       : Variant;          // �ٹ��� ������ڵ�
    sWkareacd      : Variant;          // �� �� ��
    sWkareanm      : Variant;          // �� �� ����
    sEntdt         : Variant;          // �� �� ��
    sRetdt         : Variant;          // �� �� ��
    sMemyn         : Variant;          // ��ȥ����
    sMemdt         : Variant;          // �� �� ��
    sHeadyn        : Variant;          // ���忩��
    sBohuntyp      : Variant;          // ���Ʊ���
    sBohungrd      : Variant;          // ���Ƶ��
    sBohunno       : Variant;          // ���ƹ�ȣ
    sBohunorg      : Variant;          // ������û
    sJangtyp       : Variant;          // ��ֱ���
    sJanggrd       : Variant;          // ��ֵ��
    sJangno        : Variant;          // ����ι�ȣ
    sAddrwon       : Variant;          // ����
    sAddrbon       : Variant;          // ����
    sSedenm        : Variant;          // �����ּ���
    sHozunm        : Variant;          // ȣ�ּ���
    sHozurela      : Variant;          // ȣ�ֿ��� ����
    sLivtyp        : Variant;          // �ְű���
    sDongsan       : Variant;          // ����
    sBudongsa      : Variant;          // �ε���
    sRgncd         : Variant;          // ��������
    sHobby         : Variant;          // ��    ��
    sTalent        : Variant;          // Ư    ��
    sZip           : Variant;          // �ֹε���������ȣ
    sZipnm         : Variant;          // �ֹε���������ȣ��
    sAddr          : Variant;          // �ֹε�����ּ�
    sCurzip        : Variant;          // ���ּҿ����ȣ
    sCurzipnm      : Variant;          // ���ּҿ����ȣ
    sCuraddr       : Variant;          // ���ּ�
    sEngaddr       : Variant;          // �����ּ�
    sDincomeyn     : Variant;          // �¹��̿���
    sTelno         : Variant;          // ����ȭ��ȣ
    sIntelno       : Variant;          // ������ȭ��ȣ
    sPagerno       : Variant;          // ȣ����ȣ
    sHphoneno      : Variant;          // �޴�����ȣ
    sFaxno         : Variant;          // �ѽ���ȣ
    sEmail         : Variant;          // EMAIL �ּ�
    sPreempno      : Variant;          // �������ι�ȣ
    sMiltype       : Variant;          // ��������
    sMilkind       : Variant;          // ��������
    sMilyuk        : Variant;          // ��������
    sMilyn         : Variant;          // �������ʿ���
    sMilrsn        : Variant;          // �������ʻ���
    sMilsrt        : Variant;          // �����Ⱓfr
    sMilend        : Variant;          // �����Ⱓto
    sMilgrade      : Variant;          // �������
    sMilbrnc       : Variant;          // ��������
    sMilno         : Variant;          // ��  ��
    sDamdang       : Variant;          // ������
    sRcmnm         : Variant;          // ��õ�μ���
    sRcmrel        : Variant;          // ��õ�ΰ���
    sRcmcoara      : Variant;          // ��õ�αٹ�����
    sRcmjikwe      : Variant;          // ��õ��������
    sRemtxt        : Variant;          // �ڱ�Ű����
    sApptyp        : Variant;          // ä�뱸��
    sRstdt         : Variant;          // ������
    sReturndt      : Variant;          // ������
    sRstmm         : Variant;          // ����������
    sTrnstdt       : Variant;          // ����������
    sTrnenddt      : Variant;          // ����������
    sWkmm          : Variant;          // ������°�����
    sMmrant        : Variant;          // �������ݾ�
    sHramt         : Variant;          // �ð����ñ�
    sHrcnt         : Variant;          // �ð������ð�
    sHrstdt        : Variant;          // �ð�����������
    sHreddt        : Variant;          // �ð������������
    sRetresn       : Variant;          // ��������
    sSchship       : Variant;          // �����з�
    sLicno         : Variant;          // �����ȣ
    sMajorno       : Variant;          // �����ǹ�ȣ
    sRLocate       : Variant;          // ������ �Ҽӻ�����ڵ�
    sInternNo      : Variant;          // ������ ��ȣ
    sIntHospNm     : Variant;          // ���ϼ��ú���
    sIntStDt       : Variant;          // ���Ͻ�����
    sIntEnDt       : Variant;          // ����������
    sRegStDt       : Variant;          // ������Ʈ ������
    sRegEnDt       : Variant;          // ������Ʈ ������
    sIntPoint      : Variant;          // ����(000000) -> 000/000
    sIntAve        : Variant;          // �������
    sIntSeats      : Variant;          // ����(000000) -> 000/000
    sIntGrade      : Variant;          // ���
    sEditid        : Variant;          // ������ ID
    sEditip        : Variant;          // ������ IP
    sEditdate      : Variant;          // ������
    sDeldate       : Variant;          // ������
    sSggbn         : Variant;          // �±ޱ���
    sDepteng       : Variant;          // ����μ���
    sInDate        : Variant;          // ������
    sOutDate       : Variant;          // ������
    sPaygbn        : Variant;          // �޿�����
    sYearsCnt      : Variant;
    sMonCnt        : Variant;
    sDayCnt        : Variant;
    sTotCnt        : Variant;
    sAppEmpnm       : Variant;

    sBankcd        : Variant;
    sAcntno        : Variant;
    sBanknm        : Variant;
    sWkplace1      : Variant;

    ssCodsrh       : Variant;          // ��ȸ�Ǵ� ����ڵ�
    sChoice        : Variant;          // �۾�����

    sInDt          : Variant;          // �ٹ�������  �߰� ���� 2005-12-09
    sWkplace       : Variant;          // �ٹ���

    sPermYN        : Variant;           // �ΰ�/���ΰ����� �߰� �ڼ�ȣ2010-2-5
    sDrbtan        : Variant;           // �ǻ籸�� �ڼ�ȣ2010-2-5

    sIdent         : Variant;

    sAgreeyn       : Variant;
    sAppyn         : Variant;
    sType          : Variant;

    sPregnantyn    : Variant;          // �ӻ�ο��� 2015.04.02 ���ö �߰�
    sPatno         : Variant;          //  ȯ�ڹ�ȣ 2017-06-21 ������ �߰�

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
// �ļ� �����ȣ ���� �ο� ����
// �ۼ��� : 2008.08.22
// �ۼ��� : ���汸
// ���� ���̺� : gaoutamt , gainsamv.bcha6
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
// ��� ���� ��ȸ
// �ۼ��� : 2002.01.15
// �ۼ��� : ������
// ���� ���̺� : GAFAMLDT , CCCOMCDT, CCDEPTCT
//======================================================
  HgaFamld1  = class
    sResno         : Variant;          // ���� �ֹι�ȣ
    sFmlynm        : Variant;          // ��������
    sRelcd         : Variant;          // ���������ڵ�
    sRelcdnm       : Variant;          // ���������
    sSupcd         : Variant;          // �ξ籸��
    sSchship       : Variant;          // �����з��ڵ�
    sSchshipnm     : Variant;          // �����з¸�
    sJob           : Variant;          // ����
    sSdyn          : Variant;          // �������޴�� ����===> ���������� �ݿ�
    sDedyn         : Variant;          // ����񰨸鿩
    sMinsutyp      : Variant;          // �ǷẸ�豸��
    sRsdyn         : Variant;          // ���ſ���
    sInjuryyn      : Variant;          // ����ο���

    sEmpno         : Variant;    	     // ���ι�ȣ
    sLocate        : Variant;          // �� �� ��
    sCodsrh        : Variant;          // ��ȸ�Ǵ� ����ڵ�

    sEditid        : Variant;     	   //  ������ID
    sEditip        : Variant;          //  ������IP
    sEditdate      : Variant;          //  ������
    sChoice        : Variant;          //  �۾�����
    sResno_old     : Variant;          //  �ֹι�ȣ old
    sFmlupdateyn   : Variant;          //  �������� ���濩��(�Է½�) 20140626 ���ö
    sFmleditid     : Variant;          //  �������� ������(��ȸ) 20140626 ���ö
    sFmleditdate   : Variant;          //  �������� ������(��ȸ) 20140626 ���ö

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
// ��� �з»��� ��ȸ
// �ۼ��� : 2002.01.16
// �ۼ��� : ������
// ���� ���̺� : GASCHODT, CCCOMCDT
//======================================================
  HgaSchod1  = class
    sSchship      : Variant;          // �з±����ڵ�
    sSchshnm      : Variant;          // �з±��и�
    sSdt          : Variant;          // �з½�������
    sGrudt        : Variant;          // �з���������
    sSchoolnm     : Variant;          // �б���
    sMjrnm        : Variant;          // ������
    sEndyn        : Variant;          // ��������
    sEntGubn      : Variant;          // �Ի����� ����(A: �Ի���, B: �Ի���)
    sRemtxt       : Variant;          // ���

    sLocate       : Variant;          // �� �� ��
    sCodsrh       : Variant;          // ��ȸ�Ǵ� ����ڵ�
    sEmpno        : Variant;      	  // ���ι�ȣ
    sSchoolcd     : Variant;          // �б��ڵ�   null��(���)
    sMjrcd        : Variant;          // �����ڵ�   null��(���)

    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������
    sChoice       : Variant;          // �Է�/��������(I/U)
    sSchship_old  : Variant;          // �з±��� old
    sSdt_old      : Variant;          // �������� old

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
// ��� ��»��� ��ȸ
// �ۼ��� : 2002.01.16
// �ۼ��� : ������
// ���� ���̺� :   GAWOIWDT, CCCOMCDT
//======================================================
  HgaWoiwd1  = class

    sSdate        : Variant;          // �ٹ���������
    sEdate        : Variant;          // �ٹ���������
    sCompnm       : Variant;          // ȸ���
    sJikwe        : Variant;          // ����
    sJikmunm      : Variant;          // ��������
    sWkmm         : Variant;          // ����������
    sWkRate       : Variant;          // ��±Ⱓ ������

    sEmpno        : Variant;          // ���ι�ȣ
    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������

    sLocate       : Variant;          // �� �� ��
    sCodsrh       : Variant;          // ��ȸ�Ǵ� ����ڵ�

    sChoice       : Variant;             // �Է�/��������(I/U)
    sSdate_old    : Variant;          // �ٹ���������  ������

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
// ��� �ڰݻ��� ��ȸ
// �ۼ��� : 2002.01.17
// �ۼ��� : ������
// ���� ���̺� :  GAQULIDT, CCCOMCDT
//======================================================
  HgaQulid1  = class

    sLcncd          : Variant;          // �ڰ��ڵ�
    sLcncdn         : Variant;          // �ڰ��ڵ��
    sOrgcd          : Variant;          // �������ڵ�
    sOrgcdn         : Variant;          // �������ڵ��
    sGetdate        : Variant;          // �������
    sFnsdate        : Variant;          // ��ȿ����
    sChgdate        : Variant;          // ���ⰻ������
    sLcnno          : Variant;          // �ڰݹ�ȣ
    // sSdyn        : Variant;              �������޿���

    sEmpno        : Variant;          // ���ι�ȣ
    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������

    sLocate        : Variant;           // �� �� ��
    sCodsrh        : Variant;           // ��ȸ�Ǵ� ����ڵ�
    sChoice        : Variant;           // �Է�/��������(I/U)
    sLcncd_old     : Variant;           // �ڰ��ڵ� old
    sLcnNO_old     : Variant;           // �ڰݹ�ȣ old 20200114 ������ �߰�
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
// ��� �������� ��ȸ
// �ۼ��� : 2004.07.22
// �ۼ��� : ���¿�
// ���� ���̺� :  GAEDUCDT, CCCOMCDT
////////////////////////////////////////////////////////////////////////////////
  HgaEducd1  = class

    sEducd        : Variant;           // �����ڵ�
    sSdate        : Variant;           // ������������
    sEdate        : Variant;           // ������������
    sTime         : Variant;           //�̼��ð�
    sEduname      : Variant;           // ����(����)��
    sEduOrgcd     : Variant;           // ��������ڵ�
    sEduOrg       : Variant;           // ���������
    sEducont      : Variant;           // ��������
    sEduamt       : Variant;           // �����ݾ�
    sEduesti      : Variant;           // ������
    sEdurank      : Variant;           // ��������
    sEduremk      : Variant;           // ���
    sInoutyn      : Variant;           // ���ܱ���
    sEduyn        : Variant;           // �̼�����
    sPoint        : Variant;           // ����
    sEditid       : Variant;           // ������ ID
    sEditip       : Variant;           // ������ IP
    sChoice       : Variant;           // �۾�����
    sInout        : Variant;           // �����ܱ��� 20060911 �߰�
    sCont         : Variant;
    sEduseq       : Variant;

    sLocate       : Variant;           // �� �� ��
    sCodsrh       : Variant;           // ��ȸ�Ǵ� ����ڵ�
    sEducd_old    : Variant;           // �����ڵ� old
    sSdate_old    : Variant;           // ���������� old
    //20060920
    sEmpno        : Variant;           // ���
    sEditdate     : Variant;           // ������

    //20061001
    sEdupoint     : Variant;           // �̼�����
    sEdumonth1    : Variant;           // 1������
    sEdumonth2    : Variant;           // 2������
    sEdumonth3    : Variant;           // 3������
    sEdutotal     : Variant;           // ����

    //20061002
    sJikwe        : Variant;           // ����(���������� ����)  20061002
    sJikwenm      : Variant;           // ������(���������� ����)  20061002

    sDeptnm       : Variant;           // �ҼӺμ���
    sWkareanm     : Variant;           // �ٹ��μ���
    sApodate      : Variant;           // ��������������
    sEmpnm        : Variant;           // ����

    sEduchk       : Variant;           // ���ᱳ�� üũ���� (20061017 gawaguci �ۼ� ������ �ɹ̳�)

    sMode        : Variant;   // 20061104 �߰�

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
// ��� ���ƻ��� ��ȸ
// �ۼ��� : 2002.01.21
// �ۼ��� : ������
// ���� ���̺� :  GAAWARDT, CCCOMCDT
//======================================================
  HgaAward1  = class

    sAwardate     : Variant;          // ���ƹ߻���
    sAwarcd       : Variant;          // �����ڵ�
    sAwarcdnm     : Variant;          // �����ڵ��
    sTypecd       : Variant;          // ���Ʊ����ڵ�
    sTypecdnm     : Variant;          // ���Ʊ����ڵ��
    sRemtxt       : Variant;          // ����
    sOrgnm        : Variant;          // ���Ʊ����

    sEmpno        : Variant;          // ���ι�ȣ
    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������

    sLocate       : Variant;          // �� �� ��
    sCodsrh       : Variant;          // ��ȸ�Ǵ� ����ڵ�
    sChoice       : Variant;          // �Է�/��������(I/U)

    sAwardate_old : Variant;          // ���ƹ߻��� old
    sAwarcd_old   : Variant;          // �����ڵ� old

    sAwarder      : Variant;          // ������

    function SelAward1():Integer;
    function insAward1():Integer;
    function delAward1():Integer;
  end;




/////////////////////////////////////////////////////////////////////////
//  �����  ��ȸ 2009.06.09
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



    function SelAccid():Integer;        // ��ȸ
    function insAccid():Integer;
    function delAccid():Integer;

    function ListMon1():Integer;
    function ListMon2():Integer;
    function ListMon3():Integer;
    function ListMon4():Integer;
    function ListMon5():Integer;
    function ListMon6():Integer;
    function ListMon7():Integer;




    //function DelAccid():Integer; //�Է�


  end;


//======================================================
// ��� ¡����� ��ȸ
// �ۼ��� : 2002.01.25
// �ۼ��� : ������
// ���� ���̺� :  GAPUNSDT, CCCOMCDT
//======================================================
  HgaPunsd1  = class

    sSdate       : Variant;          // ¡�������
    sEdate       : Variant;          // ¡��������
    sPuncd       : Variant;          // ¡���ڵ�
    sPuncdnm     : Variant;          // ¡���ڵ��
    sTypecd      : Variant;          // ¡�豸���ڵ�
    sTypecdnm    : Variant;          // ¡�豸���ڵ��
    sRemtxt      : Variant;          // ����
    sOrgnm       : Variant;          // ¡������

    sEmpno        : Variant;          // ���ι�ȣ
    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP

    sLocate      : Variant;          // �� �� ��
    sCodsrh      : Variant;          // ��ȸ�Ǵ� ����ڵ�
    sChoice      : Variant;          // �Է�/��������(I/U)

    sSdate_old    : Variant;        // ¡������� old
    sPuncd_old    : Variant;        // ¡���ڵ� old

    function SelPunsd1():Integer;
    function insPunsd1():Integer;
    function delPunsd1():Integer;

  end;
//======================================================
// ��� �߷ɻ��� ��ȸ
// �ۼ��� : 2002.01.25
// �ۼ��� : ������
// ���� ���̺� :  GAAPOIDT
//======================================================
  HgaApoid1  = class

    sApodate      : Variant;          // �� �� ��
    sEnddate      : Variant;          // �߷�����

    sApoinm       : Variant;          // �� �� ��
    sDeptnm       : Variant;          // �� �� ��
    sJikgunnm     : Variant;          // �� �� ��
    sJikjongnm    : Variant;          // �� �� ��
    sJikcheknm    : Variant;          // �� å ��
    sJikwenm      : Variant;          // �� �� ��
    sJikgupnm     : Variant;          // �� �� ��

    sWkareacdnm   : Variant;          // �ٹ��μ���

    sApocd        : Variant;          // �߷��ڵ�
    sDeptcd       : Variant;          // �μ��ڵ�
    sJikjong      : Variant;          // �����ڵ�
    sJikgup       : Variant;          // �����ڵ�
    sJikmu        : Variant;          // �����ڵ�
    sJikmucd      : Variant;          // �����ڵ�
    sJikmunm      : Variant;          // ������
    sJikchek      : Variant;          // ��å�ڵ�
    sJikwe        : Variant;          // �����ڵ�
    sJikgun       : Variant;          // �����ڵ�
    sWkareacd     : Variant;          // �� �� ��
    sWkareanm     : Variant;
    sHobong       : Variant;          // ȣ    ��
    sRemtxt       : Variant;          // ��    ��
    sdutyyy       : Variant;
    sdutymm       : Variant;
    sdutydd       : Variant;

///////////////////////////20211006 �ٷΰ�༭ ��ȸ
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
    sConCurYn     : Variant;          // ������/�� ����
    sAppotno      : Variant;          // ����� ��ȣ
    sWLocate      : Variant;          // �ٹ��μ� ����� �ڵ�
    sBefhobong    : Variant;          // �λ縶���� ȣ���� ����ȣ��
    sNexthobong   : Variant;          // ����ȣ���� ����ȣ��

    sEmpno        : Variant;          // ���ι�ȣ
    sEmpNm        : Variant;          // �����
    sLocate       : Variant;          // �� �� ��
    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������
    sGubun        : Variant;          // 20061103 �߰�

    sNewGrade     : Variant;  // 20200630
    sYeoncha      : Variant;  // 20200630
    sSJYeonhan    : Variant;  // 20200630
    sPromyear     : Variant;  // 20200630
    sNewGradenm     : Variant;  // 20200630
    sYeonchanm      : Variant;  // 20200630
    sSJYeonhannm    : Variant;  // 20200630

    sPreApodate   : Variant;          // ������ �� ��
    sPreEnddate   : Variant;          // �����߷�����


/////////////////  �߷�ó�� ���� �߰�(2004.08.11)   ////////////////////////////
    sEntSYYMM     : Variant;          // �Ի��� From
    sEntEYYMM     : Variant;          // �Ի��� To
    sSgMonth      : Variant;          // �±޿�
    sEntDate      : Variant;          // �Ի���
    sLastDate     : Variant;          // �����߷���
    sJikjongcd    : Variant;          // �� ���ڵ�
    sJikgupcd     : Variant;          // �� ���ڵ�
    sJikchekcd    : Variant;          // �� å�ڵ�
    sJikwecd      : Variant;          // �� ���ڵ�
    sJikguncd     : Variant;          // ȣ ���ڵ�
    sDeptcd2      : Variant;          // �ҼӺμ��ڵ�
    sWkareacd2    : Variant;          // �ٹ��μ��ڵ�
/////////////////  �߷�ó�� ���� �߰�(2004.08.11)   ////////////////////////////

    sCode         : Variant;          // �ڵ�
    sCodeName     : Variant;          // �ڵ��
    sOldKey1      : Variant;          // �߷��ڵ�(����)
    sOldKey2      : Variant;          // �߷�����(����)
    sCodsrh       : Variant;          // ��ȸ�Ǵ� ����ڵ�
    sChoice       : Variant;          // �Է�/��������(I/U)

    sDays         : Variant;          // �����ϼ�
    sSDate        : Variant;          // ��ȸ�Ⱓ
    sEDate        : Variant;          // ��ȸ�Ⱓ
    sVaCnt        : variant;

    sChargeGbn    : Variant;          // ����ڱ���(3/4)  // ���� �߰� 2005-10-26

    sWkplace      : Variant;          // �ٹ���  //   �߰� 2006-05-18
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
    sAfter        : Variant;          // �� �߷� ���� 2018-10-30 ������ �߰� (������ ���� ��û)

    sEmpno2       : Variant;          // ������ ��� ����ó�� ��� 2019-10-25 ������

    sMaxHobong    : Variant;          // Max ȣ�� 20200507 ������

    sRetdt        : Variant;          // �������� 20210714 ������ �߰� - ����� ��û 

    function SelApoid1():Integer;
    function SelApoid2():Integer;     // �߷���Ȳ ��ȸ(�߷�����)
    function SelApoid3():Integer;     // �߷� ����� ��ȸ(�߷�ó��)
    function SelApoid4():Integer;     // ���� �߷��� ��ȸ
    function SelApoid5:Integer;
    function SelApoid6:Integer;
    function SelApoid7():Integer;     // �ٷΰ�༭ �߷ɻ��� ��ȸ 20210924
    function Dutysdamt():Integer;     // �ٷΰ�༭ �޿� ��ȸ 20211005


    function insApoid2(iCnt : Integer):Integer;     // �ϰ��߷�

    function insApoid1():Integer;
    function updApoid1():Integer;
    function delApoid1():Integer;

    function Gbapoid_List:Integer;
    function GbApoid_Save:Integer;
    function delGBApoid:Integer;


    function updApoid2():Integer; // 2006-10-27 �߰�

    function ListComCodeName : integer;
    function ListComCodeName1 :Integer;

    function ListProof : Integer;     // ������� ���� �߷ɻ���(ä��, �μ��̵�)

    function CheckHobong : Integer; // ȣ�� Check 20200507 ������ �߰�

  end;


//======================================================
// ��ȸ����
// �ۼ��� : 20170908
// �ۼ��� : ������
// ���� ���̺� :  ? GAAPOIDT  gaDocvat
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


     ssType       : Variant;        // 20161114 LEE �߰� ������ ������ ����

    ssRemark     : Variant;
    sApodate      : Variant;          // �� �� ��
    sEnddate      : Variant;          // �߷�����
    ssLocate      : Variant;
    ssVtype       : Variant;
    ssEmpno       : Variant;
    ssFromdt      : Variant;
    ssTodt        : Variant;
    ssYYYY        : Variant;
   // selDocvlt     : Variant; 20170908 �������ӽû���
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


    sApoinm       : Variant;          // �� �� ��
    sDeptnm       : Variant;          // �� �� ��
    sJikgunnm     : Variant;          // �� �� ��
    sJikjongnm    : Variant;          // �� �� ��
    sJikcheknm    : Variant;          // �� å ��
    sJikwenm      : Variant;          // �� �� ��
    sJikgupnm     : Variant;          // �� �� ��

    sWkareacdnm   : Variant;          // �ٹ��μ���

    sApocd        : Variant;          // �߷��ڵ�
    sDeptcd       : Variant;          // �μ��ڵ�
    sJikjong      : Variant;          // �����ڵ�
    sJikgup       : Variant;          // �����ڵ�
    sJikmu        : Variant;          // �����ڵ�
    sJikmucd      : Variant;          // �����ڵ�
    sJikmunm      : Variant;          // ������
    sJikchek      : Variant;          // ��å�ڵ�
    sJikwe        : Variant;          // �����ڵ�
    sJikgun       : Variant;          // �����ڵ�
    sWkareacd     : Variant;          // �� �� ��
    sWkareanm     : Variant;
    sHobong       : Variant;          // ȣ    ��
    sRemtxt       : Variant;          // ��    ��
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
    sConCurYn     : Variant;          // ������/�� ����
    sAppotno      : Variant;          // ����� ��ȣ
    sWLocate      : Variant;          // �ٹ��μ� ����� �ڵ�
    sBefhobong    : Variant;          // �λ縶���� ȣ���� ����ȣ��
    sNexthobong   : Variant;          // ����ȣ���� ����ȣ��

    sEmpno        : Variant;          // ���ι�ȣ
    sEmpNm        : Variant;          // �����
    sLocate       : Variant;          // �� �� ��
    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������
    sGubun        : Variant;          // 20061103 �߰�

/////////////////  �߷�ó�� ���� �߰�(2004.08.11)   ////////////////////////////
    sEntSYYMM     : Variant;          // �Ի��� From
    sEntEYYMM     : Variant;          // �Ի��� To
    sSgMonth      : Variant;          // �±޿�
    sEntDate      : Variant;          // �Ի���
    sLastDate     : Variant;          // �����߷���
    sJikjongcd    : Variant;          // �� ���ڵ�
    sJikgupcd     : Variant;          // �� ���ڵ�
    sJikchekcd    : Variant;          // �� å�ڵ�
    sJikwecd      : Variant;          // �� ���ڵ�
    sJikguncd     : Variant;          // ȣ ���ڵ�
    sDeptcd2      : Variant;          // �ҼӺμ��ڵ�
    sWkareacd2    : Variant;          // �ٹ��μ��ڵ�
/////////////////  �߷�ó�� ���� �߰�(2004.08.11)   ////////////////////////////

    sCode         : Variant;          // �ڵ�
    sCodeName     : Variant;          // �ڵ��
    sOldKey1      : Variant;          // �߷��ڵ�(����)
    sOldKey2      : Variant;          // �߷�����(����)
    sCodsrh       : Variant;          // ��ȸ�Ǵ� ����ڵ�


    sDays         : Variant;          // �����ϼ�
    sSDate        : Variant;          // ��ȸ�Ⱓ
    sEDate        : Variant;          // ��ȸ�Ⱓ
    sVaCnt        : variant;

    sChargeGbn    : Variant;          // ����ڱ���(3/4)  // ���� �߰� 2005-10-26

    sWkplace      : Variant;          // �ٹ���  //   �߰� 2006-05-18
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
     function insDocvat4(iCnt:integer):Integer;  //20150514 �����ü ����...
     function insCalcVacation():Integer;       //20151215 �ǻ��ް���ȸ��û

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

     //20150602 lee ������� ���μ���..
     function insDocvat5():Integer;
     //20150610 LEE ����� �����Ϳ��� ����
     function insDocvat6():Integer;
     //20150616 LEE ������� �����Է� �κ�
     function insDocvat7():Integer;
     //20150624 LEE �λ��� ���Է°� ������ ó��
     function insDocvat8():Integer;
     //20150728 LEE
     function SelAprolt():Integer;
     //20161104 LEE ������ ���� �߰��Ǹ鼭 �ǻ��̸� ��ȸ �κ� ��ü������ ����
     function SelDrNm_New():Integer;
//20170908
end;


/////////////////////////////////////////////////////////////////////////
//      ��������      2013-05-23
//       Create by �����
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


//0306 �߰� (������)+++++++++++++++++++++++++++++++++++++
//======================================================
// �������� ����
// �ۼ��� : 2002.02.18
// �ۼ��� : ������
// ���� ���̺� :  CCCOMCDT
//======================================================
  HgaComcd1  = class
    // �˻����Ǻ���
    ssLocate     : Variant;          // �����
    ssLargcd     : Variant;          // ��з��ڵ�


    sLargcd     : Variant;          // ��з��ڵ�
    sComcddtl   : Variant;          // �ߺз��ڵ�
    sCdabbrnm   : Variant;          // ���
    sComcdnm    : Variant;          // �ߺз��ڵ��
    sCdprtnm    : Variant;          //
    sCdprtseq   : Variant;          // code seqence
    sEditid     : Variant;          // ������ ID
    sEditip     : Variant;          // ������ IP

    sInCode1    : Variant;          // ��ȸ ��з��ڵ�
    sChoice     : Variant;          // ��ȸ�з�1:�ߺз��ڵ�,2:�ߺз��ڵ��
    sCodsrh     : Variant;          // ��ȸ��

    sRemark     : Variant;          // ���
    sSaveGbn    : Variant;          // ���屸�� ('I':�Է�, 'U':����)

    sEngcomCdNm : Variant;          // 20061019 ������ �߰�
    sCdseqno    : Variant;

    function SelComcd1():Integer;
    function insComcd1():Integer;

    function SelComcd2():Integer;    // �����ڵ带 ��ȸ�Ѵ�.       (GAG006U1)
    function InsComcd2():Integer;    // �����ڵ带 ���/�����Ѵ�.  (GAG006U1)
                                     // ���屸�� 'I':�Է�, 'U':����

    function DelComcd2():Integer;    // �����ڵ带 �����Ѵ�.       (GAG006U1)

  end;
//======================================================
// �����ڵ����
// �ۼ��� : 2002.02.25
// �ۼ��� : ������
// ���� ���̺� :  GAVACACT
//======================================================
  HgaVacact1  = class

    sRefwkcd    : Variant;      // �����ڵ�
    sWknm       : Variant;      // ���¸�
    sWkgbn      : Variant;      // ���±���
    sDaytime    : Variant;      // �ð� �ϼ� ����
    sBasdedyn   : Variant;      // �⺻����������
    sWkday      : Variant;      // �ٹ��ϼ� ���Կ���
    sAttdtcnt   : Variant;      // ����ϼ� ���Կ���
    sDeldate    : Variant;      // DELDATE  �������
    sEditid     : Variant;      // ������id
    sEditip     : Variant;      // ������ip
    sChoice     : Variant;      // �Է�/�������� (I/U)

    function SelVacac1():Integer;
    function insVacac1():Integer;
    function delVacac1(iCnt:Integer):Integer;
  end;
//======================================================
// �߷��ڵ����
// �ۼ��� : 2002.02.25
// �ۼ��� : ������
// ���� ���̺� :  GAAPOICT
//======================================================
  HgaApoict1  = class

    sApoicd   : Variant;      // �߷��ڵ�
    sApoinm   : Variant;      // �߷ɸ�
    sYn1      : Variant;      // ��������
    sYn2      : Variant;      // ��������
    sYn3      : Variant;      // ��������
    sYn4      : Variant;      // ¡������
    sYn5      : Variant;      // ���ޱ���
    sYn6      : Variant;      // ���񱸺�1
    sYn7      : Variant;      // ���񱸺�2
    sYn8      : Variant;      // ���񱸺�3
    sYn9      : Variant;      // ���񱸺�4
    sDeldate  : Variant;      // DELDATE  �������
    sEditid   : Variant;      // ������id
    sEditip   : Variant;      // ������ip
    sChoice   : Variant;      // �Է�/�������� (I/U)

    function SelApoic1():Integer;
    function insApoic1():Integer;
    function delApoic1(iCnt:Integer):Integer;
  end;
//======================================================
// �ٹ������ڵ����
// �ۼ��� : 2002.02.25
// �ۼ��� : ������
// ���� ���̺� :  GAWRKTCT
//======================================================
  HgaWrktct  = class
    ssLocate    : Variant;     // ������ڵ�(��ȸ)
    ssFlag      : Variant;     // �ٹ�����(����-A, ��ȣ-N)(��ȸ)
    ssDeptcd    : Variant;

    sLocate     : Variant;     // ������ڵ�
    sFlag       : Variant;     // �ٹ�����(����-A, ��ȣ-N);
    sWrktcd     : Variant;     // �ٹ������ڵ�
    sWrktnm     : Variant;     // �ٹ����¸�
    sStm        : Variant;     // ���۽ð�
    sEtm        : Variant;     // ����ð�
    sOtm        : Variant;     // �ð�������
    sNtm        : Variant;     // �ɾ�����
    sWtm        : Variant;     // Ư������
    sSortord    : Variant;     // ���ļ���
    sDeldate    : Variant;     // �������
    sEditid     : Variant;     // ������id
    sEditip     : Variant;     // ������ip
    sChoice     : Variant;     // �Է�/�������� (I/U)
    sVtm        : Variant;     // �Է�/�������� (I/U)
    sOvm        : Variant;     // �Է�/�������� (I/U)
    sOfm        : Variant;     // �Է�/�������� (I/U)
    ssYYMM      : Variant;
    sEmpno      : Variant;
    sEmpnm      : Variant;
    sEntdt      : Variant;
    sDeptnm     : Variant;
    sCnt        : Variant;
    sPregyn     : Variant;     // 2015.04.14 ���ö �߰�  ������� �ٹ�����

    // 2020.01.05 ������ �߰�  ������ ����
    sDtytime    : Variant;
    sDutytime   : Variant;
    sLevel      : Variant;// ����
    sType       : Variant;// ���±���
    sWotime     : Variant;// �����ð�

    function SelWrktc1():Integer;
    function SelWList():Integer;
    function insWrktc1():Integer;
    function ListWrktc:Integer; //�ٹ������ڵ� ��ȸ
    function delWrktc1(iCnt:Integer):Integer;

    // ������ ����. 2020.01.05 ������ �߰�
    function TreeSelWrktc1():Integer;

  end;


   HgaUsGrpt = class
    ssEmpno      : Variant;           // ���
    ssDeptcd     : Variant;           // �μ�
    ssGrpid      : Variant;           // �׷�

    sDeptcd     : VAriant;           // ������ �μ���

    function SelUsGrpt : Integer;
  end;



//============================================================================//
// �η���Ȳ ���                                                              //
// �ۼ��� : 2008.06.17                                                        //
// �ۼ��� : gawaguci                                                          //
// ���� ���̺� GAINSAMT, GASTATST                                             //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                       //
//----------------------------------------------------------------------------//
//   gawaguci | 2008.06.17  | �����ۼ�                                        //
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


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>���� �ۼ� ����>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//============================================================================//
// �μ����ο���Ȳ                                                             //
// �ۼ��� : 2002.01.14                                                        //
// �ۼ��� : �� �� ��                                                          //
// ���� ���̺� GAINSAMT, CCDEPTCT                                             //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                       //
//----------------------------------------------------------------------------//
//   ����   | 2002.01.11  | �����ۼ�                                        //
//============================================================================//
    HgaInsamt = class

      sType1   		: Variant;    // �˻�����1: �����
      sType2   		: Variant;    // �˻�����2: �μ�����
      sType3   		: Variant;    // �˻�����3: ���úμ�
      sType4   		: Variant;    // �˻�����4: ���úμ�
      sType5      : Variant;    // ������ȸ���� �ƴ��� �����ϱ� ���Ѱ� �߰� ��ȫ�� 2006-02-02

      ssLocate    : Variant;    // �����
      ssWkareacd  : Variant;    // �ٹ��μ��ڵ�

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

      sLocate  		: Variant;    // ������ڵ�
      sLocatenm		: Variant;    // ������
      sDeptcd  		: Variant;    // �μ��ڵ�
      sDeptnm  		: Variant;    // �μ���
      sCount   		: Variant;    // �ο���
      sGayn    		: Variant;    // ����

      sEmpno         : Variant;    // ���
      sEmpnm         : Variant;    // ����
      sResno         : Variant;    // �ֹι�ȣ
//    sDeptnm        : Variant;
      sEntdt         : Variant;    // �Ի���
      sPatno         : Variant;    // ȯ�ڹ�ȣ �������߰� 20170621
      sRetdt         : Variant;    // �����
      sJikjongnm     : Variant;    // ����
      sJikwenm       : Variant;    // ����
      sSexcd         : Variant;    // ����  // ���� �߰� 2005-10-26

      sWkareacd      : Variant;    // �ٹ��μ��ڵ�
      sWkareanm      : Variant;    // �ٹ��μ���
      sJikwe         : Variant;    // �����ڵ�
      sHobong        : Variant;    // ȣ��

      sCdprtseq      : Variant;    // �������ļ���
      sSortseq       : Variant;    // �μ��� ������ļ���

      sEditid        : Variant;    // ������
      sEditip        : Variant;    // ����������

      sTelno         : Variant;    // ��ȭ��ȣ 20060602  

      sMilyuk        : Variant;    // ���ʿ��� (����)
      sMilbrnc       : Variant;    // ����
      sMilkind       : Variant;    // ����
      sMilno         : Variant;    // ����
      sMilgrade      : Variant;    // ���
      sMilsrt        : Variant;    // �����Ⱓ����
      sMilend        : Variant;    // �����Ⱓ����

      sMilyuknm      : Variant;    // �����̸�  20060604   �߰�
      sMilkindnm     : Variant;    // �����̸�  20060604   �߰�
      sMilgradenm    : Variant;    // ����̸�  20060604   �߰�

      sDeptjang      : Variant;    // �μ���  20060923   �߰�
      sJikgunnm      : Variant;    // ������  20061013   �߰�
      sJikmunm       : Variant;    // ������  20061103 �߰�



      function ListGaInsamt(sType1,sType2,sType3,sType4: String):Integer;    // �μ��ڵ�, �μ���, �ο���ȸ.
      function List2GaInsamt() : integer;                             // �μ���Ȳ ������ ��ȸ.
      function ListGaInsamt4 : integer;                               // Ư���ϰ��Է� ����� => �ش�ٹ��μ��� �����ȸ

      function ListGaInsamt5 : integer;                               // �ش�ٹ��μ��� �������� ����� => �μ��ο� ������������ ���

      function SaveGaInsamt3(iCnt :Integer) :Integer;                 // �ش�ٹ��μ��� ������� ���ļ����� �����Ѵ�.

      function ListgaInsamt6 : Integer;                               // ���񱺴������ȸ 20060602

      function SaveGaInsamt4 : Integer;

      function ListgaInsamt7 : Integer;

      function ListgaInsamt8 : Integer;

      function List2GaInsamt2 : Integer;




    end;

//============================================================================//
// �ڰݸ�����Ȳ(GAQULIDT)                                                     //
// �ۼ��� : 2002.01.18                                                        //
// �ۼ��� : �� �� ��                                                          //
// ���� ���̺� GAINSAMT, CCDEPTCT, CCCOMCDT                                   //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                       //
//----------------------------------------------------------------------------//
//   ����   | 2002.01.18  | �����ۼ�                                        //
//============================================================================//
    HgaQulidt = class

      sType1   	: Variant;    // �˻�����1:  �ڰݸ���
      sType2   	: Variant;    // �˻�����2:  �μ�
      sType3   	: Variant;    // �˻�����3:  ����
      sType4   	: Variant;    // �˻�����4:  ��������
      sType5   	: Variant;    // �˻�����5:  �����
      sType6   	: Variant;    // �˻�����6:  ���

      sLcncdnm    : Variant;    // �ڰݸ���
      sDeptnm 	   : Variant;    // �ҼӺμ�
      sWkareanm   : Variant;    // �ٹ��μ�
      sResno      : Variant;
      sJikmu      : Variant;
      sJikjongnm  : Variant;    // ����
      sEmpnm    	: Variant;    // ����
      sEmpno      : Variant;    // ���
      sGetdate    : Variant;    // �����
      sLcnno    	: Variant;    // �ڰݸ����ȣ
      sOrgcdnm    : Variant;    // ������

      function ListGaQulidt : integer; //�ڰݸ������ ��ȸ

    end;

HgaDptto  = class

    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������

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

    sEditid       : Variant;          // ������ID
    sEditip       : Variant;          // ������IP
    sEditdate     : Variant;          // ������
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
// �����ڵ����(CCCOMCDT)                                                     //
// �ۼ��� : 2002.01.18                                                        //
// �ۼ��� : �� �� ��                                                          //
// ���� ���̺�                                                                //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                       //
//----------------------------------------------------------------------------//
//   ����   | 2002.01.18  | �����ۼ�                                        //
//============================================================================//
    HccComcdt = class

      sLargcd   : Variant;    // ��з��ڵ�
      sCdabbrnm : Variant;    // �ڵ����
      sCdetca   : Variant;    // ��Ÿ���A
      sCdetcb   : Variant;    // ��Ÿ���B
      sCdetcc   : Variant;    // ��Ÿ���C
      sCdmaxval : Variant;    // �ִ밪
      sCdminval : Variant;    // �ּҰ�
      sCdprtnm  : Variant;    // ����ڵ��
      sCdprtseq : Variant;    // ��¼���
      sCdvalue  : Variant;    // �ڵ尪
      sComcddtl : Variant;    // �Һз��ڵ�
      sComcdnm  : Variant;    // �ڵ��
      sDeldate  : Variant;    // ������
      sEditdate : Variant;    // ������
      sEditid   : Variant;    // ������ID
      sEditip   : Variant;    // ������IP

      sCode     : Variant;    // ������IP
      sName     : Variant;    // ������IP

      //function ListCcComcdt(sLrgcd : String) : Integer;

    end;

//============================================================================//
// ������Ȳ(GAAWARDT)                                                         //
// �ۼ��� : 2002.01.21                                                        //
// �ۼ��� : �� �� ��                                                          //
// ���� ���̺�                                                                //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                       //
//----------------------------------------------------------------------------//
//   ����   | 2002.01.21  | �����ۼ�                                        //
//============================================================================//
    HgaAwardt = class

      sType1     : Variant;    // �˻�����1: ������ڵ�
      sType2     : Variant;    // �˻�����2: �ҼӺμ��ڵ�
      sType3     : Variant;    // �˻�����3: ���Ʊ���
      sType4     : Variant;    // �˻�����4: �߻��� START
      sType5     : Variant;    // �˻�����5: �߻��� END
      sType6     : Variant;    // �˻�����6: ��������

      sEmpnm     : Variant;    // ����
      sEmpno     : Variant;    // ���ι�ȣ
      sDeptnm    : Variant;    // �μ���
      sAwardate  : Variant;    // ���ƹ߻���
      sAwarcdnm  : Variant;    // �����ڵ��
      sTypecdnm  : Variant;    // ���Ʊ����ڵ��
      sRemtxt    : Variant;    // ����
      sOrg       : Variant;    // ���Ʊ����

      sAwarder   : Variant;    // ������ 20061010
      sWkareanm  : Variant;    // �ٹ��μ� 20061229

      function ListGaAwardt() : Integer;

    end;

//============================================================================//
// GAPUNSDT(¡�����)                                                         //
// �ۼ��� : 2002.01.22                                                        //
// �ۼ��� : �� �� ��                                                          //
// ���� ���̺�                                                                //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                       //
//----------------------------------------------------------------------------//
//   ����   | 2002.01.22  | �����ۼ�                                        //
//============================================================================//
    HgaPunsdt = class

      sType1     : Variant;    // �˻�����1: �����
      sType2     : Variant;    // �˻�����2: �μ�
      sType3     : Variant;    // �˻�����3: ¡������ START
      sType4     : Variant;    // �˻�����4: ¡������ END
      sType5     : Variant;    // �˻�����5: ��������
      sType6     : Variant;    // �˻�����6: ¡�豸�и�

      sEmpnm     : Variant;    // ����
      sEmpno     : Variant;    // ���ι�ȣ
      sDeptnm    : Variant;    // �μ���
      sSdate     : Variant;    // ¡�������
      sEdate     : Variant;    // ¡��������
      sPuncdnm   : Variant;    // ¡���
      sTypecd    : Variant;    // ¡�豸�и�
      sRemtxt    : Variant;    // ����
      sOrg       : Variant;    // ¡������

      sWkareanm  : Variant;    // �ٹ��μ���  20061009

      function ListGaPunsdt() : Integer;

    end;

//============================================================================//
// GAMASTER(�ο���Ȳ)                                                         //
// �ۼ��� : 2002.01.23                                                        //
// �ۼ��� : �� �� ��                                                          //
// ���� ���̺�                                                                //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                       //
//----------------------------------------------------------------------------//
//   ����   | 2002.01.23  | �����ۼ�                                        //
//============================================================================//
    HgaMaster = class
      sType1     : Variant;    // /* �����       */
      sType2     : Variant;    // /* �μ��ڵ�     */
      sType3     : Variant;    // /* �ٹ��μ��ڵ� */
      sType4     : Variant;    // /* �������� '0'=��ü, '1'=����, '2'=����  */
      sType5     : Variant;    // /* �����ڵ�   */
      sType6     : Variant;    // /* ��å�ڵ�   */
      sType7     : Variant;    // /* �����ڵ�   */
      sType8     : Variant;    // /* �����ڵ�   */
      sType9     : Variant;    // /* �����ڵ�   */
      sType10    : Variant;    // ������ 20061010

      sEmpno     : Variant;    // ���ι�ȣ
      sEmpnm     : Variant;    // ����
      sEntdt     : Variant;    // �Ի���
      sRetdt     : Variant;    // �����
      sJikgunnm  : Variant;    // ������
      sJikjongnm : Variant;    // ������
      sJikwenm   : Variant;    // ������  
      sJikcheknm : Variant;    // ��å��  
      sJikgupnm  : Variant;    // ���޸�  
      sHobong    : Variant;    // ȣ��    
      sDeptnm    : Variant;    // �μ���
      sWkareanm  : Variant;    // �ٹ�����
      sResno     : Variant;    // �ٹ�����



      function ListGaMaster() : Integer;

    end;
//============================================================================//
// CCDEPTCT(�μ���ȸ)                                                          //
// �ۼ��� : 2002.01.24                                                         //
// �ۼ��� : �� �� ��                                                           //
// ���� ���̺�                                                                 //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                        //
//----------------------------------------------------------------------------//
//   ����   | 2002.01.24  | �����ۼ�                                         //
//============================================================================//
    HccDeptct = class

      sType1	    : Variant;    // �˻�����1: ������ڵ�

      sChadate    : Variant;    //��������
      sChadept    : Variant;    //�������μ��ڵ�
      sConsyn 	  : Variant;    //�ܷ���������μ�(Ŭ���� �� ����)
      sCostyn 	  : Variant;    //�������� ����
      sDeldate    : Variant;    //�������
      sDeptcd 	  : Variant;    //�μ��ڵ�
      sDepteng    : Variant;    //�μ�������
      sDeptlvl    : Variant;    //�μ�����
      sDeptnm 	  : Variant;    //�μ���
      sDpcd 	    : Variant;    //OCS����ڵ�
      sEditdate   : Variant;     //������
      sEditid 	  : Variant;    //�����ڰ��ι�ȣ
      sEditip 	  : Variant;    //������ IP
      sGaseq 	    : Variant;    //��ȸ����(�λ�) - �����߰�
      sGayn 	    : Variant;    //�λ��� ����
      sGcyn 	    : Variant;    //�繫��� ����
      sGeyn 	    : Variant;    //���Ż�� ����
      sLocate 	  : Variant;    //�����(�����ڵ�)
      sLocateyn   : Variant;    //����ġ�μ�����
      sOlddepcd   : Variant;    //���ý��ۺμ��ڵ�
      sOrdisyn    : Variant;    //��������μ�
      sPhone 	    : Variant;    //��ȭ��ȣ(�Ͻ¼���û)
      sPrsgwcd    : Variant;    //����� ��ǥ���ڵ�
      sPrthseq    : Variant;    //������¼���
      sReqyn 	    : Variant;    //Ÿ���Ƿ�(����Ʈ) ���ɺμ� (����� �� ����)
      sRootflag   : Variant;    //�������� ���翩��
      sSeq1 	    : Variant;    //�Ϲ��� ��ȸ����
      sSeq2 	    : Variant;    //��ȸ����(�ǹ����)
      sSeq3 	    : Variant;    //��ȸ����(����)
      sSerialno   : Variant;    //������ ����
      sSpclass    : Variant;    //���������о�
      sSpdept 	  : Variant;    //�����������ڵ�
      sSpseq 	    : Variant;    //��������������
      sSupdept    : Variant;    //�����μ��ڵ�
      sSupyn 	    : Variant;    //�������� ��뿩��(���ü����û)
      sTrndyn 	  : Variant;    //����ü���ʿ俩��
      sWardtype   : Variant;    //��������(1.����,2.��ȯ��)
      sWardyn 	  : Variant;    //���������μ�
      //sWkseq 	    : Variant;    //��ȸ����(�λ� �ٹ��μ�) - �����߰�
      //sWkyn 	    : Variant;    //�λ���(�ٹ��μ�) ���� - �����߰�

      sCode 	    : Variant;
      sName       : Variant;


    // �ҼӺμ��� ������ �´�.
    function ListGaDeptct  : integer;
    // �ҼӺμ��� ������ �´�.
    function ListGaDeptct1 : integer;
    end;


//============================================================================//
// GAWRKSDT(���»�����ȸ)                                                      //
// �ۼ��� : 2002.02.04                                                         //
// �ۼ��� : �� �� ��                                                           //
// ���� ���̺�                                                                 //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                        	//
//----------------------------------------------------------------------------//
//   ����   | 2002.02.04  | �����ۼ�                                         //
//============================================================================//
	HgaWrksdt = class

		sType1      : Variant;   // �˻�����1: ���ι�ȣ
		sType2      : Variant;   // �˻�����2: �����
		sType3      : Variant;   // �˻�����3: �����ڵ�
		sType4      : Variant;   // �˻�����4: �μ��ڵ�
		sType5      : Variant;   // �˻�����5: �λ�Ȯ�ο���
		sType6      : Variant;   // �˻�����6: ���½�����
		sType7      : Variant;   // �˻�����7: ����������

    sAppDate    :	Variant;	  // ���� �ۼ���
    sDeptcd     :	Variant;	  // �μ��ڵ�
    sSeqno      :	Variant;	  // �ۼ��Ϸù�ȣ
    sAllconyn   :	Variant;	  // ���������ϷῩ��
    sFlag       :	Variant;	  // ����/�λ� ����(N/A)
		sIndeptnm   :	Variant;	  // �Էºμ�
		sEmpno      :	Variant;	  // ���ι�ȣ
		sEmpnm      :	Variant;	  // ����
    sWkcd       :	Variant;	  // �����ڵ�
		sWknm       :	Variant;	  // ���±���
		sWksdate    :	Variant;	  // ���½�������
		sWkedate    :	Variant;	  // ������������
		sCnt        :	Variant;	  // �����ϼ�
    sIndeptcd   : Variant;	  // �Էºμ�
    sDeptnm     : Variant;	  // �Էºμ���
		sRemtxt     :	Variant;	  // ���»���
		sChkyn      :	Variant;	  // ��������(�λ�μ�Ȯ��)
    sGenconID   : Variant;    // �λ�μ�Ȯ����ID
		sEditnm     :	Variant;	  // �Է���  ��
		sEditdate   : Variant;    // ������
    sEditid     : Variant;    // ������ID
    sEditip     : Variant;    // ������IP
    sChoice     : Variant;    // �۾�����

    sWkdate     : Variant;    // ������
		sLocate     :	Variant;	  // �����
		sRefwkcd    :	Variant;	  // �����ڵ�
    sOldRefwkcd : Variant;    // ���� ���� �ڵ�
    sOldWksdate : Variant;    // ���� ���½�����
    sOldWkedate : Variant;    // ���� ����������

    sMkDeptcd   : Variant;    // �μ��ڵ�
    sMkDeptnm   :	Variant;	  // �ۼ��μ���
    sMkEmpno    : Variant;    // �ۼ��� ���
    sMkEmpnm    : Variant;    // �ۼ��� ����
    sAppSeqno   : Variant;    // �ۼ��Ϸù�ȣ
    sDoctype    : Variant;    // ��������(W, O, P)
    sRettxt     : Variant;    // �ݼۻ���
    sAppCnt     : Variant;    // ���������
    sInsayn     : Variant;    // �λ�μ� ����
    sAppYn      : Variant;

    sNewvcnt    : Variant;    // �űԻ�������(��������Ȳ ��ȸ�� ���)

    sOldappdate : Variant;   // ���������ۼ��� (����� Delete �Ŀ� �ٽ� Insert �ϴµ� Delete�� ���)

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


      //���� �� �����ؾ���^^
      function ListGaWrksdt2 : Integer;
      function DelGaWrksdt(iCnt : integer) : Integer;

      function DelGaWrksdt2 :Integer;      // �ش繮����ȣ�� �ش��ϴ� ���»����� �����Ѵ�.

      function DelGaSatret :Integer;

      function InsGaWrksdt(iCnt : Integer):Integer;
      function UpdGaWrksdt:Integer;

      function UpdGaWrksdt5:Integer;       // �ϱ��½�û ����ȭ�鿡�� �ѹ���������̸� ���µ����Ϳ� ���Ͽ� ����(���½�����, ������, �����ڵ�)

      function ListGaVacamt : Integer;
      function InsGasatret(iCnt : Integer):Integer;

      function CloseYn : Integer;

      function InsTGsudang(iCnt : Integer) :Integer;
      function ListTGsudang : Integer;

      end;

//============================================================================//
// GAVACACT(�����ڵ�)                                                          //
// �ۼ��� : 2002.02.04                                                         //
// �ۼ��� : �� �� ��                                                           //
// ���� ���̺�                                                                 //
//----------------------------------------------------------------------------//
//   ������   | ������      |  ��������                                        //
//----------------------------------------------------------------------------//
//   ����   | 2002.02.04  | �����ۼ�                                         //
//============================================================================//
	HgaVacact = class

		sCode1    : Variant;   // �˻�����1:
    sCode2    : Variant;   // �˻�����1:




    sCode     : Variant;   //
    sCodeName : Variant;   //
    SFlag     : Variant;   // �߰� ���� 2005-12-23
    sWktime   : Variant;

		sRefwkcd  : Variant;	  // ����ϼ����Կ���
		sWkseq    : Variant;	  // �⺻����������
		sWknm     : Variant;	  // �ð�/�ϼ�����
		sWkgbn    : Variant;	  // ����Ÿ Expired Date
		sDaytime  : Variant;	  // ������
		sBasdedyn : Variant;	  // ������ ID
		sWkday    : Variant;	  // ������ IP
		sAttdtcnt : Variant;	  // �����ڵ�
    sWeekyn   : Variant;   // �������뿩��
    sEditid   : Variant;   // �ٹ��ϼ����Կ���
    sEditip   : Variant;   // ���±��� W-����, O-Ư��
    sEditdate : Variant;   // �� �� ��
    sDeldate  : Variant;   // ����

      // �����ڵ�(GAWRKTCT) ������ ��Ÿ����.
    function ListGaVacact(Code1, Code2:String) : integer;
    function ListGaVacact1(Code1, Code2, Code3, Code4 :String) : integer;    
  end;

////////////////////////////////////////////////////////////////////////////////
// ��� �������� ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.24
// �������̺� : GAGUARDT
////////////////////////////////////////////////////////////////////////////////

  HgaGuardt  = class

    sWrntNm1      : Variant;        // ������ ����1
    sWrntRel1     : Variant;        // ������ ���� 1
    sWrntJik1     : Variant;        // ������ ���� 1
    sWrntJik3     : Variant;        // ������ �ٹ��μ�  20061009
    sWrntSsn1     : Variant;        // ������ �ֹε�� ��ȣ1
    sWrntAddr1    : Variant;        // ������ �ּ� 1
    sWrntTax1     : Variant;        // ������ �ҵ漼 1
    sWrntNm2      : Variant;        // ������ ����2
    sWrntRel2     : Variant;        // ������ ���� 2
    sWrntJik2     : Variant;        // ������ ���� 2
    sWrntSsn2     : Variant;        // ������ �ֹε�� ��ȣ2
    sWrntAddr2    : Variant;        // ������ �ּ� 2
    sWrntTax2     : Variant;        // ������ �ҵ漼 2
    sWrntInnm     : Variant;        // ���������
    sWrntConm     : Variant;        // ����ȸ���
    sWrntAmt      : Variant;        // �����
    sWrntFee      : Variant;        // �����
    sWrntInno     : Variant;        // �����ȣ

    sEmpno        : Variant;        // ���ι�ȣ
    sLocate       : Variant;        // �� �� ��
    sEditid       : Variant;         // ������ID
    sEditip       : Variant;         // ������IP
    sEditdate     : Variant;         // ������

    sCodsrh       : Variant;        // ��ȸ�Ǵ� ����ڵ�
    sChoice       : Variant;        // �Է�/��������(I/U)
    sWrntcls      : Variant;        // ��������(P�κ���, C��������)
    sWrntSdate    : Variant;        // ����������
    sWrntEdate    : Variant;        // ����������
    sWrntSDate_Old: Variant;        // ����������(������)
    sWrntEDate_Old: Variant;        // ����������(������)
    sWrntcls_Old  : Variant;        // ��������(������)

    function SelGuardt():Integer;
    function SelGuardtAll(sLocate,                       // �����
                          sDeptCd,                       // �μ��ڵ�
                          sWrntCls,                      // ��������
                          sWrntSDate,                    // ����������
                          sWrntEDate,                    // ����������
                          sJejikGbn :String):Integer;    // ��������


    function InUpdGuardt():Integer;
    function DelGuardt():Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// ��� �ǰ����� ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.25
// �������̺� : GAHEALTT
////////////////////////////////////////////////////////////////////////////////
  HgaHealth  = class

    sGaHight      : Variant;        //����
    sWaWeight     : Variant;        //ü��
    sEyeLeft      : Variant;        //�÷�(��)
    sEyeRight     : Variant;        //�÷�(��)
    sGlsLeft      : Variant;        //�����÷�(��)
    sGlsRight     : Variant;        //�����÷�(��)
    sColorTyp     : Variant;        //����
    sBloodTy      : Variant;        //������
    sBloodPle     : Variant;        //����
    sEarLeft      : Variant;        //û��(��)
    sEarRight     : Variant;        //û��(��)
    sGaTooth      : Variant;        //ġ����ȯ
    sGaLiver      : Variant;        //��������
    sCholestrol   : Variant;        //�ݷ����׷�
    sGaCloseexm   : Variant;        //���а�������
    sGaxray       : Variant;        //��缱 ���
    sGaTotView    : Variant;        //���ռҰ�

    sEmpno        : Variant;        //���ι�ȣ
    sLocate       : Variant;        //�� �� ��
    sGenDate      : Variant;         //�ǰ�������
    sEditid       : Variant;        //������ID
    sEditip       : Variant;        //������IP

    sCodsrh       : Variant;        //��ȸ�Ǵ� ����ڵ�
    sChoice       : Variant;        //�Է�/��������(I/U)
    sGenDate_Old  : Variant;        //�ǰ�������(������)

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

 {HAPMEDSHT  // �ǻ���������, �ǻ��������� (������ MDSCHDRT, MDOFFDRT ���̺�) }
   HGAMEDSHT = class
      sMeddept   : Variant;   // �����/����μ�
      sMeddr     : Variant;   // �����ǻ�(�����ǻ�)
      sEmpno     : Variant;
      sMeddate   : Variant;   // ��������/�Կ�����
      sExamtm    : Variant;   // ����(����)�ð�
      lFstcnt    : Variant;   // ���������ο�
      lRecnt     : Variant;   // ���������ο�
      lTotcnt    : Variant;   // ��ȯ�ڼ�/�Ѱ����ο�
      lOfstcnt   : Variant;   // �������������ο�
      lOrecnt    : Variant;   // �������������ο�
      lOtotcnt   : Variant;   // ������ȯ�ڼ�/�Ѱ����ο�
      lRsvfcnt   : Variant;   // ���������ο�
      lRsvrcnt   : Variant;   // ���������ο�
      lRsvtcnt   : Variant;   // �ѿ����ο�
      sCnt       : Variant;   // �����ο�/��������(��/����)
      sFromdate  : Variant;   // ������������
      sTodate    : Variant;   // ������������
      sOffresn   : Variant;   // ���������ڵ�
      sRemark    : Variant;   // ���
      sEditid    : Variant;   // ������ ID
      sEditip    : Variant;   // ������ IP
      sEditdate  : Variant;   // �����Ͻ�
      sDd        : Variant;   // ����
      sAmpm      : Variant;   // ����,���ı���(AM,PM)
      sMeddeptnm : Variant;   // �μ���
      sMeddrnm   : Variant;   // �ǻ��
      sOffresnnm : Variant;   // ����������
      sLicno     : Variant;   // �ǻ����
      sComments  : Variant;   // �ڸ�Ʈ
      sAmpmflag  : Variant;   // �������ı���
      holcnt     : Variant;
      sFlag      : variant;   // ��ȸ����      
      sNoFlag    : variant;   // ��/���� ����
      sUseyn     : variant;
      sSpcdryn   : variant;
      sHolyday   : variant;
      sDays      : variant;
      sOffdr     : variant;   // ���� ����

      //-----------------------------------------------------------
      function MEDSH_S1 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S1
      //-----------------------------------------------------------
      // �ǻ��� ���� ���Ό����Ȳ�� �����Ѵ�.
      //
      // argument : sMeddept, sMeddr, sMeddate('YYYY-MM')
      //-----------------------------------------------------------

      //-----------------------------------------------------------
      function MEDSH_S2 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S2
      //-----------------------------------------------------------
      // �ǻ��� �Ϻ� ���Ό����Ȳ��ȸ
      //
      // argument : sMeddept, sMeddr, sMeddate('YYYY-MM-DD')
      //-----------------------------------------------------------

      //-----------------------------------------------------------
      function MEDSH_S3 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S3
      //-----------------------------------------------------------
      // ������� �Ϻ� ���ᰡ���ǻ�� �ð���ȸ
      // argument : sMeddept, sMeddate('YYYY-MM-DD')
      //-----------------------------------------------------------

      //-----------------------------------------------------------
      function MEDSH_S4 : Integer;
      //-----------------------------------------------------------
      // SERVER   : AP_A112NX
      // SERVICE  : AP_MEDSH_S4
      //-----------------------------------------------------------
      // ��������(from, to) �� ���� �����, �����ǻ纰 ����������ȸ
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
    sEmpno        : Variant;        //���ι�ȣ
    sGmode        : Variant;        //
    sLocate       : Variant;        //�� �� ��
    sDeptcd       : Variant;        //�� �� ��
    sSeqno        : Variant;
    sDays         : Variant;
    sWkareacd     : Variant;
    sJikjong      : Variant;
    sSelectEmp    : Variant;
    sGbn          : Variant;
    sRemtxt       : Variant;
    sStdt         : Variant;        //������
    sSttime       : Variant;        //���۽ð�
    sEndtime      : Variant;        //����ð�
    sEditid       : Variant;        //������ID
    sEditip       : Variant;        //������IP
    sIntelno      : Variant;        //������IP
    sPagerno      : Variant;        //������IP
    sHphoneno     : Variant;        //������IP
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
// ��� ������ ��Ȳ ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.27
// �������̺� : GAHEALTT
////////////////////////////////////////////////////////////////////////////////
  HgaVacamt  = class
    ssLocate      : Variant;        //�����
    ssEmpno       : Variant;        //�����ȣ
    ssYear        : Variant;        //�⵵
    ssSDate       : Variant;        //�˻�������
    ssEDate       : Variant;        //�˻�������
    ssGrade       : Variant;
    sgbn          : Variant;        //����

    sEmpnm        : Variant;        //�����
    sResNo        : VAriant;        //�ֹι�ȣ
    sCuryymm      : Variant;        //������
    sEnterDate    : Variant;        //�Ի���
    sTotVCnt      : Variant;        //��������
    sNewVCnt      : Variant;        //�űԹ߻�����
    sUseVCnt      : Variant;        //������
    sRemVCnt      : Variant;        //�ܿ�����
    sTotMCnt      : Variant;        //��������
    sNewMCnt      : Variant;        //�űԹ߻�����
    sUseMCnt      : Variant;        //������
    sRemMCnt      : Variant;        //�ܿ�����
    sNewWCnt      : Variant;        //�űԹ߻�����
    sUseWCnt      : Variant;        //������

    sEmpno        : Variant;        //���ι�ȣ
    sLocate       : Variant;        //�� �� ��
    sDeptCd       : Variant;        //�μ�
    sEditid       : Variant;        //������ID
    sEditip       : Variant;        //������IP

    sCodsrh       : Variant;        //��ȸ�Ǵ� ����ڵ�
    sChoice       : Variant;        //�Է�/��������(I/U)
    sCuryymm_Old  : Variant;        //������
    sDutydate     : Variant;        //��������

    sRetdt        : Variant;        //������� �߰� ����ȭ JI 2006-01-03
    sDeptGubn     : Variant;        // �߰� ���� 2006-01-07

    sFirst        : Variant;        //ó�� ���� �߰� ���� 2006-01-31
    sGubn         : Variant;
    sTsamt        : Variant;        //���� ����

    sDuty         : Variant;        // �ٹ��ڵ�
    sAppseqno     : Variant;        // �Ϻ����� ������ȣ
    sRemtxt       : Variant;        // ���»���
    sWrktnm       : Variant;        // ���¸�

    sDeptnm       : Variant;        // �μ���  2006-09-11 �߰�
    sWkareanm     : Variant;        // �ٹ��μ���  2021-05-13 �߰�
    sVaCnt        : Variant;

    ssDeptcd      : Variant;        //�μ��ڵ� 2006-09-12 �߰�

    sUsePre         : Variant;     // �����           2006-09-12 �߰�
    sPreYearNewVCnt : Variant;     // ���⵵ �߻�����  2006-09-12 �߰�
    sAccloc         : Variant;
    sWkareacd       : Variant;
    sPreYearUseVCnt : Variant;     
    sDeptnm1        : Variant;     

    function SelVacamtEmp():Integer;    // �ش����� �űԹ߻�����, ������, �ܿ������� ��ȸ
    function SelVacamtEmp2():Integer;   // �ش����� ������� �󼼳����� ��ȸ
    function SelVacamt():Integer;       // �ش����� �ش�⵵ ������Ȳ�� ��ȸ

    function SelVacamtDept():Integer;
    function SelVacamtAll():Integer;
    function InUpdVacamt(iCnt : Integer):Integer;
    function InUpdVacamtAll(iCnt : Integer):Integer;

    function SelYearUseVCnt() : Integer;
    function SelYearUseVCnt2() : Integer;
    function SelYearUseVCnt3() : Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// ���������Ȳ ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.08.10
// �������̺� : GAINSAMT, GBPMSTMT
////////////////////////////////////////////////////////////////////////////////
  HgaSalary = class
    sType1        : Variant;  // �ҼӺμ�
    sType2        : Variant;  // �ٹ��μ�
    sType3        : Variant;  // ����
    sType4        : Variant;  // ����
    sType5        : Variant;  // ����
    sType6        : Variant;  // ��࿬��(From)
    sType7        : Variant;  // ��࿬��(To)
    sType8        : Variant;  // Locate
    sType9        : Variant;  // �����ڱ��� 20061009
    sGubn         : Variant;  // ��ȸ����(0 : ���������Ȳ ��ȸ, 1 : ���� ������ ��ȸ)

    sEmpNm        : Variant;  // ����
    sEmpNo        : Variant;  // �����ȣ
    sDeptNm       : Variant;  // �ҼӺμ�
    sJikGun       : Variant;  // ����
    sJikJong      : Variant;  // ����
    sJikGup       : Variant;  // ����
    sConSDate     : Variant;  // ��������
    sConEDate     : Variant;  // ��ุ����
    sMonthPay     : Variant;  // �����޾�
    sConMoney     : Variant;  // ����

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
// ��ȣȸ/��ȸ �ڵ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.08.14
// �������̺� : GASOCICT
////////////////////////////////////////////////////////////////////////////////
  HgaAssoct = Class
    sSocscd       : Variant;    // ��ȣȸ�ڵ�
    sLocate       : Variant;    // ������ڵ�
    sSocsnm       : Variant;    // ��ȣȸ��
    //sGbn          : Variant;    // ����
    sSort         : Variant;    // ��ȸ����
    sAmt          : Variant;    // ��ȣȸ��
    sYn           : Variant;    // ��뿩��
    sEditid       : Variant;    // ������ ID
    sEditip       : Variant;    // ������ IP
    sDeldate      : Variant;    // ������
    sChoice       : Variant;    // �۾�����

    function SelAssociation : Integer;
    function InsUpAssociation : Integer;
    function DelAssociation(iCnt : Integer):Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// ��ȣȸ/��ȸ �ڵ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.08.14
// �������̺� : GASOCIDT
////////////////////////////////////////////////////////////////////////////////
  HgaSocidt = Class
    ssLocate      : Variant;    // ������ڵ�
    ssEmpno       : Variant;    // �����ȣ
    ssSocscd      : Variant;    // ��ȣȸ/��ȸ�ڵ�

    sSocscd       : Variant;    // ��ȣȸ�ڵ�
    sLocate       : Variant;    // ������ڵ�
    sEmpno        : Variant;    // �����ȣ
    sEmpnm        : Variant;    // �����
    sDeptcd       : Variant;    // �μ��ڵ�
    sDeptnm       : Variant;    // �μ���
    sSocsnm       : Variant;    // ��ȣȸ��
    sAmt          : Variant;    // ��ȣȸ��
    sDt           : Variant;    // ������
    sEnddt        : Variant;    // Ż����
    sJikcheknm    : Variant;    // ��å��
    sRemtxt       : Variant;    // ���
    sEditid       : Variant;    // ������ ID
    sEditip       : Variant;    // ������ IP
    sDeldate      : Variant;    // ������
    sChoice       : Variant;    // �۾�����

    function ListGaSocidt : Integer;
    function SaveGaSocidt : Integer;
  end;


////////////////////////////////////////////////////////////////////////////////
// ���� ������� ���
// �ۼ��� : ���¿�
// �ۼ��� : 2004.08.20
// �������̺� : GADPOVTT
////////////////////////////////////////////////////////////////////////////////
  HgaConfirm = class
    sEmpno        : Variant;    // �����ȣ
    sEmpnm        : Variant;    // �����
    sLocate       : Variant;    // ������ڵ�
    sDeptCD       : Variant;    // �μ��ڵ�(���κμ��ڵ�)
    sDeptnm       : Variant;    // �μ���
    sDeptGBN      : Variant;    // �μ�����(0 : �Ҽ�, 1: �ٹ��μ�)
    sRQDegreeCD   : Variant;    // ���(1: ������, 2 : ������)
    sRQDegreeNM   : Variant;    // ���(1: ������, 2 : ������)
    sRemtxt       : Variant;    // ���

    sType1        : Variant;    // ��ȸ���� 1
    sType2        : Variant;    // ��ȸ���� 2
    sType3        : Variant;    // ��ȸ���� 3
    sEditid       : Variant;    // ������ ID
    sEditip       : Variant;    // ������ IP
    sDeldate      : Variant;    // ������
    sChoice       : Variant;    // �۾�����

    function SelConfirmList : Integer;
    function InsUpConfirmList : Integer;
    function DelConfirmList(iCnt : Integer) : Integer;

  end;

////////////////////////////////////////////////////////////////////////////////
// ��Ư�ٻ���
// �ۼ��� : ���¿�
// �ۼ��� : 2004.08.20
// �������̺� : GAOVEDDT
////////////////////////////////////////////////////////////////////////////////
  HgaOverddt = Class
    ssLocate     : Variant;    // ����� �ڵ�
    ssSDate      : Variant;    // ��ȸ ��������
    ssEDate      : Variant;    // ��ȸ ��������
    ssMkdeptcd   : Variant;    // �ۼ��μ� �ڵ�
    ssFromAppdate: Variant;    // �ۼ��μ� �ڵ�
    ssToAppdate  : Variant;    // �ۼ��μ� �ڵ�

    ssDeptcd     : Variant;
    ssWkareacd   : Variant;



    ssAppDate    : Variant;    // �ۼ�����
    ssAppSeqno   : Variant;    // �ۼ� �Ϸù�ȣ
    ssMkEmpno    : Variant;    // �ۼ��� ���
    ssDocType    : Variant;    // ��������
    ssLoginuser  : Variant;    // �α��λ�� ���
    ssAppEmpno   : Variant;    // Ư�� ���� ��ȸ ��� 20200403 ������ �߰� 

    sLocate      : Variant;    // ����� �ڵ�
    sAppdate     : Variant;    // �ۼ�����
    sMkdeptcd    : Variant;    // �ۼ��μ�
    sAppseqno    : Variant;    // �ۼ� �Ϸù�ȣ
    sMkempno     : Variant;    // �ۼ��� ���
    sDoctype     : Variant;    // ��������
    sEmpno       : Variant;    // �����ȣ
    sWkdate      : Variant;    // Ư������
    sWkstime     : Variant;    // Ư�ٽ��۽ð�
    sWketime     : Variant;    // Ư������ð�
    sWeekcnt     : Variant;    // ����
    sCnt         : Variant;    // Ư�ٽð���
    sCntovr      : Variant;    // �ð���
    sCntnig      : Variant;    // �ɾ�
    sRemtxt      : Variant;    // Ư�ٻ���
    sRettxt      : Variant;    // �ݼۻ���
    sAllconyn    : Variant;    // ����Ϸ� ����
    sChkyn       : Variant;    // �λ�Ȯ�� ����
    sGenconid    : Variant;    // �λ�μ� Ȯ����
    sEmpnm       : Variant;    // ����
    sMkempnm     : Variant;    // �ۼ��� ����
    sJikwe       : Variant;    // ��� ����
    sEditid      : Variant;    // ������ ID
    sEditip      : Variant;    // ������ IP
    sInsayn      : Variant;    // �λ�μ� ����
    sAppyn       : Variant;    // ���翩��
    sZyn         : Variant;    // �����ް�����   2018-07 ������ �߰�

    sDeptnm      : Variant;    // �μ���
    sCompayt     : Variant;    // ����ӱ�
    sDocstep     : Variant;    // �����ܰ�

    sFlag        : Variant;    // Ư����ҿ���Flag
    ssEmpno      : Variant;    // 

    sMkDeptnm    : Variant;    // // �ۼ��μ��� ���� �߰� 2005-11-04
    sOldappdate  : Variant;    // ���������ۼ��� (����� Delete �Ŀ� �ٽ� Insert �ϴµ� Delete�� ���)
    sOldWkstime  : Variant;    // �������½��۽ð�
    sOldWketime  : Variant;    // ������������ð�

    sAmt         : Variant;    // �ð��� ����

    


    //function SelOverddT   : Integer;
    function ListOveddt   : Integer;    // �Ϻ� Ư�� ��û ��ȸ
    function DelOverddt(iCnt : Integer) : Integer;


    function ListOveddt6 : Integer;      // �Ϻ�Ư�ٽ�û ��������ȸ (ga_ovedt_l6.pc)
    function ListOveddt7 : Integer;      // �Ϻ�Ư�ٽ�û ��������ȸ (ga_ovedt_l7.pc)
    function ListOveddt8 : Integer;      // �Ϻ�Ư�ٽ�ûȭ�� Ư����� �˾�â => �ѹ�����Ϸ�� Ư������� ������ ��ȸ(ga_ovedt_l8.pc)
    function ListOveddt9 : Integer;      // �ѹ��� �Ϻ�Ư����ȸ (ga_ovedt_l9.pc)
    function ListOveddt10 : Integer;      // �ѹ��� �Ϻ�Ư����ȸ (ga_ovedt_l9.pc)


    function DelOverddt2 : Integer;      // �Ϻ�Ư�ٽ�û ����(������ü����)
    function UpdateOverddt5 : Integer;   // Ư�ٰ��翡�� ������� �α��νÿ� ���½ð�, �ð���, �ɾ� UPDATE


    function SaveOvedt(iCnt : Integer) : Integer; // �� Ư�ٽ�û ���� ���� ���� 2005-10-31

    function InsOveddt2(iCnt : Integer) :Integer;  // �� Ư�ٽ�û ����
    function ListOveddt1  : Integer;    // �Ϻ� Ư�� ��û ��ȸ(�ߺ�Check)

{
    function SelOverddT2  : Integer;    // �λ�μ� ����� ��ȸ
    function InsOverddT   : Integer;
    function InsOverddT2(iCnt : Integer) : Integer;

}
  end;

////////////////////////////////////////////////////////////////////////////////
// ���缱 ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.10.13
// �������̺� : GASIGNLT
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
// ������ ���� ����
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
// ���� �ٹ������� �ڵ� (����ڵ�)
// �ۼ��� : ���汸
// �ۼ��� : 2009.05.08
// �������̺� : GAMDUTYT
////////////////////////////////////////////////////////////////////////////////
  HgaDtytpt = class

  

  end;


////////////////////////////////////////////////////////////////////////////////
// ���� �ٹ� ������
// �ۼ��� : 2004.10.13
// �������̺� : GAMDUTYT
////////////////////////////////////////////////////////////////////////////////
  HgaMdutyt = Class
    // ��ȸ���� �Ķ����
    ssLocate        : Variant;      // �����
    ssFromdate      : Variant;
    ssTodate        : Variant;
    ssDays          : Variant;
    ssDayCnt        : Variant;
    ssDD            : Variant;
    ssYYMM          : Variant;      // �ۼ���
    ssDeptcd        : Variant;      // �ۼ��μ�
    ssFlag          : Variant;      // ��ȣ(N)/����(A) ����
    ssSDate         : Variant;      // ��ȸ������
    ssEDate         : Variant;      // ��ȸ������
    ssEmpno         : Variant;      // �����ȣ(��ȸ)
    ssPaygbn        : Variant;      // �޿�����
    ssGbfGn        : Variant;      // �޿�����

    ssMainDept      : Variant;
    ssUserid        : Variant;

    ssDutydate      : Variant;      // �ٹ�����  �߰� ���� 2005-12-22
    ssAppYN         : Variant;      // ���� Ȯ�ο��� ���� 2006-01-14
    ssInsaYN        : Variant;      // �λ�μ� ���� ���� 2006-01-14
    sCnt            : Variant;      // ����� �����ڵ� �� (appyn = 'Y')
    ssANFlag        : Variant;      // ��ȣ/���� ���� (A: ����, N: ��ȣ)
    ssYear          : Variant;      // �⵵

    ssAppdate       : Variant;      // �����ۼ���
    ssMkdeptcd      : Variant;      // �ۼ� �μ��ڵ�
    ssMkempno       : Variant;      // �ۼ��� ���
    ssDoctype       : Variant;      // ��������
    ssAppseqno      : Variant;      // �ۼ��Ϸù�ȣ
    ssWkyymm        : Variant;      // �ٹ����

    ssAppempno      : Variant;      // �����ڻ��
    ssMeddept       : Variant;      // ��ȣ�� �ٹ����

    ssGubun         : Variant;      // ���� 2006-09-26 �߰�
    ssGhgb          : Variant;      // ��ȣ���� ���� 20200504 ������ �߰�   

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

    // 2020.01.03 ������ �߰�. ������ ����
    ssYYMMst        : Variant;
    ssYYMMed        : Variant;
    ssMinDays       : Variant;
    ssMaxDays       : Variant;

    // ��/��� �Ķ����
    sLocate         : Variant;  // �����
    sEmpno          : Variant;  // �����ȣ
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
    sFACILCNT       : Variant;   //�ü����� �߰� 20171017 ������

    sEmpnm          : Variant;  // �����
    sWkmonth        : Variant;  // �����
    sEntdt          : Variant;  // �Ի���
    sJikwe          : Variant;  // ����
    sJikwenm        : Variant;  // ������
    sMkyymm         : Variant;  // �ۼ����
    sDutydate       : Variant;  // �ٹ�����
    sDutyCode       : Variant;  // �ٹ��ڵ�
    sDutyFlag       : Variant;  // �����ڵ� ����(A:���������ڵ�, N: ��ȣ�����ڵ�) ex) ��ȣ��(A16C),�ѹ氣ȣ(A26B),�������а�(A14K)
    sDutyName       : Variant;  // �����ڵ��
    sDeptcd         : Variant;  // �ۼ��μ�

    sDeptNm         : Variant;  // �μ���
    sWkareacd       : Variant;  // �ٹ��μ�
    sDayWeek        : Variant;  // ����
    sOvertime       : Variant;  // �ð��ܱٹ��ð�
    sTottime        : Variant;  // �ѱٹ��ð�
    sYear           : Variant;
    sOcnt           : Variant;
    sNighttime      : Variant;  // �ɾ߱ٹ��ð�
    sHolytime       : Variant;  // �����ϱٹ��ð�
    sCloseyn        : Variant;  // ��������
    sOtm            : Variant;  // �ð��ܱٹ�(�ٹ��ڵ�)
    sNtm            : Variant;  // �ɾ߱ٹ�(�ٹ��ڵ�)
    sTotvcnt        : Variant;  // �ѿ���
    sUsevcnt        : Variant;  // ��뿬��
    scntduty15      : Variant;  // ��뿬��
    scntduty30      : Variant;  // ��뿬��
    sWeekcnt        : Variant;  // ����
    sInputid        : Variant;  // �Է��� ID
    sInputip        : Variant;  // �Է��� IP
    sEditid         : Variant;  // ������ ID
    sEditip         : Variant;  // ������ IP
    sChoice         : Variant;  // �۾�����(I/U)
    sFlag           : Variant;  // ����/��ȣ ����(A/N)
    sInTime         : Variant;  // ��ٽð�
    sOutTime        : Variant;  // ��ٽð�

    sDutycd         : Variant;
    sDutynm         : Variant;
    sUseYn          : Variant;
    stm             : Variant;
    etm             : Variant;

    sAppdate        : Variant;  // �����ۼ���
    sMkdeptcd       : Variant;  // �ۼ��� �ٹ��μ��ڵ�
    sMkdeptnm       : Variant;  // �ۼ��� �ٹ��μ���
    sMkempno        : Variant;  // �ۼ��� ���
    sMkempnm        : Variant;  // �ۼ��ڸ�
    sDoctype        : Variant;  // ��������
    sAppseqno       : Variant;  // �ۼ��Ϸù�ȣ
    sAllconyn       : Variant;  // ����Ϸ� ����
    sChkyn          : Variant;  // �λ�μ� ����Ϸ� ����
    sDocstep        : Variant;  // �����ܰ�


    sVccnt          : Variant;  // �ް�      
    sD4cnt          : Variant;  // ����4
    sD8cnt          : Variant;  // ����8
    sN1CNT          : Variant;  // ����4
    sFACNT          : Variant;  // ����8
    sFA1CNT          : Variant;  // ����8
    sFA2CNT          : Variant;  // ����8
    sFA3CNT          : Variant;  // ����8

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

    sDuty01         : Variant;  // 01 �� �ٹ�
    sDuty02         : Variant;  // 02 �� �ٹ�
    sDuty03         : Variant;  // 03 �� �ٹ�
    sDuty04         : Variant;  // 04 �� �ٹ�
    sDuty05         : Variant;  // 05 �� �ٹ�
    sDuty06         : Variant;  // 06 �� �ٹ�
    sDuty07         : Variant;  // 07 �� �ٹ�
    sDuty08         : Variant;  // 08 �� �ٹ�
    sDuty09         : Variant;  // 09 �� �ٹ�
    sDuty10         : Variant;  // 10 �� �ٹ�
    sDuty11         : Variant;  // 11 �� �ٹ�
    sDuty12         : Variant;  // 12 �� �ٹ�
    sDuty13         : Variant;  // 13 �� �ٹ�
    sDuty14         : Variant;  // 14 �� �ٹ�
    sDuty15         : Variant;  // 15 �� �ٹ�
    sDuty16         : Variant;  // 16 �� �ٹ�
    sDuty17         : Variant;  // 17 �� �ٹ�
    sDuty18         : Variant;  // 18 �� �ٹ�
    sDuty19         : Variant;  // 19 �� �ٹ�
    sDuty20         : Variant;  // 20 �� �ٹ�
    sDuty21         : Variant;  // 21 �� �ٹ�
    sDuty22         : Variant;  // 22 �� �ٹ�
    sDuty23         : Variant;  // 23 �� �ٹ�
    sDuty24         : Variant;  // 24 �� �ٹ�
    sDuty25         : Variant;  // 25 �� �ٹ�
    sDuty26         : Variant;  // 26 �� �ٹ�
    sDuty27         : Variant;  // 27 �� �ٹ�
    sDuty28         : Variant;  // 28 �� �ٹ�
    sDuty29         : Variant;  // 29 �� �ٹ�
    sDuty30         : Variant;  // 30 �� �ٹ�
    sDuty31         : Variant;  // 31 �� �ٹ�

    sMeddept        : Variant;  // ��ȣ�μ��ڵ�       �߰� ���� 2006-01-09
    sUserid         : Variant;  // ��ȣ�μ����userid
    sSchustep       : Variant;  // ���� ��ȸ�� ������ �ܰ踦 ��Ÿ����.
    sRemtxt         : Variant;  // ���缱���� ���̺��� ���(GAAPROVT.REMTXT)

    sRemark         : Variant;  // ������������ ���(GADOCMAT.REMARK)
    sCount          : Variant;  // �Ǽ��� ������ ��� => ��) ���������Ϳ� ������� �����Ǽ��� ������
    sOldappseqno    : Variant;      // �����Ϸ��� ������ȣ�� ���� ������ȣ(��ȯ�� ��쿡 �ش�ȴ�)

    sIntelno        : Variant;  // ������ȣ 20061015
    sPagerno        : Variant;  // ȣ����ȣ 20061015
    sHphoneno       : Variant;  // �޴�����ȣ 20061015

    sConfirmyn      : Variant;
    sConfirmDt      : Variant;

    // ������ ���� 2020.01.05 ������ �߰�
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

    sNtmcnt         : Variant;     //20210726 ������ �ɾ߽ð� �߰�

    { ������ �����
    sStartDay : Variant; //������ 2019.03.29
    sLastDay  : Variant; //������ 2019.03.29
    sEndDay   : Variant; //������ 2019.03.29

    dutyAvg80Flag  : Variant;   // ������. ���ýð���� 80 ���� üũ �÷��� ����
    gdAvg3Flag     : Variant;   // ������. ���� ��� 3�� ���� üũ �÷��� ����
    MaxDuty36      : array [0..31] of Variant;   // ������. ���ӱٹ��� 36�ð� �̻��� Date ��� �迭
    MinFree10      : array [0..31] of Variant;   // ������. �ּ��޽� 10�ð� ������ Date ��� �迭
    }

    function IsAppEmp : Boolean;       // �ش����� Ư������� ������������� ��ȯ
    function IsFirstAppEmp : Boolean;  // �ش����� Ư������� ���ʰ������ ������ ��ȯ
    function IsFirstAppEmp1: Boolean;

    function IsFirstAppEmp2: Boolean;  //New���� ����

    function IsRequest: Boolean;  //New���� ����


    function SelMasterInfo : Integer;  // ���� �ٹ� �������� �����ͼ� ������ ��ȸ
    function SelExistCount : Integer;  // ���� �ٹ� �����ٿ� ������� �������� �Ǽ���ȸ

    function SelMDutyt : Integer;
    function SelMDutyt2 : Integer;

    function SelMDutyt3 : Integer;     // ���� �ٹ� ������ ���� ��ȸ (�ϴ���) �߰� ���� 2006-01-13
    function SelMDutyt4 : Integer;     // �ش����� �ش���� �������� �����Ͱ� �����ϴ��� �˻�

    function SelMDutyt5 : Integer;


    function ListMDutyt5 : Integer;    // ���� �ٹ� ������ ��ȸ(����ȭ��)
    function SaveDocmat : Integer;
    function List : Integer;

    function SaveMDutyt3(iCnt : Integer) : Integer;
    function UpdateMDutyt1(iCnt : Integer) : Integer;  // �߰� ���� 2006-01-21
    function UpdateMDutyt2(iCnt : Integer) : Integer;  // �߰� ���� 2006-01-23
    function ListMdutyOp : Integer;    //���� ������ ����Ʈ ��ȸ
    function ListMdutyOpAll : Integer; //���� ������ ��ü ����Ʈ ��ȸ
    function ListDutySelect1 :Integer; //�޿������� ���� ���»��� ��ȸ
    function ListMdutyOp_A : Integer;    //���� ������ ����Ʈ ��ȸ

    function ListFromDutySelect :Integer; //���� �����, ���� �ٹ�ǥ ����Ʈ ��

    function ListSpecialDp :Integer;
    function gaUsgrmt_List():Integer;

    function GetCalendar:Integer;
    function SelMDutyCD : Integer;
    function SetMDutyCD(sRowNo:Integer): Integer;

    function ListLast : Integer;

    function InsertConfirm : Integer;
//    function SelDocDuty : Integer; // ������ �߰� �����

    // 2020-01-05 ������ �߰�. ������ ����
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
// ���� �ٹ� ������
// �ۼ��� : ���¿�
// �ۼ��� : 2004.10.13
// �������̺� : GAMDUTYT
////////////////////////////////////////////////////////////////////////////////
  HgaHolydt = Class
    sStdt         : Variant;    // ��ȸ��������
    sEndt         : Variant;    // ��ȸ��������
    sSatyn        : Variant;    // ����� ���Կ���
    sHolycnt      : Variant;    // ������ ��
    sDay          : Variant;
    sMonth        : Variant;

    sHolyDt       : Variant;    // ������ ��¥
    sGuseyn       : Variant;    // ������ ����(�Ͽ���-N, ����-Y, �Ͽ����̸鼭 ������-H)

    // ������ ����. 2020.01.05 ������ �߰�.
    sfStdt        : Variant;
    sfEndt        : Variant;

    function  GetHolyday : Integer;
    function  GetHolycnt : Integer;
    function  ListHolyday(sMonth : String): Integer;

    // ������ ����. 2020.01.05 ������ �߰�
    function  GetHolyday41 : Integer;
  end;

////////////////////////////////////////////////////////////////////////////////
// ������ ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.10.30
// �������̺� : GATENUAT
////////////////////////////////////////////////////////////////////////////////
  HgaTenuat = Class
    ssEmpno       : Variant;    // ��ȸ �����ȣ
    ssLocate      : Variant;    // ��ȸ ����� �ڵ�
    ssTenutype    : Variant;    // ��ȸ ������ ����
    ssTenudate1   : Variant;    // ��ȸ ��û����(from)
    ssTenudate2   : Variant;    // ��ȸ ��û����(to)
    ssPrnYn       : Variant;    // �̹߱� ����
    ssInsaGubun   : Variant;    // ����/�λ�/�λ����� ���� ('HYUN'/'INSA'/'INST')


    sEmpno        : Variant;    // �����ȣ
    sLocate       : Variant;    // ������ڵ�
    sTenusdate    : Variant;    // ��û�Ͻ�  yyyymmdd -> yyyymmddhhnnss ����
    sTenutype     : Variant;    // ����������
    sTenutypenm   : Variant;    // ������������
    sTenupubno    : Variant;    // �߱޹�ȣ
    sTenuuse      : Variant;    // ������ �뵵
    sRetxt        : Variant;    // �ݼۻ��� �߰�     ������ 2007-01-03
    sTenucnt      : Variant;    // ����μ�
    sUsedate      : Variant;    // �������
    sTenuprnyn    : Variant;    // �߱޿���(Y/N)
    sPrintdate    : Variant;    // �����߱���
    sJikjong      : Variant;    // �����ڵ�
    sJikjongnm    : Variant;    // ������
    sEmpnm        : Variant;    // ����
    sEntdt        : Variant;    // �Ի���
    sRetdt        : Variant;    // �����
    sHannm        : Variant;    // �ѹ�����
    sResno        : Variant;    // �ֹε�Ϲ�ȣ
    sAddr1        : Variant;    // �ֹε���� �����ȣ �ּҰ�
    sAddr2        : Variant;    // �ֹε���� �ּ�
    sDeptcd       : Variant;    // �μ��ڵ�
    sDeptnm       : Variant;    // �μ���
    sJikwe        : Variant;    // �����ڵ�
    sJikwenm      : Variant;    // ������
    sOffice       : Variant;    // ����ó
    sCdetcb       : Variant;    //
    sCdetcc       : Variant;    //
    sJobtype      : Variant;    // ����������
    sEngaddr      : Variant;    // �����ּҸ�
    sEngname      : Variant;    // ��������
    sSexcd        : Variant;    // �����ڵ�
    sInsaEngAddr  : Variant;    // �λ� ���� �ּ�
    sBorndt       : Variant;    // ����
    sDepteng      : Variant;    // �����μ���
    sAppEmpno     : Variant;    // ������� ���
    sAppyn        : Variant;    // ���翩��
    sInsayn       : Variant;    // �ѹ��� ���翩��
    sInsaEmpno    : Variant;    // �ѹ��� ������� ���

    sResnoyn      : Variant;    // �ֹε�Ϲ�ȣ ��¿��� 2014.12.08 ���ö �߰�

    sPrintcnt     : Variant;    // ���Ƚ�� �߰� 20210427 ������
    sAppyndate    : Variant;    // �������� �߰� 20210427 ������
    sHphoneno     : Variant;    // �ڵ��� ��ȣ �߰� 20210526 ������
    sphoneno      : Variant;    // ���� ���� �ڵ��� ��ȣ �߰� 20210526 ������
    sSendYn       : Variant;    // ���� ���� ���� �߰� 20210611 ������

    sEditid       : Variant;    // ������ ID
    sEditip       : Variant;    // ������ IP
    sChoice       : Variant;    // �۾�����(I/U/D)

    sBaseDateFr   : Variant;    // ���ؽŰ�����To ���� �߰� 2005-12-01
    sBaseDateTo   : Variant;    // ���ؽŰ�����To ���� �߰� 2005-11-01

    sJikmunm      : Variant;    // ����name(=�ź�) �߰� ���� 2006-01-17
    sJikcheknm    : Variant;    // ��åname(=����) �߰� ���� 2006-01-17

    sErrCheck     : variant;    // ���������� ���� �߰�. 1�ϋ� ����

    //������ ���ǻ��� 20211101
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
    function RsqtTenuat2 : Integer; //20210427 ������ �߰�
    function SetRsqtTenuat : Integer; //20210611 ������ �߰�
    function ApprTenuat(iCnt : Integer) : Integer;
    function ListTenuat : Integer;
    function ListTenuat2 : Integer;
    function ListTenuat5 : Integer;
    function TnQAMaster : Integer;  //20211101 LEA�߰�
    function TnQASave   : Integer;  //20211101 LEA�߰�
    function TnQADetail : Integer;  //20211101 LEA�߰�
  end;

////////////////////////////////////////////////////////////////////////////////
//  ���� ���� ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.11.03
// �������̺� : CCHOSIFT
////////////////////////////////////////////////////////////////////////////////
  HccHosift = Class
    sLocate       : Variant;    // ������ڵ�

    sHsptname     : Variant;    // ������Ī
    sPrsdname     : Variant;    // ��ǥ�ڸ�
    sPrsdreno     : Variant;    // ��ǥ�� �ֹι�ȣ
    sAddress      : Variant;    // �����ּ�
    sTelno        : Variant;    // ��ȭ��ȣ
    sFaxno        : Variant;    // FAX ��ȣ
    sZipcd        : Variant;    // �����ȣ
    sEhsptnm      : Variant;    // ����������
    sEaddress     : Variant;    // �����ּ�

    function ListHosift : Integer;

  end;

  HgaSdate = Class
    sSysdate      : Variant;

    function GetSysDate : Integer;
    function GetSysTime : Integer;

  end;


////////////////////////////////////////////////////////////////////////////////
// �׷�޼��� ����
// �ۼ��� : �� �� �� 
// �ۼ��� : 2007.09.07
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
// ���� Ư�ٳ��� ����
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.01.18
////////////////////////////////////////////////////////////////////////////////
  HgaOvermt = Class
    ssLocate      : Variant;      // �����
    ssYYMM        : Variant;      // ���³��
    ssDeptcd      : Variant;      // �μ��ڵ�
    ssPaygbn      : Variant;      // �޿�����
    ssCgubun      : Variant;      // ������±��� (P:�İ߱ٷ�, R:������, A:all) �߰� ���� 2006-01-16
    ssJikmu       : Variant;      // Sinbun(Jikmu) �߰� ���� 2006-01-16
    ssHolycnt     : Variant;      // �����ϼ�

    ssSunCnt      : Variant;
    ssRullCnt     : Variant;
    ssDualSun     : Variant;


    sEmpno        : Variant;      // �����ȣ
    sEmpnm        : Variant;      // �����
    sJikwe        : Variant;      // �����ڵ�
    sJikwenm      : Variant;      // ������
    sDeptcd       : Variant;      // �μ��ڵ�
    sDeptnm       : Variant;      // �μ���
    sEntdt        : Variant;      // �Ի�����
    sLocate       : Variant;      // ������ڵ�
    sWkmonth      : Variant;      // Ư�ٿ�
    sCnt          : Variant;      // Ư�ٽð���
    sCnt25        : Variant;      // ���� 25% ����

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

    sCnt50        : Variant;      // ���� 50% ����
    sCntnig       : Variant;      // �ɾ�����
    sNight        : Variant;      // Night�ٹ�

    sCntDuty15    : Variant;      // �����ϼ�(4�ð�)        // ���� ���� 2005-11-29
    sCntDuty30    : Variant;      // �����ϼ�(8�ð�)        // �߰� ���� 2005-11-29
    sCntDuty40A   : Variant;      // �����ϼ�(�μ��� ����)  // �߰� ���� 2005-11-29
    sCntDuty40B   : Variant;      // �����ϼ�(�μ��� ����)  // �߰� ���� 2005-11-29

    sCnthol       : Variant;      // �ް��ü�
    sOffcnt       : Variant;      // ���ϼ�(��,��)
    sOffholy      : Variant;      // ���ϼ�(������)
    sUseoffcnt    : Variant;
    sCondate      : Variant;      // ��������
    sConid        : Variant;      // ������ ID
    sEditid       : Variant;      // ������ IP
    sEditip       : Variant;      // ������ IDP
    sPayGbn       : Variant;      //

    // 20060928 �߰�
    sScnt         : Variant;      // ����   2006-09-27
    sRcnt         : Variant;      // ����   2006-09-27
    sOcnt         : Variant;      // ����   2006-09-27
    sCcnt         : Variant;      // ����   2006-09-27
    sUsevcnt      : Variant;      // �ѻ�뿬��  2006-09-27

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
    sFACILCNT     : Variant;  //�ü�������
    function CalcOverMT : Integer;    // �� Ư�� ���� ���� �� ����
    function CalcOverMT1 : Integer;    // �� Ư�� ���� ���� �� ����
    function GetOverMT : Integer;     // �� Ư�� ���� ���� �� ������ ��ȸ
    function SaveOverMT(iCnt : Integer) : Integer;    // �� Ư�� ���� ����
    function MagamOverMT(sMagamGbn: String) : Integer;   // �� Ư�� ���� ����/������� (��ü)
    function GetOverMT1 : Integer;
                                                         // sMagamGbn(��������):����('Y'),�������('N')

  end;


////////////////////////////////////////////////////////////////////////////////
// ���缱 ����
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.02.10
////////////////////////////////////////////////////////////////////////////////
  HgaAprovt = Class
    ssLocate      : Variant;      // �����(��ȸ)
    ssFromAppdate : Variant;
    ssToAppdate   : Variant;    
    ssMkDeptcd    : Variant;      // �μ��ڵ�(��ȸ)
    ssDeptcd      : Variant;      // �μ��ڵ�(��ȸ)
    ssnCount      : Variant;
    ssMkEmpno     : Variant;      // �ۼ��� ���(��ȸ)
    ssRefwkcd     : Variant;      // �����ڵ�
    ssAppSeqno    : Variant;      // �ۼ��Ϸù�ȣ
    ssSeqno       : Variant;      // �ۼ��Ϸù�ȣ
    ssSDate       : Variant;      // ��ȸ������(��ȸ)
    ssEDate       : Variant;      // ��ȸ������(��ȸ)
    ssEmpno       : Variant;      // �����ȣ(��ȸ)
    ssAppDate     : Variant;      // �����ۼ���(��ȸ)
    ssDocType     : Variant;      // ��������(W:����, O:Ư��, P:������)
    ssGrade       : Variant;      // ������
    ssInsaYn      : Variant;      // �ѹ����缱 ����
    ssFlag        : Variant;      //
    ssMkYymm      : Variant;      // ��ȣ�� ��ȸ���
    ssinsafirstyn : Variant;      // �ѹ����� ������� ����
    ssLoginuser   : Variant;      // �α����� ����
    ssAppempno    : Variant;      // ������ ���


    sCloseYn      : Variant;      // ���ۼ� ����
    sLocate       : Variant;      // �����
    sAppdate      : Variant;      // �����ۼ���
    sDeptcd       : Variant;      // �μ��ڵ�
    sMkDeptcd     : Variant;      // �ۼ��μ��ڵ�
    sMkEmpno      : Variant;      // �ۼ��� ���
    sDocType      : Variant;      // ��������(W:����, O:Ư��, P:������)
    sAppSeqno     : Variant;      // �������
    sSeqno        : Variant;      // �ۼ��Ϸù�ȣ
    sAppseq       : Variant;      // ������ ����
    sAppempno     : Variant;      // �������� ���
    sAppempnm     : Variant;      // �������� ����
    sEmpno        : Variant;      // �����ȣ
    sEmpnm        : Variant;      // �����
    sJikwe        : Variant;      // �����ڵ�
    sJikwenm      : Variant;      // �������� ����
    sAppyn        : Variant;      // ��������
    sFlag         : Variant;      // ����/�λ�������(N/A);
    sCnt          : Variant;      // ���� ���� Count ��
    sAllconyn     : Variant;      // �����ϷῩ��
    sChkyn        : Variant;      // �λ��� Ȯ�ο���
    sIndeptcd     : Variant;      // �Էºμ��ڵ�
    sDeptnm       : Variant;      // �μ���
    sWksdate      : Variant;      // ���½�����
    sWkedate      : Variant;      // ����������
    sRefwkcd      : Variant;      // �����ڵ�
    sWknm         : Variant;      // ���¸�
    sGenconid     : Variant;      // �λ�μ� Ȯ����
    sRemtxt       : Variant;      // ���� ����
    sRettxt       : Variant;      // �ݼ� ����
    sEditid       : Variant;      // ������ ID
    sEditip       : Variant;      // ������ IP
    sInsayn       : Variant;      // �λ�μ� ���� YN
    sFinalyn      : Variant;      // �λ�μ� ���� YN
    sInsaEmpno    : Variant;      // �λ�μ� ���
    sInsaDpcd     : Variant;      // �λ�μ� �μ��ڵ�
    sMeddept      : Variant;      // ��ȣ�μ��ڵ� (ex W071, W072)
    sMedDeptnm    : Variant;      // ��ȣ�μ���
    sMakedate     : Variant;      // �ۼ����
    sSignseni     : Variant;      // ��ȣ����
    sInputid      : Variant;      // �ۼ���
    sInputdt      : Variant;      // �ۼ���
    sStatusW      : Variant;      // �������
    sMkempnm      : Variant;      // �ۼ��� �̸�  �߰� ���� 2005-12-09
    sANFlag       : Variant;      // A(����)/N(��ȣ) ���� �߰� ���� 2005-12-20
    sBefwkcd      : Variant;
    sWkareacd     : Variant;      //               �߰� ���� 2005-12-27
    sWkareanm     : Variant;      //               �߰� ���� 2006-01-09
    sInputEmpno   : Variant;      // �ۼ���(Empno) �߰� ���� 2006-01-09
    sEditdate     : Variant;
    sAppinfo      : Variant;

    sNurseYn      : Variant;      // ��ȣ�� ������ ����
    sInsafirstyn  : Variant;      // �ѹ��� ��������߿��� ���� ������ ����
    sFinal_firstyn: Variant;      // �ѹ��� ��������߿��� ���� ������ ����
    sRemark       : Variant;      // �����û�� ���
    sDeptgbn      : Variant;      // �μ����� ('N': ��ȣ�ο��� ��������,
                                  //           'A': ��������   ��������)
    sDocstep      : Variant;      // �����ܰ�

    sWkyymm       : Variant;      // �ٹ����
    sSchustep     : Variant;      // ���� ��ȸ�� ������ �ܰ踦 ��Ÿ����.

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



    function DeleteAprovt : Integer;            // ���� ���缱 ���� ����
    function DeleteAprovt2 : Integer;           // ����, �� Ư�ٽ�û���� ����
    function SaveAprovt(iCnt : Integer) : Integer;  // ������ ���� ����
    function SaveAprovt2 : Integer;  // ���缱 ���� ó��
    function SaveAprovt4 : Integer;  // ���缱 ���� ó��(���½�û)
    function SaveAprovt5 : Integer;  // ���缱 ����(�ٹ�������)
    function SaveAprovt6 : Integer;  // ���缱 ���� ó��(Ư�ٽ�û)
    function SaveAprovt7 : Integer;  // ���缱 ���� ó��(���� �ٹ� ������)
    function SaveAprovt19 : Integer;  // ���缱 ���� ó��(���� �ٹ� ������)

    function SaveAprovt8 : Integer;  // ���缱 ���� ó��(�ѹ��� ���缱 ����)

    function SaveAprovt9 : Integer;  // �Ϻ����½�û�� �����û
    function SaveAprovt10: Integer;  // �Ϻ����½�û�� ���� �Ǵ� �ݼ�ó��

    function SaveAprovt14: Integer;

    function SaveAprovt11: Integer;  // �Ϻ�Ư�ٽ�û�� �����û
    function SaveAprovt12: Integer;  // �Ϻ�Ư�ٽ�û�� ���� �Ǵ� �ݼ�ó��

    function SaveAprovt13 : Integer;  // New �Ϻ����½�û�� �����û

    function SaveAprovt15 : Integer;
    function SaveAprovt16 : Integer;

    function SaveAprovt17 : Integer; // ������ ����. 2020.01.05 ������ �߰�.

    function ListApprovt : Integer;   // ������� List up
    function GetApprovalYn : Integer; // ���� ���� ����
    function ListApprovt5 : Integer;  // �Ϻ� ���� �����û ������ ��ȸ
    function ListApprovt4 : Integer;  // ���� ��� ���� List Up(Master)
    function ListApprovt6 : Integer;  // �Ϻ� ���� �����û ������ ��ȸ
    function ListApprovt26 : Integer; // ���ٹ�����

    function ListApprovt7 : Integer;  // ���� ��� ���� List Up(�λ�μ� ����)
    function ListApprovt8 : Integer;  // �� �ٹ������� ����������� ��ȸ
    function ListApprovt9 : Integer;  // �� �ٹ������� ����������� ��ȸ
    function ListApprovt10: Integer;  // �� �ٹ������� ����������� ��ȸ(��ü, ������, ������)
    function ListApprovt11: Integer;  // �� �ٹ������� ���� ��ȸ(��ȣ�� ��ȸ)
    function ListApprovt12: Integer;  // �� �ٹ������� ���� ���� ��ȸ

    function ListApprovt14: Integer;  // �� �ٹ������� ���缱������ ��ȸ(����ȭ�� ������ �׸���)
    function ListApprovt15: Integer;  // �� �ٹ������� ������ ���� ������� ������

    function ListApprovt16: Integer;  // �Ϻ� ���½�û ���缱������ ��ȸ(����ȭ�� ������ �׸���)
    function ListApprovt17: Integer;  // �Ϻ� Ư�ٽ�û ���缱������ ��ȸ(����ȭ�� ������ �׸���)

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


    function ListEnd: Integer;     // �������� ��� ��ȸ






    function UpdateSignlt : Integer;  // ��ȣ�� ���缱 ���� Update(�λ� Ȯ��)

  end;

////////////////////////////////////////////////////////////////////////////////
// ������� ���
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.02.28
////////////////////////////////////////////////////////////////////////////////
  HgaAprolt = Class
    ssLocate      : Variant;      // �����(��ȸ)
    ssEmpno       : Variant;      // �����ȣ(��ȸ)
    ssDeptcd      : Variant;      // �μ��ڵ�(��ȸ)
    ssWkareacd    : Variant;      // �μ��ڵ�(�Ҽ���ȸ)
    ssDocType     : Variant;      // ��������(W:����, O:Ư��, P:������)
    ssSeqno       : Variant;      // �ۼ��Ϸù�ȣ
    ssAppEmpno    : Variant;      // �����ۼ���(��ȸ)
    sAppdeptcd    : Variant;      // �����μ� �ڵ�  20070108 ������
    sAppdeptnm    : Variant;      // �����μ� �̸�  20070108 ������
    sFlag         : Variant;
    sAppgbn       : Variant;      // ����

    sLocate       : Variant;      // �����
    sEmpno        : Variant;      // �����ȣ
    sEmpnm        : Variant;      // �����
    sDeptcd       : Variant;      // �μ��ڵ�
    sDocType      : Variant;      // ��������(W:����, O:Ư��, P:������)
  //sAppdate      : Variant;      // �����ۼ���
    sSeqno        : Variant;      // �ۼ��Ϸù�ȣ
    sAppempno     : Variant;      // �������� ���
    sAppempnm     : Variant;      // �������� ����
    sJikwenm      : Variant;      // �������� ����
    sCnt          : Variant;      // ��ϵ� ������� ��
    sEditid       : Variant;      // ������ ID
    sEditip       : Variant;      // ������ IP

    function ListApprolt : Integer;  // �������� List up
    function CntApprolt : Integer;   // �������� ��Ͽ��� Cnt
    function SaveAprolt(iCnt : Integer) : Integer;      // �������� ����
    function RemoveAprolt(iCnt : Integer) : Integer;    // ������� ����

{
    function SaveAprovt(iCnt : Integer) : Integer;  // ������ ���� ����
    function SaveAprovt2(iCnt : Integer) : Integer;  // ������ ���� ó��
    function SaveAprovt3(iCnt : Integer) : Integer;  // ������ ���� ó��
    function GetApprovalYn : Integer; // ���� ���� ����
    function ListApprovt3 : Integer;  // ���� ��� ���� List Up
}
  end;

////////////////////////////////////////////////////////////////////////////////
// ����ٰ���,
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.04.07
////////////////////////////////////////////////////////////////////////////////
  HgaInoutt = Class
    sLocate  : Variant;      // �����(��ȸ)
    sResno   : Variant;      // �μ��ڵ�(��ȸ)
    sFlag    : Variant;      // �μ��ڵ�(��ȸ)
    sInoutdt : Variant;      // �μ��ڵ�(��ȸ)
    sJikwe   : Variant;      // �μ��ڵ�(��ȸ)
    sEmpno   : Variant;      // �μ��ڵ�(��ȸ)
    sEmpnm   : Variant;      // �μ��ڵ�(��ȸ)
    sDuty    : Variant;      // �μ��ڵ�(��ȸ)
    sStm     : Variant;      // �μ��ڵ�(��ȸ)
    sEtm     : Variant;      // �μ��ڵ�(��ȸ)
    sDutstm  : Variant;      // �μ��ڵ�(��ȸ)
    sDutetm  : Variant;      // �μ��ڵ�(��ȸ)

    sDeptcd  : Variant;      // �μ��ڵ�(��ȸ)

    function ListDateInout : Integer;   // �������� List up
  end;

  //////////////////////////////////////////////////////
  HgaTsamtt = class
    sLocate   : Variant; //�����
    sEmpno    : Variant; //���ι�ȣ
    sAppldt   : Variant; //��������
    sCuryymm  : Variant; //���س⵵
    sRemvcnt  : Variant; //�ܿ�����

    sTsamtRst : Variant; //�������� �����..

    function SelTsamtt1():Integer;
  end;

  HgaVacamt_up = class
    sLocate   : Variant; //�����
    sBasyy    : Variant; //���س⵵
    sAppyymm  : Variant; //��������

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
  // ���� �������п� ���� Ư������������
  //============================================================================
  HgaEtc = class
    sParam1   : Variant;  // �������� ��Ʈ������ ������.
    sParam2   : Variant;  // ������ ���� �������� ���� ����ϴ� �Ķ����
    sParam3   : Variant;  //                    ''
    sParam4   : Variant;  //                    ''
    sParam5   : Variant;  //                    ''
    sParam6   : Variant;  //                    ''
    sParam7   : Variant;  //                    ''
    sParam8   : Variant;  //                    ''
    sParam9   : Variant;  //                    ''
    sParam10  : Variant;  //                    ''

    sResult   : Variant;  // �����

    function GetSchuStep :Integer;
  end;

/////////////////////////////////////////////////////////////////////////
//
//      �ѹ�����, �������� ���� �ٿ�ε�  20060928 ������
//
/////////////////////////////////////////////////////////////////////////
  HgaUpLoad = Class
    sFileGbn  : Variant;      // �����(��ȸ)
    sFileNo   : Variant;      // �μ��ڵ�(��ȸ)
    sFileName : Variant;      // �μ��ڵ�(��ȸ)
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
    function UpdateUpLoadFilefn(iCnt:Integer) :Integer; //20200623 ������

  end;


/////////////////////////////////////////////////////////////////////////
//  �ֶ��� ��ȸ 2007.10.23
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

    function SelHotlnk():Integer;        // ��ȸ
    function InsUdt_ts13HotLn():Integer; //�Է�
    function DelHotLn():Integer; //�Է�


  end;

/////////////////////////////////////////////////////////////////////////
//  �ٹ��������� ���� 20060929
/////////////////////////////////////////////////////////////////////////
  HgaWkrank = Class
    sWkyear    : Variant;      // ����
    sLoc1      : Variant;
    sSeqno     : Variant;      // ����
    sNum       : Variant;      // ��������
    sNum1      : Variant;      // 1������
    sNum2      : Variant;      // 2������
    sNum3      : Variant;      // 3������
    sNum4      : Variant;      // 4������
    sNum5      : Variant;      // ������
    sNum6      : Variant;      // ������
    sNum7      : Variant;      // �������
    sEmpno     : Variant;      // ���
    sEmpnm     : Variant;      // ����
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
    ssEmpno    : Variant;      // ���
    sAvg       : Variant;      // ���
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
    function InsExcelWkrank(iCnt:Integer) : Integer;  // 20061106 �߰�
    function SelWkrank():Integer;  // ��ȸ
    function SelWkrank2014():Integer;  // 20150331 ���ö �߰� 2013�� ���� �ٹ����� ��ȸ
    function ListGawkrank:Integer;  // 20061001
    function DelWkrank():Integer;
    function ListGawkrankGaeducdt:Integer;  // 20061001
  end;

/////////////////////////////////////////////////////////////////////////
//
//      �ٷΰ�༭   20211008
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

    function ListDutycon: Integer;      //�ٷΰ�༭ �������� ��ȸ
    function insDutycon: Integer;       //�ٷΰ�༭ �������� ����          

  end;

/////////////////////////////////////////////////////////////////////////
//
//      �μ��� ���°��� 2007. 10.22
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
    sgbn             : variant; //20210614 ���� �߰�
    ssRetdt          : variant; //20210616 �������� �߰�

   function gaUsgrmt_List_l1: Integer;
   function gaUsgrmt_List_I1: Integer;
   function gaUsgrmt_List_D1: Integer;      

  end;

/////////////////////////////////////////////////////////////////////////
//
//      �İ��� ������      2006-09-29
//
/////////////////////////////////////////////////////////////////////////
  HgaRetList = Class
    sLocate  : Variant;    // �����
    sYear    : Variant;    // ��ȸ��
    sJikmu   : Variant;    // �İ߾�ä

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
//      ���ٰ���,ä����� ����      ������ 2018-04-18
//
/////////////////////////////////////////////////////////////////////////

  HgaGyeolhack = class
    ssEmpno       : Variant;
    ssLoc         : Variant;
    ssExamDate    : Variant;   // ���� �� �˻糯¥
    ssSDateCnt    : Variant;   // ���� ��¥ CNT
    ssGJType      : Variant;   // (������ 2019-03-18 �߰�)

    sExamDate     : Variant;   // �˻��Ͻ�
    sExamHspt     : Variant;   // �˻���
    sExamName     : Variant;   // �˻��
    sExamRslt     : Variant;   // �˻���
    sExamMemo     : Variant;   // ���
    sSDateCnt     : Variant;   // ���� ��¥ CNT

    sChoice       : Variant;   // �۾�����

    sFdate        : Variant;   //��ȸ ���۳�¥ ������ 2019-09-20
    sTdate        : Variant;   //��ȸ ���ᳯ¥ ������ 2019-09-20
    sRetYn        : Variant;   //����� ����   ������ 2019-09-20
    sGubun        : Variant;   //������ ����   ������ 2019-09-20
    sLocate       : Variant;   //������ ����   ������ 2019-09-20
    sPatno        : Variant;   //ȯ�� ��ȣ     ������ 2019-09-20
    sDeptnm       : Variant;   //�Ҽ� �μ�     ������ 2019-09-20
    sWkareanm     : Variant;   //�ٹ� �μ�     ������ 2019-09-20
    sEmpno        : Variant;   //��� ��ȣ     ������ 2019-09-20
    sEmpnm        : Variant;   //��� �̸�     ������ 2019-09-20
    sEntdt        : Variant;   //�Ի���        ������ 2019-09-20
    sJindt        : Variant;   //������        ������ 2019-09-20
    sRetdt        : Variant;   //������        ������ 2019-09-20
    sJikjong      : Variant;   //������        ������ 2019-09-20
    sHsptGbn      : Variant;   //��� ����     ������ 2019-09-20

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
    function InsUpdCyGunjin   : Integer;  //������ �߰� 2019-03-19
    function InsUpdYbGunjin   : Integer;  //������ �߰� 2019-03-19
    function InsExcelYbGunjin(iCnt:Integer) : Integer; //������ �߰� 2019-05-03
    function DelGyeolhack     : Integer;
    function DelChaeYong      : Integer;  //������ �߰� 2019-03-19
    function DelYeBang        : Integer;  //������ �߰� 2019-03-19
    //ä�����
    function SelChaeyong      : Integer;
    //��������
    function SelYebang        : Integer;

    //���ο��� ���
    function SelSDYBTonggye    : Integer; //������ �߰� 2019-09-20
    //ȫ������ ���
    function SelMMRYBTonggye   : Integer; //������ �߰� 2019-09-20
    //�����ؿ��� ���
    function SelBIHYBTonggye   : Integer; //������ �߰� 2019-09-20
    //B���������� ���
    function SelBHGYYBTonggye   : Integer; //������ �߰� 2019-09-20
    //���÷翣�ڿ��� ���
    function SelInfluYBTonggye   : Integer; //������ �߰� 2019-09-20
    //���ٰ���1 ���
    function SelGH1YBTonggye   : Integer; //������ �߰� 2019-09-20
    //���ٰ���2 ���
    function SelGH2YBTonggye   : Integer; //������ �߰� 2019-09-20
    //�ڷγ�19 �˻� ���
    function SelCRYBTonggye    : Integer; //������ �߰� 2020-10-12
    //�ڷγ�19 �������� ���
    function SelCRYBTonggye2   : Integer; //������ �߰� 2021-05-10
    // �������� �⵵�� ���
    function SelGJYearTongye   : Integer; //������ �߰� 2020-04-20


  end;

/////////////////////////////////////////////////////////////////////////
//
//      �����ް� ����      ������ 2018-07-11
//
/////////////////////////////////////////////////////////////////////////

  HgaBosang = class
    ssEmpno       : Variant;   // �����ȣ
    ssLocate      : Variant;   // �����
    ssDeptCD      : Variant;   // �μ��ڵ�
    ssYear        : Variant;   // ��ȸ��
    ssSdate       : Variant;
    ssEdate       : Variant;
    ssGubun       : Variant;

    sBsgbn        : Variant;    //���� ���� (�߻�, ���, �ܿ� ��)
    sEmpno        : Variant;   // �����ȣ
    sBsdate       : Variant;   // ���ó�¥
    sNewTime      : Variant;   // �߻��ð�
    sUseTime      : Variant;   // ���ð�
    sAvbTime      : Variant;   // �ܿ��ð�
    sDeptnm       : Variant;   // �μ���
    sEmpnm        : Variant;   // ����̸�
    sWkstime      : Variant;   // Ư�ٽ��۽ð�

    function SelBSHistroty    : Integer;
    function SelAvbBS         : Integer;

  end;


var


  gaAccid  : HgaAccid;
  gaOutamt : HgaOutamt;    //�ļ� ����� ���۾� �Է�
  gaInsab1 : HgaInsab1;    // ����⺻����
	gaFamld1 : HgaFamld1;    // ������Ȳ����
	gaSchod1 : HgaSchod1;    // �з»��װ���
	gaWoiwd1 : HgaWoiwd1;    // ��»��װ���
	gaQulid1 : HgaQulid1;    // �ڰݻ��װ���
	gaEducd1 : HgaEducd1;    // �������װ���
	gaAward1 : HgaAward1;    // ���ƻ��װ���
	gaPunsd1 : HgaPunsd1;    // ¡����װ���
	gaApoid1 : HgaApoid1;    // �߷ɻ��װ���
  gaDocvat : HgaDocvat;    // ��ȸ����
  gaTomng  : HgaTomng;    // ��������
  gaGyeolhack : HgaGyeolhack; //���ٰ������� ������ 2018-04

// 0306 ������ �߰�
  gaComcd1 : HgaComcd1;     // ���������ڵ� ��ȸ/�Է�
  //gaComict : HgaComict;     // ���������
  gaVacact1: HgaVacact1;     // �����ڵ����
  gaApoict1: HgaApoict1;    // �߷��ڵ����
  gaWrktct : HgaWrktct;     // �ٹ������ڵ����

// �����ۼ�.
	gaInsamt : HgaInsamt;    // �λ縶����
  gaStatst : HgaStatst;
	gaQulidt : HgaQulidt;
	ccComcdt : HccComcdt;    // �ڵ����ó��
	gaAwardt : HgaAwardt;    // ������Ȳ
	gaPunsdt : HgaPunsdt;    // ¡�����
	gaMaster : HgaMaster;    // �ο���Ȳ
	ccDeptct : HccDeptct;    // �μ��ڵ�
	//gaApoidt : HgaApoidt;    // �߷ɻ���
	//gaApoict : HgaApoict;    // �߷��ڵ�
	gaWrksdt : HgaWrksdt;    // ���»�����ȸ

  gaGrpmgt : HgaGrpmgt;       //�׷�޼��� ���� gawaguci
  gaVacact : HgaVacact;    // �����ڵ�
///////////////////////////////////////////////////////////////////Create by MTY
  gaCreEmpNo  : HgaCreEmpNo;  // ��� ä��
  gaGuardt    : HgaGuardt;    // ��������
  gaHealth    : HgaHealth;    // �ǰ����� ����
  gaVacamt    : HgaVacamt;    // ���κ� ������ ��Ȳ
  gaSchult    : HgaSchult;
  gaUsGrpt    : HgaUsGrpt;

  gaOffdrt    : HgaOffdrt;

  GAMEDSHT    : HGAMEDSHT;

  gaSalary    : HgaSalary;    // �����������Ȳ
  gaASsoct    : HgaAssoct;    // ��ȣȸ/��ȸ �ڵ����
  gaSocidt    : HgaSocidt;    // ��ȣȸ/��ȸ ����
  gaConfirm   : HgaConfirm;   // ���� �������
  gaOverddt   : HgaOverddt;   // ��Ư�ٻ���
  
  gaSignlt    : HgaSignlt;    // ���缱 ����
  gaMdutyt    : HgaMdutyt;    // ���� �ٹ� ������

  gaDtytpt    : HgaDtytpt;
  gaDptto     : HgaDptto;     //��������
  gaTalkht    : HgaTalkht;    // ������

  gbSndSms    : HgbSndSms;    //�������� 20210526

  gaWMdutyt   : HgaWMdutyt;
  gaHolydt    : HgaHolydt;    // ���� ��������
  gaTenuat    : HgaTenuat;    // ������ ����
  ccHosift    : HccHosift;    // ������������
  gaSdate     : HgaSdate;     // ���� �ý��� ��¥ ��������
  gaOvermt    : HgaOvermt;    // Ư�ٻ��� ����
  gaAprovt    : HgaAprovt;    // ���缱 ����

  gaAprolt    : HgaAprolt;    // �������� ���

  gaUsgrmt    : HgaUsgrmt;
  gaDconmt    : HgaDconmt;
  gaInoutt    : HgaInoutt;    // ����ٰ���
  gaTsamtt    : HgaTsamtt;
  gaTenuat_1  : HgaTenuat_1;
  gaVacamt_up : HgaVacamt_up;

  gaEtc       : HgaEtc;        // ���� �������п� ���� Ư������������
  gaUpLoad    : HgaUpLoad;     // �ѹ�����, �������� ���ε� 20060928

  gaWkrank    : HgaWkrank;     // �ٹ����� 20060929

  gaHotlnk    : HgaHotlnk;

  gaRetList   : HgaRetList;    // �İ��� ������ ���

  gaBosang    : HgaBosang;     //�����ް� ����

	ge_UserId   : string;    // �����ID
	ge_UserNm   : string;    // ����ڸ�
	ge_DeptCd   : string;    // �ҼӺμ�
	ge_DeptNm   : string;    // �ҼӺμ���
	ge_JicJong  : string;    // ����(����ڱ��� HAA:�ǻ� HAB:��ȣ��  HAC : ���)
	ge_JikGup   : string;    // ����
	ge_JikGupNm : string;    // ���޸� (�߰�)
  GU_FirstShow :Boolean;



implementation

uses TuxCom, TuxMsg;

{>>>>>>>>>>>>>>>>>>>>>>>>>>>������ ����>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>}

{===============================================================================
   HgaInsab1 ��� �⺻����
   ��ȸ    
   �ۼ��� : ������  02/01/15
===============================================================================}
function HgaInsab1.SelInsab1(ssLocate,ssCodsrh:string):Integer; // ��� �⺻���� ��ȸ
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue32(0,[ssLocate,ssCodsrh] );
   //ga_insam_l1.pc
   if (txGetF32('GA_INSAM_L1')) then begin //Tuxedo Service Call  ga_insam_l1.pc
// �⺻����0  ��������
      GetFldVar32('S_STRING1'   , sEmpno       );      // ���ι�ȣ
      GetFldVar32('S_STRING2'   , sLocate      );      // �� �� ��
      GetFldVar32('S_STRING3'   , sLocatenm    );      // �� �� ���
      GetFldVar32('S_STRING4'   , sEmpnm       );      // ��    ��
      GetFldVar32('S_STRING5'   , sEngnm       );      // ��������
      GetFldVar32('S_STRING6'   , sHanmunnm    );      // �ѹ�����
      GetFldVar32('S_STRING7'   , sResno       );      // �ֹε�Ϲ�ȣ
      GetFldVar32('S_STRING8'   , sBorndt      );      // �������
      GetFldVar32('S_STRING9'   , sSolucd      );      // ���籸�� (+��.-��)
      GetFldVar32('S_STRING10'  , sSexcd       );      // ����     (M��.F��)
      GetFldVar32('S_STRING11'  , sJikjong     );      // �����ڵ�
      GetFldVar32('S_STRING12'  , sJikjongnm   );      // ������
      GetFldVar32('S_STRING13'  , sJikgup      );      // �����ڵ�
      GetFldVar32('S_STRING14'  , sJikgupnm    );      // ���޸�
      GetFldVar32('S_STRING15'  , sJikmu       );      // �����ڵ�
      GetFldVar32('S_STRING16'  , sJikmunm     );      // ������
      GetFldVar32('S_STRING17'  , sJikchek     );      // ��å�ڵ�
      GetFldVar32('S_STRING18'  , sJikcheknm   );      // ��å��
      GetFldVar32('S_STRING19'  , sJikwe       );      // �����ڵ�
      GetFldVar32('S_STRING20'  , sJikwenm     );      // ������
      GetFldVar32('S_STRING21'  , sJikgun      );      // �����ڵ�
      GetFldVar32('S_STRING22'  , sJikgunnm    );      // ������
      GetFldVar32('S_STRING23'  , sHobong      );      // ȣ    ��
      GetFldVar32('S_STRING24'  , sWLocate     );      // �ٹ��μ� ������ڵ�
      GetFldVar32('S_STRING25'  , sConType     );      // �������
      GetFldVar32('S_STRING26'  , sDeptcd      );      // �μ��ڵ�
      GetFldVar32('S_STRING27'  , sDeptnm      );      // �μ���
      GetFldVar32('S_STRING28'  , sWkareacd    );      // �� �� ��  => �ٹ��μ�
      GetFldVar32('S_STRING29'  , sWkareanm    );      // �� �� ����  => �ٹ��μ���
      GetFldVar32('S_STRING30'  , sEntdt       );      // �� �� ��(�ӿ�����)
      GetFldVar32('S_STRING31'  , sRetdt       );      // �� �� ��(��������)
      GetFldVar32('S_STRING32'  , sMemyn       );      // ��ȥ����
      GetFldVar32('S_STRING33'  , sMemdt       );      // �� �� ��
      GetFldVar32('S_STRING34'  , sHeadyn      );      // ���忩��
      GetFldVar32('S_STRING35'  , sBohuntyp    );      // ���Ʊ���
      GetFldVar32('S_STRING36'  , sBohungrd    );      // ���Ƶ��
      GetFldVar32('S_STRING37'  , sBohunno     );      // ���ƹ�ȣ
      GetFldVar32('S_STRING38'  , sBohunorg    );      // ������û
      GetFldVar32('S_STRING39'  , sJangtyp     );      // ��ֱ���
      GetFldVar32('S_STRING40'  , sJanggrd     );      // ��ֵ��
      GetFldVar32('S_STRING41'  , sJangno      );      // ����ι�ȣ
      GetFldVar32('S_STRING42'  , sRLocate     );      // ������ �Ҽӻ�����ڵ�
      GetFldVar32('S_STRING43'  , sAddrbon     );      // ����
      GetFldVar32('S_STRING44'  , sSedenm      );      // �����ּ���
      GetFldVar32('S_STRING45'  , sHozunm      );      // ȣ�ּ���
      GetFldVar32('S_STRING46'  , sHozurela    );      // ȣ�ֿ��� ����
      GetFldVar32('S_STRING47'  , sLivtyp      );      // �ְű���
      GetFldVar32('S_STRING48'  , sDongsan     );      // ����
      GetFldVar32('S_STRING49'  , sBudongsa    );      // �ε���
      GetFldVar32('S_STRING50'  , sRgncd       );      // ��������
      GetFldVar32('S_STRING51'  , sHobby       );      // ��    ��
      GetFldVar32('S_STRING52'  , sTalent      );      // Ư    ��
      GetFldVar32('S_STRING53'  , sZip         );      // �ֹε���������ȣ
      GetFldVar32('S_STRING54'  , sZipnm       );      // �ֹε���������ȣ��
      GetFldVar32('S_STRING55'  , sAddr        );      // �ֹε�����ּ�
      GetFldVar32('S_STRING56'  , sCurzip      );      // ���ּҿ����ȣ
      GetFldVar32('S_STRING57'  , sCurzipnm    );      // ���ּҿ����ȣ��
      GetFldVar32('S_STRING58'  , sCuraddr     );      // ���ּ�
      GetFldVar32('S_STRING59'  , sEngaddr     );      // �����ּ�
      GetFldVar32('S_STRING60'  , sTelno       );      // ����ȭ��ȣ
      GetFldVar32('S_STRING61'  , sIntelno     );      // ������ȭ��ȣ
      GetFldVar32('S_STRING62'  , sPagerno     );      // ȣ����ȣ
      GetFldVar32('S_STRING63'  , sHphoneno    );      // �޴�����ȣ
      GetFldVar32('S_STRING64'  , sFaxno       );      // �ѽ���ȣ
      GetFldVar32('S_STRING65'  , sEmail       );      // EMAIL �ּ�
      GetFldVar32('S_STRING66'  , sPreempno    );      // �������ι�ȣ
      GetFldVar32('S_STRING67'  , sMiltype     );      // ��������
      GetFldVar32('S_STRING68'  , sMilkind     );      // ��������
      GetFldVar32('S_STRING69'  , sMilyuk      );      // ��������
      GetFldVar32('S_STRING70'  , sMilyn       );      // �������ʿ���
      GetFldVar32('S_STRING71'  , sMilrsn      );      // �������ʻ���
      GetFldVar32('S_STRING72'  , sMilsrt      );      // �����Ⱓfr
      GetFldVar32('S_STRING73'  , sMilend      );      // �����Ⱓto
      GetFldVar32('S_STRING74'  , sMilgrade    );      // �������
      GetFldVar32('S_STRING75'  , sMilbrnc     );      // ��������
      GetFldVar32('S_STRING76'  , sMilno       );      // ��  ��
      GetFldVar32('S_STRING77'  , sDamdang     );      // ������
      GetFldVar32('S_STRING78'  , sRcmnm       );      // ��õ�μ���
      GetFldVar32('S_STRING79'  , sRcmrel      );      // ��õ�ΰ���
      GetFldVar32('S_STRING80'  , sRcmcoara    );      // ��õ�αٹ�����
      GetFldVar32('S_STRING81'  , sRcmjikwe    );      // ��õ��������
//    GetFldVar32('S_STRING82'  , sRemtxt      );      // �ڱ�Ű����
      GetFldVar32('S_STRING83'  , sApptyp      );      // ä�뱸��
      GetFldVar32('S_STRING84'  , sRstdt       );      // ������
      GetFldVar32('S_STRING85'  , sReturndt    );      // ������
      GetFldVar32('S_STRING86'  , sRstmm       );      // ����������
      GetFldVar32('S_STRING87'  , sTrnstdt     );      // ����������
      GetFldVar32('S_STRING88'  , sTrnenddt    );      // ����������
      GetFldVar32('S_STRING89'  , sWkmm        );      // ������°�����
      GetFldVar32('S_STRING95'  , sRetresn     );      // ��������
      GetFldVar32('S_STRING96'  , sSchship     );      // �����з�
      GetFldVar32('S_STRING97'  , sLicno       );      // �����ȣ
      GetFldVar32('S_STRING98'  , sMajorno     );      // �����ǹ�ȣ
      GetFldVar32('S_STRING99'  , sEditid      );      // ������ ID
      GetFldVar32('S_STRING100' , sEditip      );      // ������ IP
      GetFldVar32('S_STRING101' , sEditdate    );      // ������
      GetFldVar32('S_STRING102' , sDeldate     );      // ������
      GetFldVar32('S_STRING103' , sSggbn       );      // �±ޱ���
      GetFldVar32('S_STRING104' , sDepteng     );      // ����μ���
      GetFldVar32('S_STRING105' , sInternNo    );      // ������ ��ȣ
      GetFldVar32('S_STRING106' , sIntHospNm   );      // ���ϼ��ú���
      GetFldVar32('S_STRING107' , sIntStDt     );      // ���Ͻ�����
      GetFldVar32('S_STRING108' , sIntEnDt     );      // ����������
      GetFldVar32('S_STRING109' , sRegStDt     );      // ������Ʈ ������
      GetFldVar32('S_STRING110' , sRegEnDt     );      // ������Ʈ ������
      GetFldVar32('S_STRING111' , sIntPoint    );      // ����(000000) -> 000/000
      GetFldVar32('S_STRING112' , sIntAve      );      // �������
      GetFldVar32('S_STRING113' , sIntSeats    );      // ����(000000) -> 000/000
      GetFldVar32('S_STRING114' , sIntGrade    );      // ����μ���
      GetFldVar32('S_STRING115' , sInDate      );      // ������
      GetFldVar32('S_STRING116' , sOutDate     );      // ������
      GetFldVar32('S_STRING117' , sPaygbn      );      // ������
      GetFldVar32('S_STRING118' , sInDt        );      // �ٹ�������  �߰� ���� 2005-12-09
      GetFldVar32('S_STRING119' , sDincomeyn   );      // �¹��̿���
      GetFldVar32('S_STRING120' , sWkplace     );      // �ٹ���  �߰� :   2006-05-18

      GetFldVar32('S_STRING121' , sYearsCnt    );      // �ټӳ�� �߰�
      GetFldVar32('S_STRING122' , sMonCnt      );      // �ټӿ��� �߰�
      GetFldVar32('S_STRING123' , sDayCnt      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11
      GetFldVar32('S_STRING124' , sTotCnt      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11

      GetFldVar32('S_STRING125' , sBankcd      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11
      GetFldVar32('S_STRING126' , sAcntno      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11
      GetFldVar32('S_STRING127' , sBanknm      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11
      GetFldVar32('S_STRING128' , sRemark      );      // ���κ� ����׸� �߰�  gawaguci 2008-05-15
      GetFldVar32('S_STRING129' , sWkplace1    );      // ���κ� ����׸� �߰�  gawaguci 2008-05-15
      GetFldVar32('S_STRING130' , sPincode     );      // ���κ� ����׸� �߰�  gawaguci 2008-05-15
      GetFldVar32('S_STRING131' , sPermYN      );      // �ΰ�/���ΰ��з�  �ڼ�ȣ 2010-2-5
      GetFldVar32('S_STRING132' , sDrbtan      );      // �ǻ籸��   �ڼ�ȣ 2010-2-5
      GetFldVar32('S_STRING133' , sIdent       );      // �ǻ籸��   �ڼ�ȣ 2010-2-5
      GetFldVar32('S_STRING134' , sAgreeyn     );      // �ǻ籸��   �ڼ�ȣ 2010-2-5

      // 2015.04.02 ���ö �߰�  �ӻ�ο��� ��ȸ�߰�
      GetFldVar32('S_STRING135' , sPregnantyn  );      // �ӻ�ο���  2015.04.02 ���ö �߰�

      GetFldVar32('S_STRING136' , sPatno  );      // �ӻ�ο���  2017.06.21 ������ �߰�

      GetFldVar32('S_STRING137' , sNewgradenm  ); //20200630
      GetFldVar32('S_STRING138' , sYeoncha     ); //20200630
      GetFldVar32('S_STRING139' , sWkplacecd   ); //20211123  �ٹ����ڵ� �߰� 

      Result := 1 ;
      txFree32;
   end;
end;

{===============================================================================
   HgaInsab1 ��� �⺻����
   �ű��Է�/����
   �ۼ��� : ������  02/02/06
   ������ : ���¿�  04/07/08
   �������� : �Է�, ����, ���� �� Service���� ó��
              ������ ���� ���û��� �߰�
===============================================================================}
function HgaInsab1.insInsab1():Integer;    // ��� �⺻���� �ű��Է�/����
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
              'S_NAME37;S_NAME38;S_NAME39;S_NAME40;S_NAME41;'+  // 37 InDt�Է¿� �߰� ���� 2005-12-09 // 38 JikMu �߰��� ���� 2005-12-12
              'S_NAME42;S_NAME43;S_NAME44;S_NAME45;S_NAME46;'); // 42 notpemi, 43 educode �߰� �ڼ�ȣ 2010-2-5
                                                                // 46 Pregnantyn �߰�   2015.04.02 ���ö
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
   HgaInsab1 ��� �⺻����
    ���Ի��� ���
   �ۼ��� : ������  05/04/20
   ������ : ���汸 05/12/10
                   07/01/20
                   07/05/05
 ==============================================================================}
function HgaInsab1.insReInsab():Integer;    // ��� �⺻���� ���Ի��� ���
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

function HgaInsab1.insUpInsab():Integer;    // Ÿ��� ������ �⺻���� ���  20201118 ������
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
   SetFldValue(0,[ssLocate,
                  ssDeptcd,
                  ssEmpno,
                  ssGubun] );

   if (txGetF('GA_DEPTC_L8')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'   , sEmpno       );      // ���ι�ȣ
      GetFldVar('S_STRING2'   , sEmpnm       );      // �����
      GetFldVar('S_STRING3'   , sJikwenm     );      // ������
      GetFldVar('S_STRING4'   , sJikwe       );      // �����ڵ�
      GetFldVar('S_STRING5'   , sHobong      );      // ȣ��

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
      GetFldVar32('S_STRING1'  , sEmpno         );  //���۳�¥
      GetFldVar32('S_STRING2'  , sEmpnm         );  //���ᳯ¥
      GetFldVar32('S_STRING3'  , sResno         );  //�����ȣ
      GetFldVar32('S_STRING4'  , sDeptnm        );  //������
      GetFldVar32('S_STRING5'  , sWkareacdnm    );  //�ҼӺμ�
      GetFldVar32('S_STRING6'  , sEntdt         );  //�ٹ��μ�
      GetFldVar32('S_STRING7'  , sRetdt         );  //����
      GetFldVar32('S_STRING8'  , sWkplace       );  //��å
      GetFldVar32('S_STRING9'  , sAgreeyn       );  //��ü
      GetFldVar32('S_STRING10' , sAppyn         );  //Ÿ��Ʋ(����)
      GetFldVar32('S_STRING11' , sDeptcd        );  //���             
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
      GetFldVar32('S_STRING1'  , sDccode       );  //���۳�¥
      GetFldVar32('S_STRING2'  , sEmpno        );  //���ᳯ¥
      GetFldVar32('S_STRING3'  , sEmpResno1    );  //�����ȣ
      GetFldVar32('S_STRING4'  , sEmpResno2    );  //������
      GetFldVar32('S_STRING5'  , sEmpnm        );  //������
      GetFldVar32('S_STRING6'  , sRelcd        );  //�ҼӺμ�
      GetFldVar32('S_STRING7'  , sWkareacd     );  //�ٹ��μ�
      GetFldVar32('S_STRING8'  , sRetdt        );  //����
      GetFldVar32('S_STRING9'  , sResno1       );  //��å
      GetFldVar32('S_STRING10' , sResno2       );  //��ü
      GetFldVar32('S_STRING11' , sFmlnm        );  //Ÿ��Ʋ(����)

      GetFldVar32('S_STRING12' , sEntdt       );  //��å
      GetFldVar32('S_STRING13' , sRemark       );  //��ü
      GetFldVar32('S_STRING14' , sDeptnm        );  //Ÿ��Ʋ(����)
      GetFldVar32('S_STRING15' , sLocate       );  //��å

      Result := GetRecordCnt32('S_STRING1');
      txFree;
    end;
end;




{===============================================================================
   HgaInsab1 ��� �⺻����
   ����
   �ۼ��� : ������  02/02/14
===============================================================================
function HgaInsab1.delInsab1(iCnt:Integer):Integer;    // ��� �⺻���� ����
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   HgaFamld1 ��� ��������
   ��ȸ
   �ۼ��� : ������  02/02/14
===============================================================================}
function HgaFamld1.SelFamld1():Integer; //��� �������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_FAMLD_L1')) then begin //Tuxedo Service Call 'ga_famld_l1.pc'
       GetFldVar('S_STRING1'   , sResno	   );        //���� �ֹι�ȣ
       GetFldVar('S_STRING2'   , sFmlynm   );        //��������
       GetFldVar('S_STRING3'   , sRelcd    );        //���������ڵ�
       GetFldVar('S_STRING4'   , sRelcdnm  );        //���������
       GetFldVar('S_STRING5'   , sSupcd    );        //�ξ籸��
       GetFldVar('S_STRING6'   , sSchship  );        //�����з��ڵ�
       GetFldVar('S_STRING7'   , sSchshipnm);        //�����з¸�
       GetFldVar('S_STRING8'   , sJob      );        //����
       GetFldVar('S_STRING9'   , sSdyn     );        //�������޴�� ����===> ���������� �ݿ�
       GetFldVar('S_STRING10'  , sDedyn    );        //����񰨸鿩
       GetFldVar('S_STRING11'  , sMinsutyp );        //�ǷẸ�豸��
       GetFldVar('S_STRING12'  , sRsdyn    );        //���ſ���
       GetFldVar('S_STRING13'  , sInjuryyn );        //����ο���
       GetFldVar('S_STRING14'  , sFmleditid);        //�������� ������ 20140626 ���ö �߰�
       GetFldVar('S_STRING15'  , sFmleditdate);      //�������� ������ 20140626 ���ö �߰�

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;
{===============================================================================
   HgaFamld1 ��� ��������
   �ű��Է�/����
   �ۼ��� : ������  02/02/06
===============================================================================}
function HgaFamld1.insFamld1():Integer;    // ��� ���� �ű��Է�/����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaFamld1 ��� ��������
   ����
   �ۼ��� : ������  02/02/06
===============================================================================}
function HgaFamld1.delFamld1:Integer;    // ��� ���� ����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.                                     ��
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue(0,[sEmpno,sLocate,sResno]);

   if (txPutF('GA_FAMLD_D1')) then begin //Tuxedo Service Call ga_famld_d1.pc
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaSchod1 ��� �з�����
   ��ȸ
   �ۼ��� : ������  02/01/16
 ===============================================================================
}
function HgaSchod1.SelSchod1():Integer; //��� �з����� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_SCHOD_L1')) then begin     //Tuxedo Service Call ga_schod_l1.pc
     GetFldVar('S_STRING1'   , sSchship    );        // �з±����ڵ�
     GetFldVar('S_STRING2'   , sSchshnm	   );        // �з±��и�
     GetFldVar('S_STRING3'   , sSdt        );        // �з½�������
     GetFldVar('S_STRING4'   , sGrudt      );        // �з���������
     GetFldVar('S_STRING5'   , sSchoolnm   );        // �б���
     GetFldVar('S_STRING6'   , sMjrnm      );        // ������
     GetFldVar('S_STRING7'   , sMjrcd      );        // �����ڵ�
     GetFldVar('S_STRING8'   , sEndyn      );        // ��������
     GetFldVar('S_STRING9'   , sRemtxt     );        // ���
     GetFldVar('S_STRING10'  , sEntGubn    );        // �Ի�����
     GetFldVar('S_STRING11'  , sSchoolcd   );        // �з��ڵ�

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaSchod1 ��� �з�����
   �ű��Է�/����
   �ۼ��� : ������  02/02/04
===============================================================================}
function HgaSchod1.insSchod1():Integer;    // ��� �з� �ű��Է�/����
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaSchod1 ��� �з�����
   ����
   �ۼ��� : ������  02/02/04
===============================================================================}
function HgaSchod1.delSchod1():Integer;    // ��� �з� ����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue(0,[sEmpno,sLocate,sSchship,sSdt]);

   if (txPutF('GA_SCHOD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaFamld1 ��� �������
   ��ȸ
   �ۼ��� : ������  02/01/16
===============================================================================}
function HgaWoiwd1.SelWoiwd1():Integer; //��� ������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_WOIWD_L1')) then  //ga_woiwd_l1.pc
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sSdate      );        // �ٹ���������
     GetFldVar('S_STRING2'   , sEdate      );        // �ٹ���������
     GetFldVar('S_STRING3'   , sCompnm     );        // ȸ���
     GetFldVar('S_STRING4'   , sJikwe      );        // ����
     GetFldVar('S_STRING5'   , sJikmunm    );        // ��������
     GetFldVar('S_STRING6'   , sWkmm       );        // ����������
     GetFldVar('S_STRING7'   , sWkRate     );        // ��±Ⱓ ������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaFamld1 ��� �������
   �ű��Է�/����
   �ۼ��� : ������  02/01/27
===============================================================================}
function HgaWoiwd1.insWoiwd1():Integer;    // ��� ��� �ű��Է�/����
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaFamld1 ��� �������
   ����
   �ۼ��� : ������  02/01/30
===============================================================================}
function HgaWoiwd1.delWoiwd1():Integer;    // ��� ��� ����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue(0,[sEmpno ,sLocate,sSdate]);
   if (txPutF('GA_WOIWD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaQulid1 ��� �ڰ����� ��ȸ
   �ۼ��� : ������  02/01/17
===============================================================================}
function HgaQulid1.SelQulid1():Integer; //��� ������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_QULID_L1')) then begin     //Tuxedo Service Call ga_qulid_l1.pc
     GetFldVar('S_STRING1'   , sLcncd      );        // �ڰ��ڵ�
     GetFldVar('S_STRING2'   , sLcncdn     );        // �ڰ��ڵ��
     GetFldVar('S_STRING3'   , sOrgcd      );        // �������ڵ�
     GetFldVar('S_STRING4'   , sOrgcdn     );        // �������ڵ��
     GetFldVar('S_STRING5'   , sGetdate    );        // �������
     GetFldVar('S_STRING6'   , sFnsdate    );        // ��ȿ����
     GetFldVar('S_STRING7'   , sChgdate    );        // ���ⰻ������
     GetFldVar('S_STRING8'   , sLcnno      );        // �ڰݹ�ȣ
     GetFldVar('S_STRING9'   , sRemix      );        // �ڰݹ�ȣ
     GetFldVar('S_STRING10'  , sSubject    );        // �ڰݹ�ȣ
     GetFldVar('S_STRING11'  , sSubnm      );        // �ڰݹ�ȣ
     GetFldVar('S_STRING12'  , sPromYn      );
     GetFldVar('S_STRING13'  , sPromSub      );



     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaQulid1 ��� �ڰ� ����
   �Է�/����
   �ۼ��� : ������  02/02/01
===============================================================================}
function HgaQulid1.insQulid1():Integer;    // ��� �ڰ� �ű��Է�/����
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0 ,[sEmpno  ,sLocate ,sLcncd,sOrgcd ,sGetdate,
                   sFnsdate,sChgdate,sLcnno,sEditid,sEditip ,
                   sChoice ,sLcncd_old,sRemix,sSubject,sLcnNO_old,  // 20200114 ������ �߰�
                   sPromYn ,sPromSub]);                             // 20200623 ������ �߰�  s
   if (txPutF('GA_QULID_I1')) then begin //Tuxedo Service Call  ga_qulid_i1.pc
      Result := 1;
      txFree;
   end;

end;
{===============================================================================
   HgaQulid1 ��� �ڰ� ���� ����
   �ۼ��� : ������  02/02/01
===============================================================================}
function HgaQulid1.delQulid1():Integer;    // ��� �ڰ����� ����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue(0,[sEmpno, sLocate, sLcncd]);
   if (txPutF('GA_QULID_D1')) then begin //Tuxedo Service Call ga_qulid_d1.pc
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaEducd1 ��� ��������   ��ȸ
   �ۼ��� : ���¿�
   �ۼ��� : 2004.07.22
===============================================================================}
function HgaEducd1.SelEducd1():Integer; //��� �������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_EDUCD_L1')) then begin     //Tuxedo Service Call ga_educd_l1.pc
     GetFldVar('S_STRING1'    , sEducd      );        // �����ڵ�
     GetFldVar('S_STRING3'    , sSdate      );        // ������������
     GetFldVar('S_STRING4'    , sEdate      );        // ������������
     GetFldVar('S_STRING5'    , sEduname    );        // ������
     GetFldVar('S_STRING6'    , sEduOrgcd   );        // ��������ڵ�
     GetFldVar('S_STRING7'    , sEduOrg     );        // ���������
     GetFldVar('S_STRING8'    , sEducont    );        // ��������
     GetFldVar('S_STRING9'    , sEduamt     );        // �����ݾ�
     GetFldVar('S_STRING10'   , sEduesti    );        // ������
     GetFldVar('S_STRING11'   , sEdurank    );        // ��������
     GetFldVar('S_STRING12'   , sEduremk    );        // ���
     GetFldVar('S_STRING13'   , sEduchk     );        // ���ᱳ�� üũ����
     GetFldVar('S_STRING14'   , sInoutyn    );        // ���ܱ���
     GetFldVar('S_STRING15'   , sEduyn      );        // �̼�����
     GetFldVar('S_STRING16'   , sPoint      );        // �̼�����
     GetFldVar('S_STRING17'   , sInout      );        // �����ܿ���
     GetFldVar('S_STRING18'   , sEdupoint   );        // �̼�����
     GetFldVar('S_STRING19'   , sEdumonth1  );        // 1������
     GetFldVar('S_STRING20'   , sEdumonth2  );        // 2������
     GetFldVar('S_STRING21'   , sEdumonth3  );        // 3������
     GetFldVar('S_STRING22'   , sEdutotal   );        // ����
     GetFldVar('S_STRING23'   , sJikwe      );        // ����
     GetFldVar('S_STRING24'   , sJikwenm    );        // ������
     GetFldVar('S_STRING25'   , sTime       );        // ������
     GetFldVar('S_STRING26'   , sEduseq     );        // ���� �Ϸù�ȣ 20090725 add


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;


{===============================================================================
   HgaEducd1 �����ڰݽ��� ��ȸ
===============================================================================}
function HgaEducd1.SelEducd3():Integer; //��� �������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1'); //service�Էº���
   SetFldValue(0,[sJikwe] );

   if (txGetF('GA_EDUCD_L3')) then begin     //Tuxedo Service Call ga_educd_l3.pc
     GetFldVar('S_STRING1'    , sDeptnm     );        // �ҼӺμ�
     GetFldVar('S_STRING2'    , sWkareanm   );        // �ٹ��μ�
     GetFldVar('S_STRING3'    , sEmpno      );        // ���
     GetFldVar('S_STRING4'    , sEmpnm      );        // ����
     GetFldVar('S_STRING5'    , sJikwenm    );        // (��)������
     GetFldVar('S_STRING6'    , sApodate    );        // (��)������������
     GetFldVar('S_STRING7'    , sEduyn      );        // �����ڰݽ����̼�����
     GetFldVar('S_STRING8'    , sEdupoint   );        // �̼�����
     GetFldVar('S_STRING9'    , sEduremk    );        // ���

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaEducd1 ��� ��������   ���
   �ۼ��� : ���¿�
   �ۼ��� : 2004.07.23
===============================================================================}
function HgaEducd1.InsUpEducd1():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaEducd1 ����������� ����
   �ۼ��� : ���¿�
   �ۼ��� : 2004.07.23
===============================================================================}
function HgaEducd1.DelEducd1():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

   SetFldValue(0,[sCodsrh, sLocate, sEducd, sSdate, sCont, sEduseq]);
   if (txPutF('GA_EDUCD_D1')) then begin //Tuxedo Service Call ga_educd_d1.pc
      Result := 1;
      txFree;
   end;
end;

// 20060920   �߰� �������ε�
function HgaEducd1.InsExcelEducd1(iCnt:integer): integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.


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



function HgaEducd1.SelNewEdu():Integer; //��� �������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
   SetFldValue(0,[sEmpno,sMngcd,sMidcd,sSdate,sEdate] );

   if (txGetF('GA_EDUM_L10')) then begin     //Tuxedo Service Call ga_educd_l1.pc
     GetFldVar('S_STRING1'    , sMngcdNm    );        // �����ڵ�
     GetFldVar('S_STRING2'    , sMidcdNm    );        // ������������
     GetFldVar('S_STRING3'    , sEdflagNm   );        // ������������
     GetFldVar('S_STRING4'    , sEducode    );        // ������
     GetFldVar('S_STRING5'    , sSdate      );        // ��������ڵ�
     GetFldVar('S_STRING6'    , sEdate      );        // ���������
     GetFldVar('S_STRING7'    , sStime      );        // ��������
     GetFldVar('S_STRING8'    , sEtime      );        // �����ݾ�
     GetFldVar('S_STRING9'    , sEdutime    );        // ������
     GetFldVar('S_STRING10'   , sEdupoint   );        // ��������
     GetFldVar('S_STRING11'   , sEduAvg     );        // ���
     GetFldVar('S_STRING12'   , sEdutitle   );        // ���ᱳ�� üũ����
     GetFldVar('S_STRING13'   , sExecyn     );        // ���ᱳ�� üũ����


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaAward1 ��� ��������
   ��ȸ
   �ۼ��� : ������  02/01/21
===============================================================================}
function HgaAward1.SelAward1():Integer; //��� �������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_AWARD_L1')) then begin     //Tuxedo Service Call ga_award_l1.pc
     GetFldVar('S_STRING1'   , sAwardate  );        // ���ƹ߻���
     GetFldVar('S_STRING2'   , sAwarcd    );        // �����ڵ�
     GetFldVar('S_STRING3'   , sAwarcdnm  );        // �����ڵ��
     GetFldVar('S_STRING4'   , sTypecd    );        // ���Ʊ����ڵ�
     GetFldVar('S_STRING5'   , sTypecdnm  );        // ���Ʊ����ڵ��
     GetFldVar('S_STRING6'   , sRemtxt    );        // ����
     GetFldVar('S_STRING7'   , sOrgnm     );        // ���Ʊ���� sAwarder
     GetFldVar('S_STRING8'   , sAwarder   );        // ������ 20061010

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaAward1 ��� ���� ����
   �Է�/����
   �ۼ��� : ������  02/02/01
===============================================================================}
function HgaAward1.insAward1():Integer;    // ��� ���� �ű��Է�/����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaAward1 ��� ���� ����
   ����
   �ۼ��� : ������  02/02/01
===============================================================================}
function HgaAward1.delAward1():Integer;    // ��� ���� ����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

   SetFldValue(0,[sEmpno, sLocate, sAwardate, sAwarcd]);
   if (txPutF('GA_AWARD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaPunsd1 ��� ¡�� ����
   ��ȸ
   �ۼ��� : ������  02/01/25
===============================================================================}
function HgaPunsd1.SelPunsd1():Integer; //��� ¡������ ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_PUNSD_L1')) then begin     //Tuxedo Service Call ga_punsd_l1.pc
     GetFldVar('S_STRING1'   , sSdate       );        // ¡�������
     GetFldVar('S_STRING2'   , sEdate       );        // ¡��������
     GetFldVar('S_STRING3'   , sPuncd       );        // ¡���ڵ�
     GetFldVar('S_STRING4'   , sPuncdnm     );        // ¡���ڵ��
     GetFldVar('S_STRING5'   , sTypecd      );        // ¡�豸���ڵ�
     GetFldVar('S_STRING6'   , sTypecdnm    );        // ¡�豸���ڵ��
     GetFldVar('S_STRING7'   , sRemtxt      );        // ����
     GetFldVar('S_STRING8'   , sOrgnm       );        // ¡������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaPunsd1 ��� ¡�� ����
   �Է� / ����
   �ۼ��� : ������  02/01/30
===============================================================================}
function HgaPunsd1.insPunsd1():Integer;    // ��� ¡�� �ű��Է�/����
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaPunsd1 ��� ¡�� ����
   ����
   �ۼ��� : ������  02/01/30
===============================================================================}
function HgaPunsd1.delPunsd1():Integer;    // ��� ¡�� ����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

   SetFldValue(0,[sEmpno,sLocate,sSdate,sPuncd ]);

   if (txPutF('GA_PUNSD_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;
{===============================================================================
   HgaApoid1 ��� �߷� ���� ��ȸ
   �ۼ��� : ������  02/01/25
===============================================================================}
function HgaApoid1.SelApoid1():Integer; //��� �߷����� ��ȸ

begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_APOID_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
     GetFldVar('S_STRING1'   ,  sApocd      );        // �� �� �� ��
     GetFldVar('S_STRING2'   ,  sApoinm     );        // �� �� ��
     GetFldVar('S_STRING3'   ,  sApodate    );        // �� �� ��
     GetFldVar('S_STRING4'   ,  sEnddate    );        // �߷�����
     GetFldVar('S_STRING5'   ,  sJikjong    );        // �����ڵ�
     GetFldVar('S_STRING6'   ,  sJikjongnm  );        // �� �� ��
     GetFldVar('S_STRING7'   ,  sJikgup     );        // �����ڵ�
     GetFldVar('S_STRING8'   ,  sJikgupnm   );        // �� �� ��
     GetFldVar('S_STRING9'   ,  sJikmu      );        // �����ڵ�(�ź��ڵ�)
     GetFldVar('S_STRING10'  ,  sJikmunm    );        // ������(�źи�)
     GetFldVar('S_STRING11'  ,  sJikchek    );        // ��å�ڵ�
     GetFldVar('S_STRING12'  ,  sJikcheknm  );        // �� å ��
     GetFldVar('S_STRING13'  ,  sJikwe      );        // �����ڵ�
     GetFldVar('S_STRING14'  ,  sJikwenm    );        // �� �� ��
     GetFldVar('S_STRING15'  ,  sJikgun     );        // �����ڵ�
     GetFldVar('S_STRING16'  ,  sJikgunnm   );        // �� �� ��
     GetFldVar('S_STRING17'  ,  sHobong     );        // ȣ    ��
     GetFldVar('S_STRING18'  ,  sDeptcd     );        // �μ��ڵ�
     GetFldVar('S_STRING19'  ,  sDeptnm     );        // �� �� ��
     GetFldVar('S_STRING20'  ,  sWkareacd   );        // �ٹ����ڵ� --> �ٹ��μ��ڵ�
     GetFldVar('S_STRING21'  ,  sWkareacdnm );        // �ٹ����� --> �ٹ��μ���
     GetFldVar('S_STRING22'  ,  sRemtxt     );        // ��    ��
     GetFldVar('S_STRING23'  ,  sConCurYn   );        // �����ֺα���
     GetFldVar('S_STRING24'  ,  sAppotno    );        // ����� ��ȣ
     GetFldVar('S_STRING25'  ,  sWLocate    );        // �ٹ��μ� ����� �ڵ�
     GetFldVar('S_STRING26'  ,  sWkplace    );        // �ٹ���  

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
   HgaApoid1 ��� �߷� ���� ��ȸ
   �ۼ��� : ������  02/01/25
===============================================================================}
function HgaApoid1.SelApoid2():Integer; //��� �߷����� ��ȸ
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;' +
                'S_TYPE4;S_TYPE5;S_TYPE6;' +
                'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;');

   SetFldValue32(0,
                [sLocate,  sApocd,   sDeptcd,
                 sJikmu,   sJikjong, sJikwe,
                 sJikchek, sApodate, sEnddate, sJikgun, sGubun]);

   if (txGetF32('GA_APOID_L2')) then begin     // Tuxedo Service Call ga_apoid_l2.pc
     GetFldVar32('S_STRING1'  , sApoinm    );  // �߷ɱ���
     GetFldVar32('S_STRING2'  , sApodate   );  // �߷�����
     GetFldVar32('S_STRING3'  , sDeptnm    );  // �Ҽ�
     GetFldVar32('S_STRING4'  , sEmpno     );  // ���ι�ȣ
     GetFldVar32('S_STRING5'  , sEmpnm     );  // ����
     GetFldVar32('S_STRING6'  , sJikjongnm );  // ����
     GetFldVar32('S_STRING7'  , sJikgupnm  );  // ����
     GetFldVar32('S_STRING8'  , sHobong    );  // ȣ��
     GetFldVar32('S_STRING9'  , sJikwenm   );  // ����
     GetFldVar32('S_STRING10' , sWkareacdnm ); // �ٹ��μ��� 20061010
     GetFldVar32('S_STRING11' , sRemtxt     ); // ���       20061107
     GetFldVar32('S_STRING12' , sBefore     ); // ���       20061107
     GetFldVar32('S_STRING13' , sWkTime     ); // ���       20061107
     GetFldVar32('S_STRING14' , sEnddt      ); // ��������   2016.06.13 ���ö �߰�
     GetFldVar32('S_STRING15' , sRetdt      ); // ��������   20210714 �߰� 


     Result := GetRecordCnt32('S_STRING1');
     txFree32;
   end;
end;

function HgaApoid1.SelApoid3():Integer; //��� �߷ɴ����  ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15');

   SetFldValue(0,[sLocate,sDeptcd,sWkareacd,sJikjong,sJikgup,
                  sJikchek,sJikwe,sJikgun,sEntSYYMM,sEntEYYMM,
                  sSgMonth,sHobong,sJikmu,sChargeGbn,sGubun]);

   if (txGetF('GA_APOID_L3')) then       //Tuxedo Service Call ga_apoid_l3.pc
   begin
      GetFldVar('S_STRING1'  , sEmpnm     );   // ����
      GetFldVar('S_STRING2'  , sEmpno     );   // �����ȣ
      GetFldVar('S_STRING3'  , sDeptnm    );   // �ҼӺμ�
      GetFldVar('S_STRING4'  , sWkareacdnm);   // �ٹ��μ�
      GetFldVar('S_STRING5'  , sEntDate   );   // �Ի���
      GetFldVar('S_STRING6'  , sLastDate  );   // �����߷���
      GetFldVar('S_STRING7'  , sApoinm    );   // �߷ɸ�
      GetFldVar('S_STRING8'  , sJikgunnm  );   // �� ��
      GetFldVar('S_STRING9'  , sJikjongnm );   // �� ��
      GetFldVar('S_STRING10' , sJikwenm   );   // �� ��
      GetFldVar('S_STRING11' , sJikcheknm );   // �� å
      GetFldVar('S_STRING12' , sJikgupnm  );   // �� ��
      GetFldVar('S_STRING13' , sHobong    );   // ȣ ��
      GetFldVar('S_STRING14' , sJikjongcd );   // ����
      GetFldVar('S_STRING15' , sJikgupcd  );   // ����
      GetFldVar('S_STRING16' , sJikchekcd );   // ��å
      GetFldVar('S_STRING17' , sJikwecd   );   // ����
      GetFldVar('S_STRING18' , sJikguncd  );   // ����
      GetFldVar('S_STRING19' , sDeptcd2   );   // �ҼӺμ�
      GetFldVar('S_STRING20' , sWkareacd2 );   // �ٹ��μ�
      GetFldVar('S_STRING21' , sJikmucd   );   // �����ڵ�(�ź��ڵ�)
      GetFldVar('S_STRING22' , sJikmunm   );   // ������(�źи�)
      GetFldVar('S_STRING23' , sWLocate   );   // �ٹ��μ� �����
      GetFldVar('S_STRING24' , sBefhobong );   // �λ縶���� ȣ���� ����ȣ��
      GetFldVar('S_STRING25' , sNexthobong);   // ����ȣ���� ����ȣ��
      GetFldVar('S_STRING26' , sWkplace);      // 20061012

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;



{===============================================================================
   ��� ���� �߷� ���� Ȯ�ι� �����ϼ� ��ȸ

===============================================================================}
function HgaApoid1.SelApoid4():Integer; //��� �߷ɴ����  ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue(0,[sLocate,sEmpno,sSDate,sEDate]);

   if (txGetF('GA_APOID_L5')) then begin    //Tuxedo Service Call  ga_apoid_l5.pc
     GetFldVar('S_STRING1'  , sDays    );   // �����Ⱓ �ϼ�
     GetFldVar('S_STRING2'  , sApocd   );   // 20061101 �߷��ڵ� �߰�

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaApoid1 ��� �߷� ���� �Է�/����
   �ۼ��� : ������  02/02/07
===============================================================================}
function HgaApoid1.insApoid1():Integer;    // ��� �߷� �ű��Է�/����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
              'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;S_TYPE25;'+ {S_TYPE26; ������ �Ի���. ������ ����. 2019-10-12}
              'S_TYPE27;'+ {S_TYPE27' 20200513 sAfter �Ⱦ��� ���� ����}
              'S_TYPE28;S_TYPE29;S_TYPE30;S_TYPE31;' //20200630

              );

   SetFldValue(0 ,[sEmpno,sLocate,sApocd,sApodate,sEnddate,
                   sJikjong,sJikgup,sJikmu,sJikchek,sJikwe,
                   sJikgun,sHobong,sDeptcd,sWkareacd,sRemtxt,
                   sEditid,sEditip,sConCurYn,sChoice,sOldKey1,
                   sOldKey2,sCodsrh,sAppotno,sWLocate,sWkplace, {sEntdt ������ �Ի���. ������ ����. 2019-10-12}
                   sGubun,  // sAfter ������ �߰� 2018-11-30
                   sNewGrade, sYeoncha, sSJYeonhan, sPromyear //20200630

                   ]);             {,sAfter 20200513 sAfter �Ⱦ��� ���� ����}
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


function HgaApoid1.insApoid2(iCnt : Integer) :Integer;    // ��� �߷� �ű��Է�/����
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
   GAAPOICT �߷��ڵ�
   �߷ɱ��� ��ȸ (GaApoict)
   �ۼ��� : ����
===============================================================================}
function HgaApoid1.ListComCodeName : Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc;

   //FML Buffer Field Assign
//   SetFldName('S_TYPE1;');
//   SetFldValue(0,['A1'] );

   //Tuxedo Service Call
   //ga_apoic_l1.pc

   if (txGetF('GA_APOIC_L1')) then  //ga_apoic_l1.pc
   begin
     GetFldVar('S_STRING1',  sCode    );  // �ڵ�
     GetFldVar('S_STRING2',  sCodeName);  // �ڵ��

      //��ȸ�Ǽ� return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;

function HgaApoid1.ListProof : Integer;     // ������� ���� �߷ɻ���(ä��, �μ��̵�)
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); // sEmpno2 ������ �߰� 2019-10-25.
   SetFldValue(0,[sOldKey1, sOldKey2, sEmpno2] );

   //Tuxedo Service Call
   if (txGetF('GA_APOID_L4')) then
   begin
     GetFldVar('S_STRING1',  sEmpno    );  // �����ȣ       �ʿ�
     GetFldVar('S_STRING2',  sWkareacd );  // �ٹ��μ��ڵ�
     GetFldVar('S_STRING3',  sDeptnm   );  // �μ���         �ʿ�
     GetFldVar('S_STRING4',  sApodate  );  // �߷���         �ʿ�
     GetFldVar('S_STRING5',  sEndDate  );  // �߷�������     �ʿ�
     GetFldVar('S_STRING6',  sJikwe    );  // �����ڵ�
     GetFldVar('S_STRING7',  sJikwenm  );  // ������         �ʿ�
     GetFldVar('S_STRING8',  sJikchek  );  // ��å�ڵ�
     GetFldVar('S_STRING9',  sJikcheknm);  // ��å��         �ʿ�
     GetFldVar('S_STRING10', sJikjong  );  // �����ڵ�
     GetFldVar('S_STRING11', sJikjongnm);  // ������         �ʿ�
     GetFldVar('S_STRING12', sJikmu    );  // �����ڵ�
     GetFldVar('S_STRING13', sJikmunm  );  // ������         �ʿ�

      //��ȸ�Ǽ� return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;



{===============================================================================
   HgaApoid1 ��� �߷� ����
   ����
   �ۼ��� : ������  02/02/07
===============================================================================}
{function HgaApoid1.delApoid1(iCnt:Integer):Integer;    // ��� �߷� ����
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
//      ��������      2013-05-23
//       Create by �����
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
   HgaComcd1 ��������
   ��ȸ
   �ۼ��� : ������  02/02/18
===============================================================================}
function HgaComcd1.SelComcd1():Integer; // �������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
   SetFldValue(0,[sInCode1,sChoice,sCodsrh] );

   if (txGetF('GA_COMCD_L1')) then begin     //Tuxedo Service Call ga_comcd_l1.pc
     GetFldVar('S_STRING1'   ,  sComcddtl      );        // �ߺз��ڵ�
     GetFldVar('S_STRING2'   ,  sComcdnm       );        // �ߺз��ڵ��

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaComcd1 �������� �Է�
   �ۼ��� : ������  02/02/18
===============================================================================}
function HgaComcd1.insComcd1():Integer;    // �������� �ű��Է�
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaVacact1 �����ڵ���� ���� ��ȸ
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaVacact1.SelVacac1():Integer; //�����ڵ� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName(''); //service�Էº���
   SetFldValue(0,[]);

   if (txGetF('GA_VACAC_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sRefwkcd    );        // �����ڵ�
     GetFldVar('S_STRING2'   ,  sWknm       );        // ���¸�
     GetFldVar('S_STRING3'   ,  sWkgbn      );        // ���±���
     GetFldVar('S_STRING4'   ,  sDaytime    );        // �ð� �ϼ� ����
     GetFldVar('S_STRING5'   ,  sBasdedyn   );        // �⺻����������
     GetFldVar('S_STRING6'   ,  sWkday      );        // �ٹ��ϼ� ���Կ���
     GetFldVar('S_STRING7'   ,  sAttdtcnt   );        // ����ϼ� ���Կ���
     GetFldVar('S_STRING8'   ,  sDeldate    );        // DELDATE  �������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaVacact1 �����ڵ���� ���� �Է�/����
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaVacact1.insVacac1():Integer;    // �����ڵ� �ű��Է�/����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaVacact1 �����ڵ���� ���� ����
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaVacact1.delVacac1(iCnt:Integer):Integer;    // �����ڵ� ����
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   HgaApoict1 �߷��ڵ���� ���� ��ȸ
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaApoict1.SelApoic1():Integer; //�߷��ڵ� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName(''); //service�Էº���
   SetFldValue(0,[]);

   if (txGetF('GA_APOIC_L2')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sApoicd  );        // �߷��ڵ�
     GetFldVar('S_STRING2'   ,  sApoinm  );        // �߷ɸ�
     GetFldVar('S_STRING3'   ,  sYn1     );        // ��������
     GetFldVar('S_STRING4'   ,  sYn2     );        // ��������
     GetFldVar('S_STRING5'   ,  sYn3     );        // ��������
     GetFldVar('S_STRING6'   ,  sYn4     );        // ¡������
     GetFldVar('S_STRING7'   ,  sYn5     );        // ���ޱ���
     GetFldVar('S_STRING8'   ,  sYn6     );        // ���񱸺�1
     GetFldVar('S_STRING9'   ,  sYn7     );        // ���񱸺�2
     GetFldVar('S_STRING10'  ,  sYn8     );        // ���񱸺�3
     GetFldVar('S_STRING11'  ,  sYn9     );        // ���񱸺�4
     GetFldVar('S_STRING12'  ,  sDeldate );        // DELDATE �������
     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaApoict1 �߷��ڵ���� ����
   �Է�/����
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaApoict1.insApoic1():Integer;    // �߷��ڵ� �ű��Է�/����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaApoict1 �߷��ڵ���� ���� ����
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaApoict1.delApoic1(iCnt:Integer):Integer;    // �߷��ڵ� ����
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   HgaWrktct �ٹ������ڵ���� ���� ��ȸ
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaWrktct.SelWrktc1():Integer; //�ٹ������ڵ� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[ssLocate,ssFlag]);

   if (txGetF('GA_WRKTC_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sWrktcd);         //�ٹ������ڵ�
     GetFldVar('S_STRING2'   ,  sWrktnm );        //�ٹ����¸�
     GetFldVar('S_STRING3'   ,  sStm    );        //���۽ð�
     GetFldVar('S_STRING4'   ,  sEtm    );        //����ð�
     GetFldVar('S_STRING5'   ,  sOtm    );        //�ð�������
     GetFldVar('S_STRING6'   ,  sNtm    );        //�ɾ�����
     GetFldVar('S_STRING7'   ,  sWtm    );        //Ư������
     GetFldVar('S_STRING8'   ,  sSortord);        //���ļ���
     GetFldVar('S_STRING9'   ,  sDeldate);        //�������
     GetFldVar('S_STRING10'  ,  sFlag   );        //�������
     GetFldVar('S_STRING11'  ,  sVtm    );        //���ļ���
     GetFldVar('S_STRING12'  ,  sOvm    );        //�������
     GetFldVar('S_STRING13'  ,  sOfm    );        //�������
     GetFldVar('S_STRING14'  ,  sPregyn );        // 2015.04.14 ���ö �߰�  ������� �ٹ�����

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;


{===============================================================================
   HgaWrktct �ٹ������ڵ���� ���� ��ȸ
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaWrktct.SelWList():Integer; //�ٹ������ڵ� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[ssLocate,ssFlag,ssYYMM]);

   if (txGetF('GA_WLIST_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sEmpno  );         //�ٹ������ڵ�
     GetFldVar('S_STRING2'   ,  sEmpnm  );        //�ٹ����¸�
     GetFldVar('S_STRING3'   ,  sEntdt  );        //���۽ð�
     GetFldVar('S_STRING4'   ,  sDeptnm );        //����ð�
     GetFldVar('S_STRING5'   ,  sCnt );        //����ð�


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;


////////////////////////////////////////////////////////////////////////////////
//   HgaWrktct �ٹ������ڵ���� ������ȸ(�ڵ�, �ڵ��, �����ڵ� ����)
//   �ۼ��� : �� �� �� 2004-10-28
////////////////////////////////////////////////////////////////////////////////
function HgaWrktct.ListWrktc:Integer; //�ٹ������ڵ� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[ssLocate, ssFlag, ssDeptcd]);

   if (txGetF('GA_WRKTC_L2')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   ,  sWrktcd);         //�ٹ������ڵ�
     GetFldVar('S_STRING2'   ,  sWrktnm );        //�ٹ����¸�

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaWrktct �ٹ������ڵ���� ����
   �Է�/����
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaWrktct.insWrktc1():Integer;    // �ٹ������ڵ� �ű��Է�/����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   HgaWrktct �ٹ������ڵ���� ����
   ����
   �ۼ��� : ������  02/02/25
===============================================================================}
function HgaWrktct.delWrktc1(iCnt:Integer):Integer;    // �ٹ������ڵ� ����
var
 i : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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

function HgaWrktct.TreeSelWrktc1: Integer; // 2020.01.05 ������ �߰�
begin
//
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1'); //service�Էº���
   SetFldValue(0,[ssLocate]);

   if (txGetF('GA_WRKTC_L3')) then      //ga_wrktc_l3.pc
   begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  , sLevel     );   //����
      GetFldVar('S_STRING2'  , sType      );   //���±���
      GetFldVar('S_STRING3'  , sWrktnm    );   //�����ڵ�

      GetFldVar('S_STRING4'  , sDutytime  );   //�ٹ��ð� 20170220 LEE
      GetFldVar('S_STRING5'  , sWotime    );   //�����ð� 20170220 LEE

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;


end;

function HgaUsGrpt.SelUsGrpt: Integer;
begin

    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���
    SetFldValue(0,[ssEmpno,ssGrpid]);

    if (txGetF('GB_USGRP_L1')) then
    begin     //Tuxedo Service Call
        GetFldVar ('S_STRING1', sDeptcd );

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;

end;

//============================================================================//
// HgaInsamt  �λ縶����                                                      //
// �μ����ο���Ȳ ��ȸ                                                        //
// �ۼ��� : �� �� ��                                                          //
//============================================================================//
function HgaInsamt.ListGaInsamt(sType1,sType2,sType3,sType4: String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //S_TYPE4 �߰� 20200406 ������
   SetFldValue(0,[sType1,sType2,sType3,sType4]);   //sType4  �߰� 20200406 ������

   //Tuxedo Service Call
   if (txGetF('GA_INSAM_L2')) then  //ga_insam_l2.pc
   begin
     GetFldVar('S_STRING1',  sDeptcd );  // �μ��ڵ�
     GetFldVar('S_STRING2',  sDeptnm );  // �μ���
     GetFldVar('S_STRING3',  sCount  );  // �μ��ο�

     //��ȸ�Ǽ� return
     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

//===============================================================================
//   GaInsamt �λ縶����
//   �μ��ο���Ȳ ������
//   �ۼ��� : ����
//===============================================================================
function HgaInsamt.List2GaInsamt():integer;
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0,[sType1,                               // �����
                  sType2,                               // �μ�����
                  sType3,                               // �μ�
                  SType4,                               // ��ȸ������
                  SType5                                // ��ȸ�� ������ȸ���� ������ȸ �ƴ��� ����
                  ] );

   if (txGetF('GA_INSAM_L3')) then begin                // Tuxedo Service Call ga_insam_l3.pc
      GetFldVar('S_STRING1'  , sEmpno             );    // ���
      GetFldVar('S_STRING2'  , sEmpnm             );    // ����
      GetFldVar('S_STRING3'  , sResno             );    // �ֹι�ȣ
      GetFldVar('S_STRING4'  , sPatno             );    // �ֹι�ȣ

      GetFldVar('S_STRING5'  , sEntdt             );    // �Ի���
      GetFldVar('S_STRING6'  , sRetdt             );    // �����
      GetFldVar('S_STRING7'  , sDeptnm            );    // �ٹ��μ�
      GetFldVar('S_STRING8'  , sJikjongnm         );    // ����
      GetFldVar('S_STRING9'  , sJikwenm           );    // ����
      GetFldVar('S_STRING10'  , sSexcd             );    // ����
      GetFldVar('S_STRING11' , sJikgunnm          );    // ������ 20061013
      GetFldVar('S_STRING12' , sJikmunm          );   // ������ 20061103 �߰�

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

//===============================================================================
//   HgeVendmt : �ڰݸ������
//   ���      : �ڰݸ������ ��ȸ
//   �ۼ���    : �� �� �� (2002.01.18)
//===============================================================================}
function HgaQulidt.ListGaQulidt : integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
   SetFldValue32(0,[sType1, sType2, sType3, sType4, sType5, sType6] );

   if (txGetF32('GA_QULID_L2')) then begin        // Tuxedo Service Call ga_qulid_l2.pc
      GetFldVar('S_STRING1'  , sLcncdnm   );    // �ڰݸ���
      GetFldVar('S_STRING2'  , sDeptnm    );    // �ҼӺμ�
      GetFldVar('S_STRING3'  , sJikjongnm );    // ����
      GetFldVar('S_STRING4'  , sEmpnm     );    // ����
      GetFldVar('S_STRING5'  , sEmpno     );    // ���
      GetFldVar('S_STRING6'  , sGetdate   );    // �����
      GetFldVar('S_STRING7'  , sLcnno     );    // �ڰݸ����ȣ
      GetFldVar('S_STRING8'  , sOrgcdnm   );    // ������
      GetFldVar('S_STRING9'  , sWkareanm  );    //  �ٹ��μ�
      GetFldVar('S_STRING10' , sResno     );    //  �ֹε�� ��ȣ
      GetFldVar('S_STRING11' , sJikmu     );    //  �ź�



      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

//===============================================================================
//   HgeVendmt : ���񱺴����
//   ���      : ���񱺴���� ��ȸ
//   �ۼ���    : �� �� �� (2006.06.02)
//===============================================================================}
function HgaInsamt.ListgaInsamt6 : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;');
   SetFldValue(0,[sType1] );

   if (txGetF('GA_MILID_L1')) then begin        // Tuxedo Service Call  ga_milid_l1.pc
      GetFldVar('S_STRING1'  , sEmpno     );    // ���
      GetFldVar('S_STRING2'  , sEmpnm     );    // ����
      GetFldVar('S_STRING3'  , sDeptnm    );    // �ҼӺμ�
      GetFldVar('S_STRING4'  , sJikwe     );    // ����
      GetFldVar('S_STRING5'  , sEntdt     );    // �Ի���
      GetFldVar('S_STRING6'  , sRetdt     );    // �����
      GetFldVar('S_STRING7'  , sTelno     );    // ����ó
      GetFldVar('S_STRING8'  , sMilyuk    );    // ���ʿ��� (����)
      GetFldVar('S_STRING9'  , sMilbrnc   );    // ����
      GetFldVar('S_STRING10' , sMilkind   );    // ����
      GetFldVar('S_STRING11' , sMilno     );    // ����
      GetFldVar('S_STRING12' , sMilgrade  );    // ���
      GetFldVar('S_STRING13' , sMilsrt    );    // �����Ⱓ����
      GetFldVar('S_STRING14' , sMilend    );    // �����Ⱓ����
      GetFldVar('S_STRING15' , sMilyuknm  );    // �����̸�
      GetFldVar('S_STRING16' , sMilkindnm );    // �����̸�
      GetFldVar('S_STRING17' , sMilgradenm);    // ����̸�
      GetFldVar('S_STRING18' , sWkareanm  );    // �ٹ��μ�

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

{===============================================================================
   GAAWARDT ������Ȳ
   ������Ȳ ��ȸ (GaAwardt)
   �ۼ��� : ����
===============================================================================}
function HgaAwardt.ListGaAwardt() : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');
   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5, sType6] );

   if (txGetF('GA_AWARD_L2')) then             // Tuxedo Service Call ga_award_l2.pc
   begin
      GetFldVar('S_STRING1'  , sEmpnm    );    // ����
      GetFldVar('S_STRING2'  , sEmpno    );    // ���ι�ȣ
      GetFldVar('S_STRING3'  , sDeptnm   );    // �μ���
      GetFldVar('S_STRING4'  , sAwardate );    // ���ƹ߻���
      GetFldVar('S_STRING5'  , sAwarcdnm );    // �����ڵ��
      GetFldVar('S_STRING6'  , sTypecdnm );    // ���Ʊ����ڵ��
      GetFldVar('S_STRING7'  , sRemtxt   );    // ����
      GetFldVar('S_STRING8'  , sOrg      );    // ���Ʊ����
      GetFldVar('S_STRING9'  , sAwarder  );    // ������ 20061010
      GetFldVar('S_STRING10' , sWkareanm );    // �ٹ��μ� 20061029

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;
{===============================================================================
   GAAWARDT ¡����Ȳ
   ������Ȳ ��ȸ (GaPunsdt)
   �ۼ��� : ����
===============================================================================}
function HgaPunsdt.ListGaPunsdt() : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');
   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5, sType6] );

   if (txGetF('GA_PUNSD_L2')) then            // Tuxedo Service Call ga_punsd_l2.pc
   begin
      GetFldVar('S_STRING1'  , sEmpnm   );    // ����
      GetFldVar('S_STRING2'  , sEmpno   );    // ���ι�ȣ
      GetFldVar('S_STRING3'  , sDeptnm  );    // �ҼӺμ�
      GetFldVar('S_STRING4'  , sWkareanm);    // �ٹ��μ���  20061009
      GetFldVar('S_STRING5'  , sSdate   );    // ¡�������
      GetFldVar('S_STRING6'  , sEdate   );    // ¡��������
      GetFldVar('S_STRING7'  , sPuncdnm );    // ¡���
      GetFldVar('S_STRING8'  , sTypecd  );    // ¡�豸�и�
      GetFldVar('S_STRING9'  , sRemtxt  );    // ����
      GetFldVar('S_STRING10' , sOrg     );    // ¡������

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

{===============================================================================
   GAMASTER �ο���Ȳ
   �ο���Ȳ ��ȸ (GaMaster)
   �ۼ��� : ����
===============================================================================}
function HgaMaster.ListGaMaster() : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');
   SetFldValue32(0,[sType1, sType2, sType3, sType4, sType5, sType6, sType7, sType8, sType9, sType10]);

   if (txGetF32('GA_MASTE_L1')) then    // Tuxedo Service Call ga_maste_l1.pc
   begin
{
    Pro*C �� �ڵ�
          PUT (S_STRING1    , iy, sDeptnm    [iy]);     /* �μ���   */
          PUT (S_STRING2    , iy, sEmpno     [iy]);     /* ���ι�ȣ */
          PUT (S_STRING3    , iy, sEmpnm     [iy]);     /* ����     */
          PUT (S_STRING4    , iy, sEntdt     [iy]);     /* �Ի���   */
          PUT (S_STRING5    , iy, sRetdt     [iy]);     /* �����   */
          PUT (S_STRING6    , iy, sJikgunnm  [iy]);     /* ������   */
          PUT (S_STRING7    , iy, sJikjongnm [iy]);     /* ������   */
          PUT (S_STRING8    , iy, sJikwenm   [iy]);     /* ������   */
          PUT (S_STRING9    , iy, sJikcheknm [iy]);     /* ��å��   */
          PUT (S_STRING10   , iy, sHobong    [iy]);     /* ȣ��     */
          PUT (S_STRING11   , iy, sWkareanm  [iy]);     /* �ٹ����� */
}

      GetFldVar32('S_STRING1'   , sDeptnm    );    // �μ���   
      GetFldVar32('S_STRING2'   , sEmpno     );    // ���ι�ȣ 
      GetFldVar32('S_STRING3'   , sEmpnm     );    // ����     
      GetFldVar32('S_STRING4'   , sEntdt     );    // �Ի���   
      GetFldVar32('S_STRING5'   , sRetdt     );    // �����   
      GetFldVar32('S_STRING6'   , sJikgunnm  );    // ������   
      GetFldVar32('S_STRING7'   , sJikjongnm );    // ������   
      GetFldVar32('S_STRING8'   , sJikwenm   );    // ������   
      GetFldVar32('S_STRING9'   , sJikcheknm );    // ��å��   
      GetFldVar32('S_STRING10'  , sHobong    );    // ȣ��     
      GetFldVar32('S_STRING11'  , sWkareanm  );    // �ٹ�����
      GetFldVar32('S_STRING12'  , sResno     );    // �ٹ�����


      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

{===============================================================================
   CCDEPTCT �ҼӺμ� ��ȸ
   �ο���Ȳ ��ȸ (CcDeptct)
   �ۼ��� : ����
===============================================================================}
function HccDeptct.ListGaDeptct : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   sType1 := ccDeptct.sLocate;

   SetFldName('S_TYPE1');
   SetFldValue(0,[sLocate]);

   if (txGetF('GA_DEPTC_L3')) then // Tuxedo Service Call ga_deptc_l3.pc
   begin
      GetFldVar('S_STRING1'   , sDeptcd      );    // �μ��ڵ�
      GetFldVar('S_STRING2'   , sDeptnm      );    // �μ���

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

{===============================================================================
   CCDEPTCT �ٹ��μ� ��ȸ
   �ο���Ȳ ��ȸ (CcDeptct)
   �ۼ��� : ����
===============================================================================}
function HccDeptct.ListGaDeptct1 : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1');
   SetFldValue(0,[sDeptcd]);

   if (txGetF('GA_DEPTC_L14')) then                 // Tuxedo Service Call
   begin
      GetFldVar('S_STRING1'   , sWardYn      );    // ���� ����

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;


////////////////////////////////////////////////////////////////////////////////
//   GAWRKSDT ���»���
//   �μ��� ���� ��Ȳ ��ȸ
//   �ۼ��� : �� �� ��
////////////////////////////////////////////////////////////////////////////////
function HgaWrksdt.ListGaWrksdt2 : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue32(0,[sType1, sType2, sType3, sType4]);

   if (txGetF32('GA_WRKSD_L3')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sLocate    );    //  �����
      GetFldVar32('S_STRING2'   , sAppdate   );    //  �����ۼ���
      GetFldVar32('S_STRING3'   , sMkDeptcd  );    //  �μ��ڵ�
      GetFldVar32('S_STRING4'   , sMkDeptnm  );    //  �Էºμ���
      GetFldVar32('S_STRING5'   , sAppSeqno  );    //  �ۼ��Ϸù�ȣ
      GetFldVar32('S_STRING6'   , sMkEmpno   );    //  �����ȣ
      GetFldVar32('S_STRING7'   , sWknm      );    //  ���±���
      GetFldVar32('S_STRING8'   , sWksdate   );    //  ���½�������
      GetFldVar32('S_STRING9'   , sWkedate   );    //  ������������
      GetFldVar32('S_STRING10'  , sRemtxt    );    //  ���»���
      GetFldVar32('S_STRING11'  , sCnt       );    //  �����ϼ�
      GetFldVar32('S_STRING12'  , sWkcd      );    //  �����ڵ�
      GetFldVar32('S_STRING13'  , sAllconyn  );    //  ����Ϸ� ����
      GetFldVar32('S_STRING14'  , sChkyn     );    //  �λ�Ȯ�� ����
      GetFldVar32('S_STRING15'  , sDoctype   );    //  ��������(W, O, P)
      GetFldVar32('S_STRING16'  , sEmpno     );    //  �����ȣ
      GetFldVar32('S_STRING17'  , sEmpnm     );    //  ����
      GetFldVar32('S_STRING18'  , sRettxt    );    //  �ݼۻ���
      GetFldVar32('S_STRING19'  , sMkEmpnm   );    //  �ۼ��� ����
      //GetFldVar32('S_STRING19'  , sAppCnt    );    //  ���� �����

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//   GAWRKSDT ���»���
//   �μ��� ���� ��Ȳ ��ȸ
//   �ۼ��� : �� �� ��
////////////////////////////////////////////////////////////////////////////////
{function HgaWrksdt.ListGaWrksdt3 : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue32(0,[sType1, sType2, sType3, sType4]);

   if (txGetF32('GA_WRKSD_L4')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sEmpno       );    //  ���ι�ȣ
      GetFldVar32('S_STRING2'   , sEmpnm       );    //  ����
      GetFldVar32('S_STRING3'   , sWknm        );    //  �����ڵ��
      GetFldVar32('S_STRING4'   , sWksdate     );    //  ���½�����
      GetFldVar32('S_STRING5'   , sWkedate     );    //  ����������
      GetFldVar32('S_STRING6'   , sCnt         );    //  �����ϼ�
      GetFldVar32('S_STRING7'   , sRemtxt      );    //  ���»���
      GetFldVar32('S_STRING8'   , sChkyn       );    //  �λ�Ȯ�ο���
      GetFldVar32('S_STRING15'  , sEditnm      );    //  �����ڸ�
      GetFldVar32('S_STRING16'  , sIndeptcd    );    //  �Էºμ��ڵ�
      GetFldVar32('S_STRING17'  , sRefwkcd     );    //  �����ڵ�
      GetFldVar32('S_STRING18'  , sDeptnm      );    //  �Էºμ���

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;
end;
}
{===============================================================================
   GAWRKSDT ���»���
   �μ�������Ȳ ���� (GaWrksdt)
   �ۼ��� : ����
===============================================================================}
function HgaWrksdt.UpdGaWrksdt:Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
// ������ �����Ȳ ��ȸ
// �ۼ��� : �� �� ��
// �ۼ��� : 2004-11-11(������~~~~����, �k��..�Ф�)
////////////////////////////////////////////////////////////////////////////////
function HgaWrksdt.ListGaVacamt : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');
   SetFldValue32(0,[sType1, sType2, sType3,    sType4,       sType5]);
                 // �����  ����    �����ȣ   ������������  ���� �� ����

   if (txGetF32('GA_VACAM_L3')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sNewvcnt  );    //  �߻�����
      GetFldVar32('S_STRING2'   , sCnt      );    //  �����
      GetFldVar32('S_STRING3'   , sWksdate  );    //  ������
      GetFldVar32('S_STRING4'   , sWkedate  );    //  ������
      GetFldVar32('S_STRING5'   , sRemtxt   );    //  ������

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;


function HgaWrksdt.CloseYn : Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue32(0,[sLocate, sWkdate, sMkDeptcd, sDocType]);
                 // �����  ����    �����ȣ   ������������  ���� �� ����

   if (txGetF32('GA_MDUTY_L20')) then             // Tuxedo Service Call
   begin
      GetFldVar32('S_STRING1'   , sCnt      );    //  �����

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;

{===============================================================================
   GAWRKSDT ���»���
   �μ�������Ȳ �Է�(GaWrksdt)
   �ۼ��� : ����
===============================================================================}
function HgaWrksdt.InsGaWrksdt(iCnt : Integer) :Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'     +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'    +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;');


  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue( ii ,   [sLocate       [ii]     //  1. �����
                       ,  sAppDate      [ii]     //  2. �����ۼ���
                       ,  sMkdeptcd     [ii]     //  3. �ۼ��μ��ڵ�
                       ,  sRefwkcd      [ii]     //  4. �����ڵ�
                       ,  sAppseqno     [ii]     //  5. ������ȣ
                       ,  sMkempno      [ii]     //  6. �ۼ��ڻ��
                       ,  sDoctype      [ii]     //  7. ��������
                       ,  sEmpno        [ii]     //  8. �����ȣ
                       ,  sWksdate      [ii]     //  9. ���½�����
                       ,  sWkedate      [ii]     // 10. ����������
                       ,  sRemtxt       [ii]     // 11. ���»���
                       ,  sCnt          [ii]     // 12. �ϼ�
                       ,  sAllconyn     [ii]     // 13. �������籸�� (YNR)
                       ,  sChkyn        [ii]     // 14. �λ���籸�� (YNR)
                       ,  sGenconid     [ii]     // 15. �λ�μ�Ȯ���� ID
                       ,  sEditid       [ii]     // 16.
                       ,  sEditip       [ii]     // 17.
                       ,  sInsayn       [ii]     // 18.
                       ,  sAppyn        [ii]     // 19.
                       ,  sOldappdate   [ii]     // 20. ���������ۼ���
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
  txAlloc; //Pointer�� �޾ƿ�.
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
     SetFldValue( ii ,   [sLocate       [ii]     //  1. �����
                       ,  sAppDate      [ii]     //  2. �����ۼ���
                       ,  sMkdeptcd     [ii]     //  3. �ۼ��μ��ڵ�
                       ,  sAppseqno     [ii]     //  5. ������ȣ
                       ,  sMkempno      [ii]     //  6. �ۼ��ڻ��
                       ,  sDoctype      [ii]     //  7. ��������
                       ,  sWkyymm       [ii]     //  7. ��������
                       ,  sEmpno        [ii]     //  8. �����ȣ
                       ,  sSat1         [ii]     //  8. �����ȣ
                       ,  sSat2         [ii]     //  8. �����ȣ
                       ,  sSat3         [ii]     //  8. �����ȣ
                       ,  sSat4         [ii]     //  8. �����ȣ
                       ,  sSat5         [ii]     //  8. �����ȣ
                       ,  sMdate1       [ii]     //  8. �����ȣ
                       ,  sMdate2       [ii]     //  8. �����ȣ
                       ,  sMdate3       [ii]     //  8. �����ȣ
                       ,  sMdate4       [ii]     //  8. �����ȣ
                       ,  sMdate5       [ii]     //  8. �����ȣ
                       ,  sCode1        [ii]     //  8. �����ȣ
                       ,  sCode2        [ii]     //  8. �����ȣ
                       ,  sCode3        [ii]     //  8. �����ȣ
                       ,  sCode4        [ii]     //  8. �����ȣ
                       ,  sCode5        [ii]     //  8. �����ȣ
                       ,  sRemtxt       [ii]     // 11. ���»���
                       ,  sAllconyn     [ii]     // 13. �������籸�� (YNR)
                       ,  sChkyn        [ii]     // 14. �λ���籸�� (YNR)
                       ,  sGenconid     [ii]     // 15. �λ�μ�Ȯ���� ID
                       ,  sEditid       [ii]     // 16.
                       ,  sEditip       [ii]     // 17.
                       ,  sInsayn       [ii]     // 18.
                       ,  sAppyn        [ii]     // 19.
                       ,  sCnt          [ii]
                       ,  sSat6         [ii]     //  8. �����ȣ
                       ,  sSat7         [ii]     //  8. �����ȣ
                       ,  sSat8         [ii]     //  8. �����ȣ
                       ,  sSat9         [ii]     //  8. �����ȣ
                       ,  sSat10        [ii]     //  8. �����ȣ
                       ,  sMdate6       [ii]     //  8. �����ȣ
                       ,  sMdate7       [ii]     //  8. �����ȣ
                       ,  sMdate8       [ii]     //  8. �����ȣ
                       ,  sMdate9       [ii]     //  8. �����ȣ
                       ,  sMdate10      [ii]     //  8. �����ȣ
                       ,  sCode6        [ii]     //  8. �����ȣ
                       ,  sCode7        [ii]     //  8. �����ȣ
                       ,  sCode8        [ii]     //  8. �����ȣ
                       ,  sCode9        [ii]     //  8. �����ȣ
                       ,  sCode10       [ii]     //  8. �����ȣ
                       ,  sReason1      [ii]     //  8. �����ȣ
                       ,  sReason2      [ii]     //  8. �����ȣ
                       ,  sReason3      [ii]     //  8. �����ȣ
                       ,  sReason4      [ii]     //  8. �����ȣ
                       ,  sReason5      [ii]     //  8. �����ȣ
                       ,  sReason6      [ii]     //  8. �����ȣ
                       ,  sReason7      [ii]     //  8. �����ȣ
                       ,  sReason8      [ii]     //  8. �����ȣ
                       ,  sReason9      [ii]     //  8. �����ȣ
                       ,  sReason10     [ii]     //  8. �����ȣ

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
  txAlloc; //Pointer�� �޾ƿ�.
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
   GAWRKSDT �߷��ڵ�
   �λ�μ�������Ȳ ���� (GaWrksdt)
   �ۼ��� : ����
===============================================================================}
function HgaWrksdt.DelGaWrksdt(iCnt : integer) : Integer;
var
   i : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   GAWRKTCT ���±���
   ���»�����ȸ  (GAWRKTCT)
   �ۼ��� : ����
===============================================================================}
function HgaVacact.ListGaVacact(Code1, Code2: String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;');
   SetFldValue(0,[Code1, Code2] );

   if (txGetF('GA_COMCD_L9')) then       // Tuxedo Service Call
   begin
      GetFldVar('S_STRING1', sCode);     // ���±����ڵ�
      GetFldVar('S_STRING2', sCodeName); // ���±����ڵ��
      GetFldVar('S_STRING3', sFlag);     // ����/��ȣ ���� �߰� ���� 2005-12-23
      GetFldVar('S_STRING4', sWktime);     // ����/��ȣ ���� �߰� ���� 2005-12-23

      Result := GetRecordCnt('S_STRING1');
    
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// ���ä��
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaCreEmpNo.CreateEmpNo(sLocate,sLocate_Abbr,sJob_Type,sNo_Year:string):Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���

  SetFldValue(0, [sLocate     ,      // �����
                  sLocate_Abbr,      // ����屸�а�
                  sJob_Type   ,      // ä���۾�����
                  sNo_Year           // �⵵
                  ]);

                         
  if (txPutF('GA_INSAM_C1')) then               // ga_insam_c1.pc
  begin
    GetFldVar('S_STRING1', sMaxEmpNo);          // ���ι�ȣ (�ű�ä��)
    Result := 1 ;
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �������� ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaGuardt.SelGuardt():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_GURDT_L1')) then begin     //Tuxedo Service Call ga_gurdt_l1.pc
     GetFldVar('S_STRING1'   , sWrntNm1   ); //������ ����1
     GetFldVar('S_STRING2'   , sWrntRel1  ); //������ ���� 1
     GetFldVar('S_STRING3'   , sWrntJik1  ); //������ ���� 1
     GetFldVar('S_STRING4'   , sWrntSsn1  ); //������ �ֹε�� ��ȣ1
     GetFldVar('S_STRING5'   , sWrntAddr1 ); //������ �ּ� 1
     GetFldVar('S_STRING6'   , sWrntTax1  ); //������ �ҵ漼 1
     GetFldVar('S_STRING7'   , sWrntNm2   ); //������ ����2
     GetFldVar('S_STRING8'   , sWrntRel2  ); //������ ���� 2
     GetFldVar('S_STRING9'   , sWrntJik2  ); //������ ���� 2
     GetFldVar('S_STRING10'  , sWrntSsn2  ); //������ �ֹε�� ��ȣ2
     GetFldVar('S_STRING11'  , sWrntAddr2 ); //������ �ּ� 2
     GetFldVar('S_STRING12'  , sWrntTax2  ); //������ �ҵ漼 2
     GetFldVar('S_STRING13'  , sWrntInnm  ); //���������
     GetFldVar('S_STRING14'  , sWrntConm  ); //����ȸ���
     GetFldVar('S_STRING15'  , sWrntAmt   ); //�����
     GetFldVar('S_STRING16'  , sWrntFee   ); //�����
     GetFldVar('S_STRING17'  , sWrntInno  ); //�����ȣ
     GetFldVar('S_STRING18'  , sWrntcls   ); //��������(P�κ���, C��������)
     GetFldVar('S_STRING19'  , sWrntSdate ); //����������
     GetFldVar('S_STRING20'  , sWrntEdate ); //����������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaGuardt.SelGuardtAll(sLocate,                       // �����
                                sDeptCd,                       // �μ��ڵ�
                                sWrntCls,                      // ��������
                                sWrntSDate,                    // ����������
                                sWrntEDate,                    // ����������
                                sJejikGbn :String):Integer;    // ��������

begin

   Result := -1;
   txAlloc;    //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');      //service�Էº���
   SetFldValue(0,[sLocate, sDeptCd, sWrntCls, sWrntSDate, sWrntEDate, sJejikGbn]);

   if (txGetF('GA_GURDT_L2')) then begin     //Tuxedo Service Call ga_gurdt_l2.pc
     GetFldVar('S_STRING1'   , sWrntNm1   ); // ����
     GetFldVar('S_STRING2'   , sWrntRel1  ); // ���
     GetFldVar('S_STRING3'   , sWrntJik1  ); // �μ�
     GetFldVar('S_STRING4'   , sWrntJik3  ); // �ٹ��μ�  20061009
     GetFldVar('S_STRING5'   , sWrntSsn1  ); // ����������
     GetFldVar('S_STRING6'   , sWrntAddr1 ); // ����������
     GetFldVar('S_STRING7'   , sWrntTax1  ); // ��������
     GetFldVar('S_STRING8'   , sWrntNm2   ); // ������1 ����
     GetFldVar('S_STRING9'   , sWrntRel2  ); // ������2 ����
     GetFldVar('S_STRING10'  , sWrntJik2  ); // ���������
     GetFldVar('S_STRING11'  , sWrntSsn2  ); // ����ȸ���

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;
////////////////////////////////////////////////////////////////////////////////
// �������� ��� �� ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaGuardt.InUpdGuardt():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
// �������� ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.24
////////////////////////////////////////////////////////////////////////////////
function HgaGuardt.DelGuardt():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[sEmpno,sLocate,sWrntcls,sWrntSdate,sWrntEdate]);

   if (txPutF('GA_GURDT_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// �ǰ����� ���� ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.25
////////////////////////////////////////////////////////////////////////////////
function HgaHealth.SelHealth():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh] );

   if (txGetF('GA_HEALT_L1')) then begin     //Tuxedo Service Call ga_healt_l1.pc
     GetFldVar('S_STRING1'   , sGaHight     ); //����
     GetFldVar('S_STRING2'   , sWaWeight    ); //ü��
     GetFldVar('S_STRING3'   , sEyeLeft     ); //�÷�(��)
     GetFldVar('S_STRING4'   , sEyeRight    ); //�÷�(��)
     GetFldVar('S_STRING5'   , sGlsLeft     ); //�����÷�(��)
     GetFldVar('S_STRING6'   , sGlsRight    ); //�����÷�(��)
     GetFldVar('S_STRING7'   , sColorTyp    ); //����
     GetFldVar('S_STRING8'   , sBloodTy     ); //������
     GetFldVar('S_STRING9'   , sBloodPle    ); //����
     GetFldVar('S_STRING10'  , sEarLeft     ); //û��(��)
     GetFldVar('S_STRING11'  , sEarRight    ); //û��(��)
     GetFldVar('S_STRING12'  , sGaTooth     ); //ġ����ȯ
     GetFldVar('S_STRING13'  , sGaLiver     ); //��������
     GetFldVar('S_STRING14'  , sCholestrol  ); //�ݷ����׷�
     GetFldVar('S_STRING15'  , sGaCloseexm  ); //���а�������
     GetFldVar('S_STRING16'  , sGaxray      ); //��缱 ���
     GetFldVar('S_STRING17'  , sGaTotView   ); //���ռҰ�
     GetFldVar('S_STRING18'  , sGenDate     ); //��������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaWkrank �ٹ����� ��ȸ
   20060929
===============================================================================}
function HgaWkrank.SelWkrank():Integer; // �ٹ����� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh]);

   if (txGetF('GA_WRANK_L1')) then begin   // Tuxedo Service Call ga_wrank_l1.pc
     GetFldVar('S_STRING1'   , sWkyear   );     // ����
     GetFldVar('S_STRING2'   , sSeqno    );     // ����
     GetFldVar('S_STRING3'   , sDeptnm   );     // �ٹ��μ���
     GetFldVar('S_STRING4'   , sWkareanm );     // �ҼӺμ���
     GetFldVar('S_STRING5'   , sEmpno    );     // ���
     GetFldVar('S_STRING6'   , sEmpnm    );     // ����
     GetFldVar('S_STRING7'   , sNum      );     // ��������
     GetFldVar('S_STRING8'   , sNum1     );     // 1������
     GetFldVar('S_STRING9'   , sNum2     );     // 2������
     GetFldVar('S_STRING10'  , sNum3     );     // 3������
     GetFldVar('S_STRING11'  , sNum4     );     // 4������
     GetFldVar('S_STRING13'  , sNum5     );     // ������
     GetFldVar('S_STRING14'  , sNum6     );     // ������
     GetFldVar('S_STRING15'  , sNum7     );     // �������
     GetFldVar('S_STRING12'  , sAvg      );     // ���
     GetFldVar('S_STRING16'  , sGrade     );     // ���

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaWkrank 2013�� ���� ������ �ٹ����� ��ȸ
   20150331
===============================================================================}
function HgaWkrank.SelWkrank2014():Integer; // ������ �ٹ����� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh]);

   if (txGetF('GA_WRANK_L4')) then begin   // Tuxedo Service Call ga_wrank_l4.pc
     GetFldVar('S_STRING1'   , sWkyear   );     // ����
     GetFldVar('S_STRING2'   , sSeqno    );     // ����
     GetFldVar('S_STRING3'   , sDeptnm   );     // �ٹ��μ���
     GetFldVar('S_STRING4'   , sWkareanm );     // �ҼӺμ���
     GetFldVar('S_STRING5'   , sEmpno    );     // ���
     GetFldVar('S_STRING6'   , sEmpnm    );     // ����
     GetFldVar('S_STRING7'   , sNum      );     // ��������
     GetFldVar('S_STRING8'   , sNum1     );     // 1������
     GetFldVar('S_STRING9'   , sNum2     );     // 2������
     GetFldVar('S_STRING10'  , sNum3     );     // 3������
     GetFldVar('S_STRING11'  , sNum4     );     // 4������
     GetFldVar('S_STRING13'  , sNum5     );     // ������
     GetFldVar('S_STRING14'  , sNum6     );     // ������
     GetFldVar('S_STRING15'  , sNum7     );     // �������
     GetFldVar('S_STRING12'  , sAvg      );     // ���
     GetFldVar('S_STRING16'  , sGrade     );     // ���

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// �ǰ����� ���� ���
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.25
////////////////////////////////////////////////////////////////////////////////
function HgaHealth.InUpdHealth():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
// �ǰ����� ���� ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.25
////////////////////////////////////////////////////////////////////////////////
function HgaHealth.DelHealth():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[sEmpno,sLocate,sGenDate]);

   if (txPutF('GA_HEALT_D1')) then begin //Tuxedo Service Call  ga_healt_d1.pc
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// �ٹ����� ���� ����  20061003
////////////////////////////////////////////////////////////////////////////////
function HgaWkrank.DelWkrank():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[ssEmpno,sWkyear,sSeqno]);

   if (txPutF('GA_WRANK_D1')) then begin //Tuxedo Service Call  ga_wrank_d1.pc
      Result := 1;
      txFree;
   end;
end;

{===============================================================================
   HgaWkrank �ٹ� ���� �Է�
===============================================================================}
function HgaWkrank.InsWkrank():Integer;    // �ٹ� ���� �ű��Է�
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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


function HgaWkrank.InsExcelWkrank(iCnt:Integer) :Integer;    // �ٹ� ���� �ű��Է�
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

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
// ���κ� ������ ��Ȳ ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelVacamtDept():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'); //service�Էº���
   SetFldValue(0,[sLocate, sDeptCd, sCuryymm, ssEmpno, sDeptGubn] );

   //ga_vacam_l1.pc
   if (txPutF('GA_VACAM_L1')) then          //Tuxedo Service Call  ga_vacam_l1.pc
   begin
     GetFldVar('S_STRING1'   , sEmpno     );        // �����ȣ  //
     GetFldVar('S_STRING2'   , sEmpnm     );        // �����    //
     GetFldVar('S_STRING3'   , sResNo     );        // �ֹι�ȣ  //
     GetFldVar('S_STRING4'   , sEnterdate );        // �Ի�����  // �߰� ����ȭ JI 2006-01-03
     GetFldVar('S_STRING5'   , sRetdt     );        // �������  // �߰� ����ȭ JI 2006-01-03
     GetFldVar('S_STRING6'   , sCuryymm   );        // ������  //
     GetFldVar('S_STRING7'   , sNewVCnt   );        // �űԿ���  //
     GetFldVar('S_STRING8'   , sUseVCnt   );        // ��뿬��  //
     GetFldVar('S_STRING9'   , sRemVCnt   );        // �ܿ�����  //
     GetFldVar('S_STRING10'  , sTsamt     );

     GetFldVar('S_STRING11'  , sDeptnm    );        // 2006-09-11 �߰� 

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
// ���κ� ������ ��Ȳ ��ȸ(�� ������)
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.28
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelVacamtAll():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
   SetFldValue(0,[sLocate,sCuryymm,sCuryymm_Old] );

   //ga_vacam_l2.pc
   if (txPutF('GA_VACAM_L2')) then begin //Tuxedo Service Call  ga_vacam_l2.pc
     GetFldVar('S_STRING1'   , sEmpno     );        // �����ȣ
     GetFldVar('S_STRING2'   , sEmpnm     );        // �����
     GetFldVar('S_STRING3'   , sResno     );        // �ֹι�ȣ
     GetFldVar('S_STRING4'   , sEnterDate );        // �Ի�����
     GetFldVar('S_STRING5'   , sRetDt     );        // �������  �߰� ����ȭ JI 2006-01-03
     GetFldVar('S_STRING6'   , sCuryymm   );        // ����⵵
     GetFldVar('S_STRING7'   , sTotvcnt   );        // ��������
     GetFldVar('S_STRING8'   , sNewvcnt   );        // �űԿ���
     GetFldVar('S_STRING9'   , sUsevcnt   );        // ��뿬��
     GetFldVar('S_STRING10'  , sRemvcnt   );        // �ܿ�����
     GetFldVar('S_STRING11'  , sTotmcnt   );        // ��������
     GetFldVar('S_STRING12'  , sNewmcnt   );        // �űԿ���
     GetFldVar('S_STRING13'  , sUsemcnt   );        // ������
     GetFldVar('S_STRING14'  , sRemmcnt   );        // �ܿ�����
     GetFldVar('S_STRING15'  , sNewwcnt   );        // �űԻ���
     GetFldVar('S_STRING16'  , sUsewcnt   );        // �ܿ�����
     GetFldVar('S_STRING17'  , sDeptnm    );        // �μ���
     GetFldVar('S_STRING18'  , sVaCnt     );        // �μ���     

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// ���κ� ������ ��Ȳ ��� �� ����
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.InUpdVacamt(iCnt : Integer):Integer;
begin
  Result := 0;
end;

////////////////////////////////////////////////////////////////////////////////
// ���κ� ������ ��Ȳ ����(��ü���)
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.InUpdVacamtAll(iCnt : Integer):Integer;
var
  iLoop : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
// ���κ� ������ ���� ��Ȳ
// �ۼ��� : 2006.09.13
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelYearUseVCnt: Integer;
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

     SetFldValue(0,[ssLocate, ssYear, ssEmpno, ssDeptcd]);

       // ShowMessage(ssLocate+'/'+ssYear+'/'+ssEmpno+'/'+ssDeptcd);

    if (txPutF('GA_VACAM_L7')) then              // ga_vacam_l7.pc
    begin //Tuxedo Service Call
        GetFldVar('S_STRING1', sEmpno);          // ���
        GetFldVar('S_STRING2', sEmpnm);          // ����
        GetFldVar('S_STRING3', sDeptnm);         // �μ���
        GetFldVar('S_STRING4', sNewVCnt);        // �߻�����
        GetFldVar('S_STRING5', sUseVCnt);        // ��뿬��
        GetFldVar('S_STRING6', sUsePre);         // �����
        GetFldVar('S_STRING7', sPreYearNewVCnt); // ����߻�����
        GetFldVar('S_STRING8', sPreYearUseVCnt); // �����뿬��
        GetFldVar('S_STRING9', sAccloc); // �����뿬��
        GetFldVar('S_STRING10', sWkareacd); // �����뿬��
        GetFldVar('S_STRING11', sDeptcd  ); // �����뿬��
        GetFldVar('S_STRING12', sDeptnm1 ); // �����뿬��




        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;

////////////////////////////////////////////////////////////////////////////////
// ���� ��뿬�� ��ȸ
// �ۼ��� : 2021.05.13
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelYearUseVCnt2: Integer;
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');

     SetFldValue(0,[ssLocate, sCuryymm, sgbn]);

    if (txPutF('GA_VACAM_L10')) then              // ga_vacam_l10.pc
    begin //Tuxedo Service Call
        GetFldVar('S_STRING1', sEmpno);           // ���
        GetFldVar('S_STRING2', sEmpnm);           // ����
        GetFldVar('S_STRING3', sDeptnm);          // �μ���
        GetFldVar('S_STRING4', sWkareanm);        // �ٹ��μ�
        GetFldVar('S_STRING5', sNewvcnt);         // �߻�����
        GetFldVar('S_STRING6', sUsevcnt);         // ��뿬��
        GetFldVar('S_STRING7', sRemvcnt);         // ��������    //20210617

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;

////////////////////////////////////////////////////////////////////////////////
// ���� ��뿬�� ��ȸ
// �ۼ��� : 2021.06.24
////////////////////////////////////////////////////////////////////////////////
function HgaVacamt.SelYearUseVCnt3: Integer;
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');

     SetFldValue(0,[ssLocate, sCuryymm, sgbn]);

    if (txPutF('GA_VACAM_L11')) then              // ga_vacam_l11.pc
    begin //Tuxedo Service Call
        GetFldVar('S_STRING1', sEmpno);           // ���
        GetFldVar('S_STRING2', sEmpnm);           // ����
        GetFldVar('S_STRING3', sDeptnm);          // �μ���
        GetFldVar('S_STRING4', sWkareanm);        // �ٹ��μ�
        GetFldVar('S_STRING5', sNewvcnt);         // �߻�����
        GetFldVar('S_STRING6', sUsevcnt);         // ��뿬��
        GetFldVar('S_STRING7', sRemvcnt);         // ��������    //20210617

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;
end;


////////////////////////////////////////////////////////////////////////////////
// ���κ� ������ ��Ȳ ����(��ü���)
// �ۼ��� : ���¿�
// �ۼ��� : 2004.07.27
////////////////////////////////////////////////////////////////////////////////
function HgaSalary.GetSalary():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');  // S_TYPE9 20061009 �߰�

   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5,
                  sType6, sType7, sType8, sType9, sGubn]);



   if (txPutF('GA_SALAR_L1')) then begin //Tuxedo Service Call  ga_salar_l1.pc
     GetFldVar('S_STRING1'   , sEmpnm     );   // ����
     GetFldVar('S_STRING2'   , sEmpno     );   // �����ȣ
     GetFldVar('S_STRING3'   , sDeptNm    );   // �ҼӺμ�
     GetFldVar('S_STRING4'   , sJikGun    );   // ����
     GetFldVar('S_STRING5'   , sJikJong   );   // ����
     GetFldVar('S_STRING6'   , sJikGup    );   // ����
     GetFldVar('S_STRING7'   , sConSDate  );   // ��������
     GetFldVar('S_STRING8'   , sConEDate  );   // ��ุ����
     GetFldVar('S_STRING9'   , sMonthPay  );   // �����޾�
     GetFldVar('S_STRING10'  , sConMoney  );   // ����

     Result := GetRecordCnt('S_STRING1');
     txFree;

   end;
end;


function HgaSalary.GetSalary2():Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   
   SetFldName('S_TYPE1');  // S_TYPE9 20061009 �߰�

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName(''); //service�Էº���
   SetFldValue(0,[]);

   if (txGetF('GA_ASSOC_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sSocscd );    // ��ȣȸ�ڵ�
     GetFldVar('S_STRING2' , sSocsnm );    // ��ȣȸ��
//     GetFldVar('S_STRING3' , sGbn    );    // ����
     GetFldVar('S_STRING4' , sSort   );    // ��ȸ����
     GetFldVar('S_STRING5' , sAmt    );    // ��ȣȸ��
     GetFldVar('S_STRING6' , sYn     );    // ��뿩��
     GetFldVar('S_STRING7' , sDeldate);    // �������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaAssoct.InsUpAssociation : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
   SetFldValue(0,[ssLocate, ssEmpno, ssSocscd]);

   if (txGetF('GA_SOCID_L1')) then begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'  , sEmpno      );    // �����ȣ
     GetFldVar('S_STRING2'  , sEmpnm      );    // �����
     GetFldVar('S_STRING3'  , sDeptcd     );    // �μ��ڵ�
     GetFldVar('S_STRING4'  , sDeptnm     );    // �μ���
     GetFldVar('S_STRING5'  , sSocscd     );    // ��ȣȸ�ڵ�
     GetFldVar('S_STRING6'  , sSocsnm     );    // ��ȣȸ��
     GetFldVar('S_STRING7'  , sJikcheknm  );    // ��å��
     GetFldVar('S_STRING8'  , sDt         );    // ������
     GetFldVar('S_STRING9'  , sEnddt      );    // Ż����
     GetFldVar('S_STRING10' , sAmt        );    // ��ȣȸ��
     GetFldVar('S_STRING11' , sRemtxt     );    // ���

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HGaSocidt.SaveGaSocidt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[sType1, sType2, sType3]);

   if (txGetF('GA_DPOVT_L1')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sEmpno     );    //�����ȣ
     GetFldVar('S_STRING2' , sEmpnm     );    //�����
     GetFldVar('S_STRING3' , sDeptCD    );    //�μ��ڵ�(���κμ��ڵ�)
     GetFldVar('S_STRING4' , sDeptnm    );    //�μ���
     GetFldVar('S_STRING5' , sDeptGBN   );    //�μ�����(0 : �Ҽ�, 1: �ٹ��μ�)
     GetFldVar('S_STRING6' , sRQDegreeCD);    //���(1: ������, 2 : ������)
     GetFldVar('S_STRING7' , sRQDegreeNM);    //���(1: ������, 2 : ������)
     GetFldVar('S_STRING8' , sRemtxt    );    //���

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HgaConfirm.InsUpConfirmList : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
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
// �Ϻ� Ư�� ��û ��ȸ
// �ۼ��� : 2005.03.10
////////////////////////////////////////////////////////////////////////////////
function HgaOverddt.ListOveddt   : Integer;
begin
  Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
   SetFldValue(0,[ssLocate, ssAppDate, ssMkdeptcd, ssAppSeqno, ssMkEmpno]);

   if (txGetF('GA_OVEDT_L4')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' ,  sLocate    );    // ����� �ڵ�
     GetFldVar('S_STRING2' ,  sAppdate   );    // �ۼ�����
     GetFldVar('S_STRING3' ,  sMkdeptcd  );    // �ۼ��μ�
     GetFldVar('S_STRING4' ,  sAppseqno  );    // �ۼ� �Ϸù�ȣ
     GetFldVar('S_STRING5' ,  sMkempno   );    // �ۼ��� ���
     GetFldVar('S_STRING6' ,  sDoctype   );    // ��������
     GetFldVar('S_STRING7' ,  sEmpno     );    // �����ȣ
     GetFldVar('S_STRING8' ,  sWkdate    );    // Ư������
     GetFldVar('S_STRING9' ,  sWkstime   );    // Ư�� ���۽ð�
     GetFldVar('S_STRING10',  sWketime   );    // Ư�� ����ð�
     GetFldVar('S_STRING11',  sWeekcnt   );    // ����
     GetFldVar('S_STRING12',  sCnt       );    // Ư�ٽð���
     GetFldVar('S_STRING13',  sCntovr    );    // �ð���
     GetFldVar('S_STRING14',  sCntnig    );    // �ɾ�
     GetFldVar('S_STRING15',  sRemtxt    );    // Ư�ٻ���
     GetFldVar('S_STRING16',  sRettxt    );    // �ݼۻ���
     GetFldVar('S_STRING17',  sAllconyn  );    // ����Ϸ� ����
     GetFldVar('S_STRING18',  sChkyn     );    // �λ�Ȯ�� ����
     GetFldVar('S_STRING19',  sGenconid  );    // �λ� Ȯ����
     GetFldVar('S_STRING20',  sMkEmpnm   );    // �ۼ��� ����
     GetFldVar('S_STRING21',  sEmpnm     );    // ��� ����
     GetFldVar('S_STRING22',  sJikwe     );    // ����
     GetFldVar('S_STRING23',  sMkDeptnm  );    // �ۼ��μ���  ���� �߰� 2005-11-05

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// �� Ư�ٽ�û ����
// �ۼ��� : 2005.03.13
// ������ : 2005.10.31 [GAD006F1] �λ�μ� �Ϻ�Ư�� Ȯ�� ���� ����
////////////////////////////////////////////////////////////////////////////////
function HgaOverddt.SaveOvedt(iCnt :Integer) : Integer;
var
  i : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;');

  if iCnt = 0 then // [GAD006F1] �λ�μ� �Ϻ�Ư�� Ȯ��
  begin
      SetFldValue(0 ,[sLocate[0]  , sAppDate[0], sMkDeptcd[0], sAppSeqno[0], sMkEmpno[0],
                      sDocType[0] , sEmpno[0]  , sWkdate[0]  , sWkstime[0] , sWketime[0],
                      sWeekCnt[0] , sCnt[0]    , sCntOvr[0]  , sCntNig[0]  , sRemtxt[0] ,
                      sAllconyn[0], sChkyn[0]  , sGenconid[0], sRettxt[0]  , sEditid[0] ,
                      sEditip[0]  , sInsayn[0] , sAppyn[0]   , 'U' ]  );
  end
  else             // [GAD003F1] �λ� Ư�� ��û
  begin
    for i := 0 to iCnt - 1 do  // iCnt = 0 �϶� For �� ���� ����.
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
// �Ϻ� Ư�� ��û ��ȸ (�ߺ�Check)
// �ۼ��� : 2005.03.10
////////////////////////////////////////////////////////////////////////////////
function HgaOverddt.ListOveddt1  : Integer;
begin
  Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;'); //service�Էº���
   SetFldValue(0,[sLocate, sDoctype, sEmpno, sWkdate, sWkstime, sWketime, sFlag]);

   if (txGetF('GA_OVEDT_L5')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' ,  ssEmpno    );    // ����� �ڵ�

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

{
function HgaOverddt.SelOverddT2   : Integer;
begin
  Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'); //service�Էº���
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
  txAlloc; //Pointer�� �޾ƿ�.

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
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.

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
// ���缱 ���� ��ȸ
// 2004.10.13 by ���¿�
////////////////////////////////////////////////////////////////////////////////
function HgaSignlt.SelSignlt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd]);

  if (txGetF('GA_SIGNL_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate        );    // �����
    GetFldVar('S_STRING2' ,  sMkDept        );    // �ۼ��μ�
    GetFldVar('S_STRING3' ,  sMkYYMM        );    // �ۼ����
    GetFldVar('S_STRING4' ,  sRemTxt        );    // ���
    GetFldVar('S_STRING5' ,  sJikwenm1      );    // �ۼ��� ����
    GetFldVar('S_STRING6' ,  sEmpno1        );    // �ۼ��� ���
    GetFldVar('S_STRING7' ,  sJikwenm2      );    // ����1 ����
    GetFldVar('S_STRING8' ,  sEmpno2        );    // ����1 ���
    GetFldVar('S_STRING9' ,  sJikwenm3      );    // ����2 ����
    GetFldVar('S_STRING10',  sEmpno3        );    // ����2 ���
    GetFldVar('S_STRING11',  sJikwe1        );    // �ۼ��� ����
    GetFldVar('S_STRING12',  sJikwe2        );    // ������ ����1
    GetFldVar('S_STRING13',  sJikwe3        );    // ������ ����2
    GetFldVar('S_STRING14',  sChkyn         );    // �λ�Ȯ�ο���(Y/N)
    GetFldVar('S_STRING15',  sInsaJikwenm1  );    // �λ���������1
    GetFldVar('S_STRING16',  sInsaEmpno1    );    // �λ����ڻ��1
    GetFldVar('S_STRING17',  sInsaJikwenm2  );    // �λ���������2
    GetFldVar('S_STRING18',  sInsaEmpno2    );    // �λ����ڻ��2
    GetFldVar('S_STRING19',  sInsaJikwenm3  );    // �λ���������3
    GetFldVar('S_STRING20',  sInsaEmpno3    );    // �λ����ڻ��3
    GetFldVar('S_STRING21',  sInsaJikwe2    );    // �λ���������2
    GetFldVar('S_STRING22',  sInsaJikwe2    );    // �λ���������2
    GetFldVar('S_STRING23',  sInsaJikwe2    );    // �λ���������2
    GetFldVar('S_STRING24',  sReturnTx      );    // �ݼۻ���
    GetFldVar('S_STRING25',  sEditid        );    // ������ID
    GetFldVar('S_STRING26',  sEditip        );    // ������IP

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// ���缱 ���� ����
// 2004.10.15 by ���¿�
////////////////////////////////////////////////////////////////////////////////
function HgaSignlt.SaveSignlt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
// ���� �ٹ� ������ ��������
// 2004.10.15 by ���¿�
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SelMDutyt : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);
  //ga_mduty_l1.pc
  if (txGetF('GA_MDUTY_L1')) then //ga_mduty_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // �����
    GetFldVar('S_STRING2' ,  sDeptcd   );    // �ҼӺμ�
    GetFldVar('S_STRING3' ,  sEmpno    );    // �����ȣ
    GetFldVar('S_STRING4' ,  sEmpnm    );    // �����
    GetFldVar('S_STRING5' ,  sMkyymm   );    // �ۼ����
    GetFldVar('S_STRING6' ,  sCloseyn  );    // ��������
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 �� �ٹ�
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 �� �ٹ�
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 �� �ٹ�
    GetFldVar('S_STRING10',  sDuty04   );    // 04 �� �ٹ�

    GetFldVar('S_STRING11',  sDuty05   );    // 05 �� �ٹ�
    GetFldVar('S_STRING12',  sDuty06   );    // 06 �� �ٹ�
    GetFldVar('S_STRING13',  sDuty07   );    // 07 �� �ٹ�
    GetFldVar('S_STRING14',  sDuty08   );    // 08 �� �ٹ�
    GetFldVar('S_STRING15',  sDuty09   );    // 09 �� �ٹ�
    GetFldVar('S_STRING16',  sDuty10   );    // 10 �� �ٹ�
    GetFldVar('S_STRING17',  sDuty11   );    // 11 �� �ٹ�
    GetFldVar('S_STRING18',  sDuty12   );    // 12 �� �ٹ�
    GetFldVar('S_STRING19',  sDuty13   );    // 13 �� �ٹ�
    GetFldVar('S_STRING20',  sDuty14   );    // 14 �� �ٹ�

    GetFldVar('S_STRING21',  sDuty15   );    // 15 �� �ٹ�
    GetFldVar('S_STRING22',  sDuty16   );    // 16 �� �ٹ�
    GetFldVar('S_STRING23',  sDuty17   );    // 17 �� �ٹ�
    GetFldVar('S_STRING24',  sDuty18   );    // 18 �� �ٹ�
    GetFldVar('S_STRING25',  sDuty19   );    // 19 �� �ٹ�
    GetFldVar('S_STRING26',  sDuty20   );    // 20 �� �ٹ�
    GetFldVar('S_STRING27',  sDuty21   );    // 21 �� �ٹ�
    GetFldVar('S_STRING28',  sDuty22   );    // 22 �� �ٹ�
    GetFldVar('S_STRING29',  sDuty23   );    // 23 �� �ٹ�
    GetFldVar('S_STRING30',  sDuty24   );    // 24 �� �ٹ�

    GetFldVar('S_STRING31',  sDuty25   );    // 25 �� �ٹ�
    GetFldVar('S_STRING32',  sDuty26   );    // 26 �� �ٹ�
    GetFldVar('S_STRING33',  sDuty27   );    // 27 �� �ٹ�
    GetFldVar('S_STRING34',  sDuty28   );    // 28 �� �ٹ�
    GetFldVar('S_STRING35',  sDuty29   );    // 29 �� �ٹ�
    GetFldVar('S_STRING36',  sDuty30   );    // 30 �� �ٹ�
    GetFldVar('S_STRING37',  sDuty31   );    // 31 �� �ٹ�
    GetFldVar('S_STRING38',  sJikwenm  );    // ������
    GetFldVar('S_STRING39',  sTotvcnt  );    // �ѿ���
    GetFldVar('S_STRING40',  sUsevcnt  );    // ��뿬��

    GetFldVar('S_STRING41',  sAllconyn );    // ����Ϸ� ����
    GetFldVar('S_STRING42',  sAppdate  );    // �ۼ�����
    GetFldVar('S_STRING43',  sMkdeptcd );    // �ۼ��μ�
    GetFldVar('S_STRING44',  sMkempno  );    // �ۼ��ڻ��
    GetFldVar('S_STRING45',  sAppseqno );    // �����Ϸù�ȣ
    GetFldVar('S_STRING46',  sMeddept  );    // ��ȣ�μ��ڵ�       �߰� ���� 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // �ٹ��μ��ڵ�
    GetFldVar('S_STRING48',  sUserid   );    // ��ȣ�μ����userid
    GetFldVar('S_STRING49',  sChkyn    );    // �λ�μ� ����Ϸ� ����
    GetFldVar('S_STRING50',  sDocstep  );    // �����ܰ�
    GetFldVar('S_STRING51',  sVTM      );    // �λ�μ� ����Ϸ� ����
    GetFldVar('S_STRING52',  sOVM      );    // �����ܰ�
    GetFldVar('S_STRING53',  sOFM      );    // �����ܰ�



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// ���� ���� ���� ����
// 2005.01.14 by ���¿�
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SelMDutyt2 : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer�� �޾ƿ�.


  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9'); //service�Էº���   //2006-09-26 ����
  SetFldValue32(0,[ssLocate, ssDeptcd, ssSDate, ssEDate, ssEmpno, ssPaygbn, ssGubun, ssMainDept,ssUserid ]);         //2006-09-26 ����

  //ga_mduty_l2.pc
  if (txGetF32('GA_MDUTY_L2')) then
  begin     //Tuxedo Service Call
    GetFldVar32('S_STRING1'  , sDuty01    );   // 01 �����ȣ
    GetFldVar32('S_STRING2'  , sDuty02    );   // 02 �����
    GetFldVar32('S_STRING3'  , sDuty03    );   // 03 ����
    GetFldVar32('S_STRING4'  , sDuty04    );   // 04 ������
    GetFldVar32('S_STRING5'  , sDuty05    );   // 05 �Ի���
    GetFldVar32('S_STRING6'  , sDuty06    );   // 06 ȣ��
    GetFldVar32('S_STRING7'  , sDuty07    );   // 07 �ٹ��ڵ�
    GetFldVar32('S_STRING8'  , sDuty08    );   // 08 ����
    GetFldVar32('S_STRING9'  , sDuty09    );   // 09 �ٹ��ð���
    GetFldVar32('S_STRING10' , sDuty10    );   // 10 �ٹ��ɾ�
    GetFldVar32('S_STRING11' , sDuty11    );   // 11 Ư��
  //GetFldVar('S_STRING12' , sDuty12    );   // 12 �ð���
  //GetFldVar('S_STRING13' , sDuty13    );   // 13 �ɾ�
    GetFldVar32('S_STRING12' , sDuty14    );   // 14 ����
    GetFldVar32('S_STRING13' , sDuty15    );   // 15 ����
    // 2006-08-30 �߰�
    GetFldVar32('S_STRING14' , sDuty16    );   // 16 �μ��ڵ�
    GetFldVar32('S_STRING15' , sDuty17    );   // 17 �μ���
    // 2006-12-21 �߰� ������
    GetFldVar32('S_STRING16' , sVccnt    );   // 16 �ް�
    GetFldVar32('S_STRING17' , sD4cnt    );   // 17 ����4
    GetFldVar32('S_STRING18' , sD8cnt    );   // 18 ����8
    GetFldVar32('S_STRING19' , sN1CNT    );   // 17 ����4
    GetFldVar32('S_STRING20' , sFACNT    );   // 18 ����8
    GetFldVar32('S_STRING21' , sFA1CNT    );   // 18 ����8
    GetFldVar32('S_STRING22' , sFA2CNT    );   // 18 ����8
    GetFldVar32('S_STRING23' , sFA3CNT    );   // 18 ����8
    GetFldVar32('S_STRING24' , sConctype  );   // 18 ����8
    GetFldVar32('S_STRING25' , sCntSat  );   // 18 ����8
    GetFldVar32('S_STRING26' , sWardYn  );   // 18 ����8

    GetFldVar32('S_STRING27' , sJIKCHEK  );   // 18 ����8

    GetFldVar32('S_STRING28' , sFA0CNT  );   // 18 ����8
    GetFldVar32('S_STRING29' , sFA4CNT  );   // 18 ����8
    GetFldVar32('S_STRING30' , sD12CNT  );   // 18 ����8
    GetFldVar32('S_STRING31' , sConfirmDt  );   // 18 ����8
   { GetFldVar32('S_STRING32' , sNight  );   // 32����Ʈ����}
    GetFldVar32('S_STRING32' , sDeptgbn   );// 32 ��ȣ,��������
    GetFldVar32('S_STRING33' , sFACILCNT   );// 33 �ü����� �߰� 20171017 ������


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.SelMDutyt5 : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer�� �޾ƿ�.

  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10'); //service�Էº���   //2006-09-26 ����
  SetFldValue32(0,[ssLocate, ssDeptcd, ssSDate, ssEDate, ssEmpno, ssPaygbn, ssGubun, ssMainDept,ssUserid, ssGhgb ]);    //2006-09-26 ����
  //ga_mduty_l18.pc
  if (txGetF32('GA_MDUTY_L18')) then
  begin     //Tuxedo Service Call                                      

    GetFldVar32('S_STRING1'  , sDuty01    );   // 01 �����ȣ
    GetFldVar32('S_STRING2'  , sDuty02    );   // 02 �����
    GetFldVar32('S_STRING3'  , sDuty03    );   // 03 ����
    GetFldVar32('S_STRING4'  , sDuty04    );   // 04 ������
    GetFldVar32('S_STRING5'  , sDuty05    );   // 05 �Ի���
    GetFldVar32('S_STRING6'  , sDuty06    );   // 06 ȣ��
    GetFldVar32('S_STRING7'  , sDuty07    );   // 07 �ٹ��ڵ�
    GetFldVar32('S_STRING8'  , sDuty08    );   // 08 ����
    GetFldVar32('S_STRING9'  , sDuty09    );   // 09 �ٹ��ð���
    GetFldVar32('S_STRING10' , sDuty10    );   // 10 �ٹ��ɾ�
    GetFldVar32('S_STRING11' , sDuty11    );   // 11 Ư��
  //GetFldVar('S_STRING12' , sDuty12    );   // 12 �ð���
  //GetFldVar('S_STRING13' , sDuty13    );   // 13 �ɾ�
    GetFldVar32('S_STRING12' , sDuty14    );   // 14 ����
    GetFldVar32('S_STRING13' , sDuty15    );   // 15 ����
    // 2006-08-30 �߰�
    GetFldVar32('S_STRING14' , sDuty16    );   // 16 �μ��ڵ�
    GetFldVar32('S_STRING15' , sDuty17    );   // 17 �μ���
    // 2006-12-21 �߰� ������
    GetFldVar32('S_STRING16' , sVccnt    );   // 16 �ް�
    GetFldVar32('S_STRING17' , sD4cnt    );   // 17 ����4
    GetFldVar32('S_STRING18' , sD8cnt    );   // 18 ����8
    GetFldVar32('S_STRING19' , sN1CNT    );   // 17 ����4
    GetFldVar32('S_STRING20' , sFACNT    );   // 18 ����8
    GetFldVar32('S_STRING21' , sFA1CNT    );   // 18 ����8
    GetFldVar32('S_STRING22' , sFA2CNT    );   // 18 ����8
    GetFldVar32('S_STRING23' , sFA3CNT    );   // 18 ����8
    GetFldVar32('S_STRING24' , sConctype  );   // 18 ����8
    GetFldVar32('S_STRING25' , sCntSat  );   // 18 ����8
    GetFldVar32('S_STRING26' , sConfirmYn  );   // 18 ����8

    GetFldVar32('S_STRING27' , sWardYn    );   // 18 ����8
    GetFldVar32('S_STRING28' , sJikChek  );   // 18 ����8
    GetFldVar32('S_STRING29' , sFA0CNT  );   // 18 ����8
    GetFldVar32('S_STRING30' , sFA4CNT  );   // 18 ����8
    GetFldVar32('S_STRING31' , sD12CNT  );   // 18 ����8
   { GetFldVar32('S_STRING32' , sNight  );   // 32 ����Ʈ�ٹ�    161120 �������߰�}
    GetFldVar32('S_STRING32' , sDeptgbn  );   // 32 ��ȣ, ���� ���� ��
    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// ���� �ٹ� ������ ���� ��ȸ (�ϴ���) �߰� ���� 2006-01-13
// 2006.01.13 by ����
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SelMDutyt3 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;'); //service�Էº���
  SetFldValue(0,[ssLocate, ssEmpno, ssYYMM, ssAppYN, ssInsaYN, ssDoctype, ssANFlag]);

  if (txGetF('GA_MDUTY_L9')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sCnt    ) ;
    Result := GetRecordCnt('S_STRING1');;   // �����ڵ� ��

    txFree;
  end;
end;




////////////////////////////////////////////////////////////////////////////////
// ���� �ٹ� ������ ��������
// 2005.03.22 �� �ٹ������� ��������(���缱)
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.ListMDutyt5 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');
  SetFldValue(0, [ssLocate,        // �����
                  ssYYMM,          // �ٹ����
                  ssDoctype,       // ��������
                  ssAppseqno,      // �ۼ��Ϸù�ȣ(������ȣ)
                  ssMeddept        // ��ȣ�� �ٹ����
                  ]);


  //ga_mduty_l5.pc
  if (txGetF('GA_MDUTY_L5')) then   // ga_mduty_l5.pc
  begin     //Tuxedo Service Call

    GetFldVar('S_STRING1' ,  sLocate   );    // �����
    GetFldVar('S_STRING2' ,  sDeptcd   );    // �ҼӺμ�
    GetFldVar('S_STRING3' ,  sEmpno    );    // �����ȣ
    GetFldVar('S_STRING4' ,  sEmpnm    );    // �����
    GetFldVar('S_STRING5' ,  sMkyymm   );    // �ۼ����
    GetFldVar('S_STRING6' ,  sCloseyn  );    // ��������
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 �� �ٹ�
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 �� �ٹ�
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 �� �ٹ�
    GetFldVar('S_STRING10',  sDuty04   );    // 04 �� �ٹ�

    GetFldVar('S_STRING11',  sDuty05   );    // 05 �� �ٹ�
    GetFldVar('S_STRING12',  sDuty06   );    // 06 �� �ٹ�
    GetFldVar('S_STRING13',  sDuty07   );    // 07 �� �ٹ�
    GetFldVar('S_STRING14',  sDuty08   );    // 08 �� �ٹ�
    GetFldVar('S_STRING15',  sDuty09   );    // 09 �� �ٹ�
    GetFldVar('S_STRING16',  sDuty10   );    // 10 �� �ٹ�
    GetFldVar('S_STRING17',  sDuty11   );    // 11 �� �ٹ�
    GetFldVar('S_STRING18',  sDuty12   );    // 12 �� �ٹ�
    GetFldVar('S_STRING19',  sDuty13   );    // 13 �� �ٹ�
    GetFldVar('S_STRING20',  sDuty14   );    // 14 �� �ٹ�

    GetFldVar('S_STRING21',  sDuty15   );    // 15 �� �ٹ�
    GetFldVar('S_STRING22',  sDuty16   );    // 16 �� �ٹ�
    GetFldVar('S_STRING23',  sDuty17   );    // 17 �� �ٹ�
    GetFldVar('S_STRING24',  sDuty18   );    // 18 �� �ٹ�
    GetFldVar('S_STRING25',  sDuty19   );    // 19 �� �ٹ�
    GetFldVar('S_STRING26',  sDuty20   );    // 20 �� �ٹ�
    GetFldVar('S_STRING27',  sDuty21   );    // 21 �� �ٹ�
    GetFldVar('S_STRING28',  sDuty22   );    // 22 �� �ٹ�
    GetFldVar('S_STRING29',  sDuty23   );    // 23 �� �ٹ�
    GetFldVar('S_STRING30',  sDuty24   );    // 24 �� �ٹ�

    GetFldVar('S_STRING31',  sDuty25   );    // 25 �� �ٹ�
    GetFldVar('S_STRING32',  sDuty26   );    // 26 �� �ٹ�
    GetFldVar('S_STRING33',  sDuty27   );    // 27 �� �ٹ�
    GetFldVar('S_STRING34',  sDuty28   );    // 28 �� �ٹ�
    GetFldVar('S_STRING35',  sDuty29   );    // 29 �� �ٹ�
    GetFldVar('S_STRING36',  sDuty30   );    // 30 �� �ٹ�
    GetFldVar('S_STRING37',  sDuty31   );    // 31 �� �ٹ�
    GetFldVar('S_STRING38',  sJikwenm  );    // ������
    GetFldVar('S_STRING39',  sTotvcnt  );    // �ѿ���
    GetFldVar('S_STRING40',  sUsevcnt  );    // ��뿬��

    GetFldVar('S_STRING41',  sAllconyn );    // ����Ϸ� ����
    GetFldVar('S_STRING42',  sAppdate  );    // �ۼ�����
    GetFldVar('S_STRING43',  sMkdeptcd  );   // �ۼ��μ�
    GetFldVar('S_STRING44',  sMkempno  );    // �ۼ��ڻ��
    GetFldVar('S_STRING45',  sAppseqno );    // �����Ϸù�ȣ
    GetFldVar('S_STRING46',  sMeddept  );    // ��ȣ�μ��ڵ�       �߰� ���� 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // �ٹ��μ��ڵ�
    GetFldVar('S_STRING48',  sUserid   );    // ��ȣ�μ����userid
    GetFldVar('S_STRING49',  sChkyn    );    // �λ�μ� ����Ϸ� ���� �߰� ���� 2006-01-18

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;



function HgaMdutyt.ListLast : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[ssLocate,ssDeptCd,ssYYMM]);

  if (txGetF('GA_MDUTY_L19')) then             // ga_mdutyl_l6.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno	     );    // ������ ���
    GetFldVar('S_STRING2'  , sEmpnm	     );    // ������ �̸�
    GetFldVar('S_STRING3'  , sComcdnm    );    // ��������
    GetFldVar('S_STRING4'  , sWday    	 );    // �����ڵ�
    GetFldVar('S_STRING5'  , sDuty	     );    // �����ڵ��
    GetFldVar('S_STRING6'  , sSeqno	     );    // ������ȣ 20061015
    GetFldVar('S_STRING7'  , sGubun	     );    // ������ȣ 20061015


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;




function HgaMdutyt.InsertConfirm : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');  // S_TYPE19 ���� �߰� 2005-11-01

  SetFldValue(0 ,[sEmpno  , sLocate , sMkyymm, sDeptcd  , sDoctype , sConfirmyn ]); //sInsayn �߰� ���� 2006-01-18

  if (txPutF('GA_CONFM_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;



////////////////////////////////////////////////////////////////////////////////
// ���� �ٹ� ������ ����
// 2005.03.21 by ���¿�
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.SaveMDutyt3(iCnt : Integer) : Integer; // ��Ȱ ���� 2005-12-22
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;');

  for i :=0 to iCnt - 1 do
  begin
     SetFldValue(i , [sLocate[i]   ,     // �����
                      sEmpno[i]    ,     // �ٹ��� ���
                      sMkyymm[i]   ,     // �ٹ����
                      sDutydate[i] ,     // �ٹ�����
                      sDuty01[i]   ,     // �ٹ��ڵ�
                      sAppdate[i]  ,     // �����ۼ���
                      sMkdeptcd[i] ,     // �ۼ��� �ٹ��μ��ڵ�
                      sMkempno[i]  ,     // �ۼ��� ���
                      sDoctype[i]  ,     // ��������
                      sAppseqno[i] ,     // �ۼ��Ϸù�ȣ
                      sDeptcd[i]   ,     // �ٹ��� �ٹ��μ��ڵ�
                      sDayWeek[i]  ,     // ����
                      sAllconyn[i] ,     // ����ϷῩ��
                      sChkyn[i]    ,     // �λ�Ȯ�ο���
                      sWeekcnt[i]  ,     // ����
                      sEditid[i]   ,     // ������ID
                      sEditip[i]   ,     // ����IP
                      sDutyFlag[i] ,     // ����/��ȣ����
                      sWkareacd[i] ,     // �ٹ��� �ٹ��μ��ڵ�
                      sMeddept[i]  ,     // ��ȣ�μ��ڵ�
                      sUserid[i]    ]);  // ��ȣ�� USER ID
  end;


  if (txPutF('GA_MDUTY_I3')) then   //ga_mduty_i3.pc
  begin
    Result := 1;
    txFree;
  end;
end;


//----------------------------------------------------------------------------//
// ���� �ٹ� ������ Update (AppSeqNo ��...)
// 2006.01.20 by ����
//----------------------------------------------------------------------------//
function HgaMdutyt.UpdateMDutyt1(iCnt : Integer) : Integer; // ��Ȱ ���� 2005-12-22
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
// ���� �ٹ� ������ Update (AllConYn, ChkYn ��...)
// 2006.01.23 by ����
//----------------------------------------------------------------------------//
function HgaMdutyt.UpdateMDutyt2(iCnt : Integer) : Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
//���� ������ �μ��� List Up
// 2005.04   �� �� ��
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.ListMdutyOp : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
   SetFldValue(0,[ssLocate,ssDeptCd,ssSdate,ssEdate]);

  if (txGetF('GA_MDUTYL_L6')) then             // ga_mdutyl_l6.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno	     );    // ������ ���
    GetFldVar('S_STRING2'  , sEmpnm	     );    // ������ �̸�
    GetFldVar('S_STRING3'  , sDutyDate	 );    // ��������
    GetFldVar('S_STRING4'  , sDutyCode	 );    // �����ڵ�
    GetFldVar('S_STRING5'  , sDutyName	 );    // �����ڵ��
    GetFldVar('S_STRING6'  , sIntelno	   );    // ������ȣ 20061015
    GetFldVar('S_STRING7'  , sPagerno	   );    // ȣ����ȣ 20061015
    GetFldVar('S_STRING8'  , sHphoneno	 );    // �޴�����ȣ 20061015

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
//���� ������ ��ü List Up
// 2005.04   �� �� ��
////////////////////////////////////////////////////////////////////////////////
function HgaMdutyt.ListMdutyOpAll : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
   SetFldValue(0,[ssLocate,ssDeptcd,ssSdate,ssEdate,sFlag]);

  if (txGetF('GA_MDUTYL_L7')) then   // ga_mdutyl_l7.pc
  begin     //Tuxedo Service Call

    GetFldVar('S_STRING1'  , sDeptNm	   );    // ������ �ҼӺμ�
    GetFldVar('S_STRING2'  , sDeptCd	   );    // ������ �ٹ��μ�  sDeptCd�� �ٹ��μ������� ���
    GetFldVar('S_STRING3'  , sEmpno	     );    // ������ ���
    GetFldVar('S_STRING4'  , sEmpnm	     );    // ������ �̸�
    GetFldVar('S_STRING5'  , sDutyDate	 );    // ��������
    GetFldVar('S_STRING6'  , sDutyCode	 );    // �����ڵ�
    GetFldVar('S_STRING7'  , sDutyName	 );    // �����ڵ��
    GetFldVar('S_STRING8'  , sIntelno	   );    // ������ȣ 20061015
    GetFldVar('S_STRING9'  , sPagerno	   );    // ȣ����ȣ 20061015
    GetFldVar('S_STRING10' , sHphoneno	 );    // �޴�����ȣ 20061015



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// �������� ��������(����)
// 2004.10.25 by ���¿�
////////////////////////////////////////////////////////////////////////////////
function HgaHolydt.GetHolycnt: Integer;
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���

   SetFldValue(0, [sStdt         // ��ȸ������
                 , sEndt         // ��ȸ������
                 , sSatyn        // ����� ���Կ���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sStdt, sEndt]);

   if (txGetF('GA_HOLYD_L1')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sHolyDt     );    //�����ȣ
     GetFldVar('S_STRING2' , sGuseyn     );    //�λ��뿩��(���� ����)

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaTenuat.RsqtTenuat : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;');  // S_TYPE19 ���� �߰� 2005-11-01  S_TYPE22 ������ �߰� 20210427

  SetFldValue(0 ,[sEmpno  , sLocate , sTenusdate, sTenutype  , sTenupubno ,
                  sTenuuse, sTenucnt, sUsedate  , sTenuprnyn , sPrintdate ,
                  sJobtype, sEngaddr, sOffice   , sAppEmpno  , sAppyn     ,
                  sEditid , sEditip , sChoice   , sBaseDateFr, sBaseDateTo,  // sBaseDate ���� �߰� 2005-11-01
                  sInsayn, sResnoyn]); //sInsayn �߰� ���� 2006-01-18


  if (txPutF('GA_TENUA_I1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

function HgaTenuat.RsqtTenuat2 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;'+
             'S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;');  // S_TYPE19 ���� �߰� 2005-11-01  S_TYPE22 ������ �߰� 20210427

  SetFldValue(0 ,[sEmpno  , sLocate , sTenusdate, sTenutype  , sTenupubno ,
                  sTenuuse, sTenucnt, sUsedate  , sTenuprnyn , sPrintdate ,
                  sJobtype, sEngaddr, sOffice   , sAppEmpno  , sAppyn     ,
                  sEditid , sEditip , sChoice   , sBaseDateFr, sBaseDateTo,  // sBaseDate ���� �߰� 2005-11-01
                  sInsayn, sResnoyn, sPrintcnt  , sPhoneno]); //sInsayn �߰� ���� 2006-01-18  sPrintcnt �߰� 20210427  sHphoneno �߰� 20210609


  if (txPutF('GA_TENUA_I2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

//������ �������� ������Ʈ 20210611
function HgaTenuat.SetRsqtTenuat: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
// ������ ����/�ݼ� ó��
// 2005-03-24
////////////////////////////////////////////////////////////////////////////////
function HgaTenuat.ApprTenuat(iCnt : Integer) : Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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

//������ ���ǻ��� ���� 20211101
function HgaTenuat.TnQASave: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
   SetFldValue(0,[ssEmpno,ssLocate,ssTenutype,ssTenudate1,ssTenudate2,ssPrnYn]);

  if (txGetF('GA_TENUA_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno			  );    // �����ȣ
    GetFldVar('S_STRING2'  , sLocate	    );    // ������ڵ�
    GetFldVar('S_STRING3'  , sTenusdate		);    // ��û�Ͻ�  yyyymmdd -> yyyymmddhhnnss ����
    GetFldVar('S_STRING4'  , sTenutype		);    // ������ ����
    GetFldVar('S_STRING5'  , sTenutypenm	);    // ������ ������
    GetFldVar('S_STRING6'  , sTenupubno		);    // �߱޹�ȣ
    GetFldVar('S_STRING7'  , sTenuuse		  );    // ������ �뵵
    GetFldVar('S_STRING8'  , sTenucnt		  );    // ��û�μ�
    GetFldVar('S_STRING9'  , sUsedate		  );    // �������
    GetFldVar('S_STRING10' , sTenuprnyn		);    // �߱޿���(Y/N)
    GetFldVar('S_STRING11' , sPrintdate		);    // �����߱���
    GetFldVar('S_STRING12' , sJikjong		  );    // �����ڵ�
    GetFldVar('S_STRING13' , sJikjongnm		);    // ������
    GetFldVar('S_STRING14' , sEmpnm		    );    // ����
    GetFldVar('S_STRING15' , sEntdt		    );    // �Ի���
    GetFldVar('S_STRING16' , sRetdt		    );    // �����
    GetFldVar('S_STRING17' , sHannm		    );    // �ѹ�����
    GetFldVar('S_STRING18' , sResno       );    // �ֹε�Ϲ�ȣ
    GetFldVar('S_STRING19' , sAddr1       );    // �ֹε���� �����ȣ �ּҰ�
    GetFldVar('S_STRING20' , sAddr2       );    // �ֹε���� �ּ�
    GetFldVar('S_STRING21' , sDeptcd 	    );    // �μ��ڵ�
    GetFldVar('S_STRING22' , sDeptnm      );    // �μ���
    GetFldVar('S_STRING23' , sJikwe       );    // �����ڵ�
    GetFldVar('S_STRING24' , sJikwenm     );    // ������
    GetFldVar('S_STRING25' , sCdetcb      );    // �����ڵ�
    GetFldVar('S_STRING26' , sCdetcc      );    // ������
    GetFldVar('S_STRING27' , sJobtype     );    // ����������
    GetFldVar('S_STRING28' , sEngaddr     );    // �����ּ�

    GetFldVar('S_STRING29' , sSexcd       );    // �����ڵ�
    GetFldVar('S_STRING30' , sEngname     );    // ��������

    GetFldVar('S_STRING31' , sInsaEngAddr );    // �����ּ�(�λ�)
    GetFldVar('S_STRING32' , sBorndt      );    // ����
    GetFldVar('S_STRING33' , sOffice      );    // ����ó
    GetFldVar('S_STRING34' , sDepteng     );    // �����μ���
    GetFldVar('S_STRING35' , sBaseDateFr  );    // �������  // ���� �߰� 2005-11-01
    GetFldVar('S_STRING36' , sBaseDateTo  );    // �������  // ���� �߰� 2005-11-01

    GetFldVar('S_STRING37' , sJikmunm     );    // ����name(=�ź�) �߰� ���� 2006-01-17
    GetFldVar('S_STRING38' , sJikcheknm   );    // ��åname(=����) �߰� ���� 2006-01-17
    GetFldVar('S_STRING39' , sResnoyn     );    // �ֹι�ȣ ��¿���  2014.12.08 ���ö �߰�
    GetFldVar('S_STRING40' , sAppyndate   );    // ��������  20210427
    GetFldVar('S_STRING41' , sPrintcnt    );    // ���Ƚ��  20210427
    GetFldVar('S_STRING42' , sHphoneno    );    // �ڵ�����ȣ  20210526
    GetFldVar('S_STRING43' , sSendyn      );    // �������ۿ���  20210611

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaTenuat.ListTenuat2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
   SetFldValue(0,[ssEmpno,ssTenudate1,ssTenudate2,ssInsaGubun]);  // ssInsaGubun �߰� ���� 2006-01-17

  if (txGetF('GA_TENUA_L2')) then  //ga_tenua_l2.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno			  );    // �����ȣ
    GetFldVar('S_STRING2'  , sLocate	    );    // ������ڵ�
    GetFldVar('S_STRING3'  , sTenusdate		);    // ��û�Ͻ�  yyyymmdd -> yyyymmddhhnnss ����
    GetFldVar('S_STRING4'  , sTenutype		);    // ������ ����
    GetFldVar('S_STRING5'  , sTenutypenm	);    // ������ ������
    GetFldVar('S_STRING6'  , sTenupubno		);    // �߱޹�ȣ
    GetFldVar('S_STRING7'  , sTenuuse		  );    // ������ �뵵
    GetFldVar('S_STRING8'  , sTenucnt		  );    // ��û�μ�
    GetFldVar('S_STRING9'  , sUsedate		  );    // �������
    GetFldVar('S_STRING10' , sTenuprnyn		);    // �߱޿���(Y/N)
    GetFldVar('S_STRING11' , sPrintdate		);    // �����߱���
    GetFldVar('S_STRING12' , sJikjong		  );    // �����ڵ�
    GetFldVar('S_STRING13' , sJikjongnm		);    // ������
    GetFldVar('S_STRING14' , sEmpnm		    );    // ����
    GetFldVar('S_STRING15' , sEntdt		    );    // �Ի���
    GetFldVar('S_STRING16' , sRetdt		    );    // �����
    GetFldVar('S_STRING17' , sHannm		    );    // �ѹ�����
    GetFldVar('S_STRING18' , sResno       );    // �ֹε�Ϲ�ȣ
    GetFldVar('S_STRING19' , sAddr1       );    // �ֹε���� �����ȣ �ּҰ�
    GetFldVar('S_STRING20' , sAddr2       );    // �ֹε���� �ּ�
    GetFldVar('S_STRING21' , sDeptcd 	    );    // �μ��ڵ�
    GetFldVar('S_STRING22' , sDeptnm      );    // �μ���
    GetFldVar('S_STRING23' , sJikwe       );    // �����ڵ�
    GetFldVar('S_STRING24' , sJikwenm     );    // ������
    GetFldVar('S_STRING25' , sCdetcb      );    // �����ڵ�
    GetFldVar('S_STRING26' , sCdetcc      );    // ������
    GetFldVar('S_STRING27' , sJobtype     );    // ����������
    GetFldVar('S_STRING28' , sEngaddr     );    // �����ּ�
    GetFldVar('S_STRING29' , sEngname     );    // ��������
    GetFldVar('S_STRING30' , sSexcd       );    // �����ڵ�
    GetFldVar('S_STRING31' , sInsaEngAddr );    // �����ּ�(�λ�)
    GetFldVar('S_STRING32' , sBorndt      );    // ����
    GetFldVar('S_STRING33' , sOffice      );    // ����ó
    GetFldVar('S_STRING34' , sDepteng     );    // �����μ���
    GetFldVar('S_STRING35' , sAppyn       );    // ���翩�� // 34 -> 35 ���� ����
    GetFldVar('S_STRING36' , sBaseDateFr  );    // ���ؽŰ�����From ���� �߰� 2005-11-01
    GetFldVar('S_STRING37' , sBaseDateTo  );    // ���ؽŰ�����To   ���� �߰� 2005-11-01
    GetFldVar('S_STRING38' , sHphoneno  );      // �ڵ�����ȣ �߰� 20210526

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

//20211101 ������ ���ǻ��� ��ȸ
function HgaTenuat.TnQAMaster: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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

//������ ���ǻ��� ������ 20211101
function HgaTenuat.TnQADetail: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
   SetFldValue(0,[ssEmpno,ssTenudate1,ssTenudate2,ssInsaGubun]);  // ssInsaGubun �߰� ���� 2006-01-17

  if (txGetF('GA_TENUA_L5')) then  //ga_tenua_l5.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno			  );    // �����ȣ
    GetFldVar('S_STRING2'  , sLocate	    );    // ������ڵ�
    GetFldVar('S_STRING3'  , sTenusdate		);    // ��û�Ͻ�  yyyymmdd -> yyyymmddhhnnss ����
    GetFldVar('S_STRING4'  , sTenutype		);    // ������ ����
    GetFldVar('S_STRING5'  , sTenutypenm	);    // ������ ������
    GetFldVar('S_STRING6'  , sTenupubno		);    // �߱޹�ȣ
    GetFldVar('S_STRING7'  , sTenuuse		  );    // ������ �뵵
    GetFldVar('S_STRING8'  , sTenucnt		  );    // ��û�μ�
    GetFldVar('S_STRING9'  , sUsedate		  );    // �������
    GetFldVar('S_STRING10' , sTenuprnyn		);    // �߱޿���(Y/N)
    GetFldVar('S_STRING11' , sPrintdate		);    // �����߱���
    GetFldVar('S_STRING12' , sJikjong		  );    // �����ڵ�
    GetFldVar('S_STRING13' , sJikjongnm		);    // ������
    GetFldVar('S_STRING14' , sEmpnm		    );    // ����
    GetFldVar('S_STRING15' , sEntdt		    );    // �Ի���
    GetFldVar('S_STRING16' , sRetdt		    );    // �����
    GetFldVar('S_STRING17' , sHannm		    );    // �ѹ�����
    GetFldVar('S_STRING18' , sResno       );    // �ֹε�Ϲ�ȣ
    GetFldVar('S_STRING19' , sAddr1       );    // �ֹε���� �����ȣ �ּҰ�
    GetFldVar('S_STRING20' , sAddr2       );    // �ֹε���� �ּ�
    GetFldVar('S_STRING21' , sDeptcd 	    );    // �μ��ڵ�
    GetFldVar('S_STRING22' , sDeptnm      );    // �μ���
    GetFldVar('S_STRING23' , sJikwe       );    // �����ڵ�
    GetFldVar('S_STRING24' , sJikwenm     );    // ������
    GetFldVar('S_STRING25' , sCdetcb      );    // �����ڵ�
    GetFldVar('S_STRING26' , sCdetcc      );    // ������
    GetFldVar('S_STRING27' , sJobtype     );    // ����������
    GetFldVar('S_STRING28' , sEngaddr     );    // �����ּ�
    GetFldVar('S_STRING29' , sEngname     );    // ��������
    GetFldVar('S_STRING30' , sSexcd       );    // �����ڵ�
    GetFldVar('S_STRING31' , sInsaEngAddr );    // �����ּ�(�λ�)
    GetFldVar('S_STRING32' , sBorndt      );    // ����
    GetFldVar('S_STRING33' , sOffice      );    // ����ó
    GetFldVar('S_STRING34' , sDepteng     );    // �����μ���
    GetFldVar('S_STRING35' , sAppyn       );    // ���翩�� // 34 -> 35 ���� ����
    GetFldVar('S_STRING36' , sBaseDateFr  );    // ���ؽŰ�����From ���� �߰� 2005-11-01
    GetFldVar('S_STRING37' , sBaseDateTo  );    // ���ؽŰ�����To   ���� �߰� 2005-11-01
    GetFldVar('S_STRING38' , sHphoneno  );      // �ڵ�����ȣ �߰� 20210526

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


function HccHosift.ListHosift : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;'); //service�Էº���
   SetFldValue(0,[sLocate]);

  if (txGetF('GA_HOSIF_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sHsptname     );    // ������ڵ�
    GetFldVar('S_STRING2'  , sPrsdname     );    // ������Ī
    GetFldVar('S_STRING3'  , sPrsdreno     );    // ��ǥ�ڸ�
    GetFldVar('S_STRING4'  , sAddress      );    // ��ǥ�� �ֹι�ȣ
    GetFldVar('S_STRING5'  , sTelno        );    // �����ּ�
    GetFldVar('S_STRING6'  , sFaxno        );    // ��ȭ��ȣ
    GetFldVar('S_STRING7'  , sZipcd        );    // FAX ��ȣ
    GetFldVar('S_STRING8'  , sEhsptnm      );    // �����ȣ
    GetFldVar('S_STRING9'  , sEaddress     );    // ����������

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;


end;

function HgaSdate.GetSysDate : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName(''); //service�Էº���
   SetFldValue(0,[]);

  if (txGetF('GA_SDATE_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sSysdate     );    // ������ڵ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaSdate.GetSysTime : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName(''); //service�Էº���
   SetFldValue(0,[]);

  if (txGetF('GA_SDATE_L6')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sSysdate     );    // ������ڵ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �� Ư�� ���� ���� �� ������ ��ȸ
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.01.18                          GA_MDUTY_C1
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.CalcOverMT : Integer;
begin


   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
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
// �� Ư�� ���� ���� �� ������ ��ȸ
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.01.18
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.GetOverMT : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service�Էº���
   SetFldValue(0,[ssLocate,ssDeptcd,ssYYMM,ssPaygbn,ssCgubun,ssJikmu]);

  if (txGetF('GA_MDUTY_L3')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno     );    // �����ȣ
    GetFldVar('S_STRING2'  , sEmpnm     );    // �����
    GetFldVar('S_STRING3'  , sEntdt     );    // �Ի�����
    GetFldVar('S_STRING4'  , sJikwenm   );    // ������
    GetFldVar('S_STRING5'  , sDeptnm    );    // �μ���
    GetFldVar('S_STRING6'  , sCnt       );    // Ư�ٽð���
    GetFldVar('S_STRING7'  , sCnt25     );    // ���� 25% ����
    GetFldVar('S_STRING8'  , sCnt50     );    // ���� 50% ����
    GetFldVar('S_STRING9'  , sCntnig    );    // �ɾ�����
    GetFldVar('S_STRING10' , sOffcnt    );    // ���ϼ�(��,��)
    GetFldVar('S_STRING11' , sOffholy   );    // ���ϼ�(������)
    GetFldVar('S_STRING12' , sWkmonth   );    // �ٹ���

    GetFldVar('S_STRING13' , sCntDuty15   );  // �����ϼ�(4�ð�)        // ���� ���� 2005-11-29
    GetFldVar('S_STRING14' , sCntDuty30   );  // �����ϼ�(8�ð�)        // �߰� ���� 2005-11-29
    GetFldVar('S_STRING15' , sCntDuty40A  );  // �����ϼ�(�μ��� ����)  // �߰� ���� 2005-11-29
    GetFldVar('S_STRING16' , sCntDuty40B  );  // �����ϼ�(�μ��� ����)  // �߰� ���� 2005-11-29

    GetFldVar('S_STRING17' , sCntHol    );    // ���ϱٹ��ü�
    GetFldVar('S_STRING18' , sConDate   );    // ��������

    GetFldVar('S_STRING19' , sSCnt   );   // ����   2006-09-27
    GetFldVar('S_STRING20' , sRCnt   );   // ����   2006-09-27
    GetFldVar('S_STRING21' , sOCnt   );   // ����   2006-09-27
    GetFldVar('S_STRING22' , sCCnt   );   // ����   2006-09-27
    GetFldVar('S_STRING23' , sVCnt   );   // ����   2006-09-27
    GetFldVar('S_STRING24' , sUsevCnt   ); // �ѻ�뿬��  2006-09-27
    GetFldVar('S_STRING25' , sBCnt     );
    GetFldVar('S_STRING26' , sBCnt50   );
    GetFldVar('S_STRING27' , sBCntNig  ); 




    
    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �� Ư�� ���� ����
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.01.19
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.SaveOverMT(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;' +
              'S_TYPE15;S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;' +
              'S_TYPE20;S_TYPE21;S_TYPE22;S_TYPE23;S_TYPE24;' +
              'S_TYPE25;S_TYPE26;S_TYPE27;S_TYPE28'); //service�Էº���

   for ii := 0 to iCnt - 1 do
    SetFldValue(ii,[  sLocate   [ii] 
                    , sEmpno    [ii] 
                    , sWkmonth  [ii]
                    , sCnt      [ii]
                    , sCnt25    [ii]
                    , sCnt50    [ii]
                    , sCntnig   [ii]
                    , sDuty1    [ii]
                    , sNight    [ii]  // ����Ʈ�ٹ����� 20161019 �߰�
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
// �� Ư�� ���� ���� (��ü)
// �ۼ��� : ����
// �ۼ��� : 2005.11.24
////////////////////////////////////////////////////////////////////////////////
function HgaOvermt.MagamOverMT(sMagamGbn: String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���
   SetFldValue(0,[sLocate, sWkmonth, sConid, sEditid, sEditip, sMagamGbn, sPayGbn]);
  if (txPutF('GA_MDUTYL_I4')) then
  begin
     Result := 1;
     txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// ���� ���缱 ���� ����
// ���缱 ������ ����� ��� ������ ���缱 ������ ��� ������ ����� ���缱 ������
// �ٽ� ����
// �ۼ��� : 2005.03.07
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.DeleteAprovt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;'); //service�Էº���
   SetFldValue(0, [sLocate,sAppdate,sMkDeptcd,sMkEmpno, sDocType,
                   sAppSeqno]);

  if (txPutF('GA_APROV_D1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// ����, �� Ư�ٽ�û���� ����
// �ۼ��� : 2005.03.14
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.DeleteAprovt2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;'); //service�Էº���
   SetFldValue(0, [ssLocate,ssAppdate,ssMkDeptcd,ssMkEmpno, ssDocType,
                   ssAppSeqno]);

  if (txPutF('GA_APROV_D2')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;

end;

function HgaAprovt.SaveAprovt(iCnt : Integer) : Integer;  // ���缱 ���� ����
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12;'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
   SetFldValue(0,[ssLocate,ssAppdate,ssMkDeptcd,ssMkEmpno,ssDocType,ssAppSeqno]);

  if (txGetF('GA_APROV_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sAppempno      );    // ������ ���
    GetFldVar('S_STRING2'  , sAppempnm      );    // ������ ����
    GetFldVar('S_STRING3'  , sSeqno         );    // �������
    GetFldVar('S_STRING4'  , sAppyn         );    // ���翩��
    GetFldVar('S_STRING5'  , sJikwenm       );    // ������


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.GetApprovalYn : Integer; // ���� ���� ����
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
   SetFldValue(0,[ssLocate,ssMkDeptcd,ssAppdate,ssAppSeqno,ssMkEmpno,ssDocType]);

  if (txGetF('GA_APROV_L2')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sCnt );    //
    Result := 1;
    txFree;
  end;

end;

function HgaAprovt.ListApprovt5 : Integer;  // ���� ��� ���� List Up
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0,[ssLocate,          // ����� �ڵ�
                 ssAppdate,         // �����ۼ���
                 ssMkdeptcd,        // �ۼ� �μ��ڵ�
                 ssMkempno,         // �ۼ��� ���
                 ssDoctype,         // ��������
                 ssAppseqno,        // �ۼ��Ϸù�ȣ
                 ssLoginuser]);     // �α����� ����


  if (txGetF('GA_APROV_L5')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sRefwkcd    );    // �����ڵ�
    GetFldVar('S_STRING9'  , sWksdate    );    // ���½�����
    GetFldVar('S_STRING10' , sWkedate    );    // ����������
    GetFldVar('S_STRING11' , sRemtxt     );    // ���»���
    GetFldVar('S_STRING12' , sCnt        );    // �����ϼ�
    GetFldVar('S_STRING13' , sRettxt     );    // �ݼۻ���
    GetFldVar('S_STRING14' , sAllconyn   );    // �����ϷῩ��
    GetFldVar('S_STRING15' , sChkyn      );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING16' , sGenconid   );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING17' , sEmpnm      );    // ����
    GetFldVar('S_STRING18' , sJikwe      );    // ����
    GetFldVar('S_STRING19' , sWknm       );    // ���¸�
    GetFldVar('S_STRING20' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING21' , sMkempnm    );    // �ۼ��� �̸�     �߰� ���� 2005-12-09
    GetFldVar('S_STRING22' , sANFlag     );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING23' , sBefwkcd    );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING24' , sStm        );    // BS���۽ð� ������ �߰� 2018-07-12
    GetFldVar('S_STRING25' , sEtm        );    // BS����ð� ������ �߰� 2018-07-12
    GetFldVar('S_STRING26' , sTtm        );    // BS���ð� ������ �߰� 2018-07-12

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// ���� ��� ���� List Up(Master)
// �ۼ��� : 2005-03-08
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt4 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
  SetFldValue(0,[ssLocate,ssEmpno,ssSDate,ssEDate,ssDocType,ssInsaYn]);

  if (txGetF('GA_APROV_L4')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno      );    // �������
    GetFldVar('S_STRING8'  , sAppempno   );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn      );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt     );    // ��  ��
    GetFldVar('S_STRING11' , sEmpnm      );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING13' , sInsayn     );    // �λ�μ� ����

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// ���� ��� ���� List Up(�ۼ��� ����)
// �ۼ��� : 2005-03-013
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt6 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_APROV_L6')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sEmpnm      );    // �ۼ��� ����
    GetFldVar('S_STRING8'  , sDeptnm     );    // �μ���
    GetFldVar('S_STRING9'  , sRettxt     );    // ��ȯ����
    GetFldVar('S_STRING10' , sDocstep    );    // �����ܰ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;



////////////////////////////////////////////////////////////////////////////////
// ���� ��� ���� List Up(�ۼ��� ����)
// �ۼ��� : 2005-03-013
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt26 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_APROV_L26')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sEmpnm      );    // �ۼ��� ����
    GetFldVar('S_STRING8'  , sDeptnm     );    // �μ���
    GetFldVar('S_STRING9'  , sRettxt     );    // ��ȯ����
    GetFldVar('S_STRING10' , sDocstep    );    // �����ܰ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

////////////////////////////////////////////////////////////////////////////////
// ���� ��� ���� List Up(�λ�μ� ����)
// �ۼ��� : 2005-03-016
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt7 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;'); //service�Էº���
  SetFldValue(0,[ssLocate,ssEmpno,ssSDate,ssEDate,ssDocType,ssGrade,ssDeptcd]);

  if (txGetF('GA_APROV_L7')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno      );    // �������
    GetFldVar('S_STRING8'  , sAppempno   );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn      );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt     );    // ��  ��
    GetFldVar('S_STRING11' , sEmpnm      );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm     );    // �μ���

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �� �ٹ������� ����������� ��ȸ
// �ۼ��� : 2005-03-19
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt8 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
  SetFldValue(0,[ssLocate,ssAppdate,ssMkDeptcd,ssDocType]);

  if (txGetF('GA_APROV_L8')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate    );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate   );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd  );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno   );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype   );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno  );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno     );    // �������
    GetFldVar('S_STRING8'  , sAppempno  );    // ������ ���
    GetFldVar('S_STRING9'  , sAppEmpnm  );    // ������ ����
    GetFldVar('S_STRING10' , sJikwe     );    // �����ڵ�
    GetFldVar('S_STRING11' , sJikwenm   );    // ������
    GetFldVar('S_STRING12' , sDeptnm    );    // �μ���

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �� �ٹ������� ����������� ��ȸ
// �ۼ��� : ���¿�
// �ۼ��� : 2005-04-26
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt9 : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
  SetFldValue(0,[ssLocate,ssSDate,ssEDate,ssDocType]);

  if (txGetF('GA_APROV_L9')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno      );    // �������
    GetFldVar('S_STRING8'  , sAppempno   );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn      );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt     );    // ��  ��
    GetFldVar('S_STRING11' , sEmpnm      );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING13' , sInsayn     );    // �λ�μ� ����

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �� �ٹ������� ����������� ��ȸ(��ü, ������, ������)
// �ۼ��� : ���¿�
// �ۼ��� : 2005-04-27
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt10: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���
  SetFldValue(0,[ssLocate,ssSDate,ssEDate,ssInsayn, ssDocType,ssFlag,ssEmpno]);

  if (txGetF('GA_APROV_L10')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno      );    // �������
    GetFldVar('S_STRING8'  , sAppempno   );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn      );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt     );    // ��  ��
    GetFldVar('S_STRING11' , sEmpnm      );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING13' , sInsayn     );    // �λ�μ� ����

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �� �ٹ������� ���� ��ȸ(��ȣ�� ��ȸ)
// �ۼ��� : ���¿�
// �ۼ��� : 2005-05-16
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt11: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
  SetFldValue(0,[ssMkYymm,ssDeptcd,ssLocate]);

  if (txGetF('GA_APROV_L11')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sInputdt    );    // �ۼ���
    GetFldVar('S_STRING3'  , sWkareacd   );    // �ۼ��� �ٹ��μ��ڵ� (sMkwkareacd)
    GetFldVar('S_STRING4'  , sInputEmpno );    // �߰��� �ۼ���(Empno)
    GetFldVar('S_STRING5'  , sDocType    );    // �߰���
    GetFldVar('S_STRING6'  , sSignseni   );    // ��ȣ����(sSignEmpno)
    GetFldVar('S_STRING7'  , sChkyn      );    // ���翩��
    GetFldVar('S_STRING8'  , sEmpnm      );    // �ۼ��� ����(sInputEmpnm)
    GetFldVar('S_STRING9'  , sWkareanm   );    // �ۼ��μ���
    GetFldVar('S_STRING10' , sMeddept    );    // ��ȣ�μ��ڵ�
    GetFldVar('S_STRING11' , sMedDeptnm  );    // �μ���(sMeddeptnm)
    GetFldVar('S_STRING12' , sInputid    );    // �ۼ���(userid)

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �� �ٹ������� ���� ��ȸ(��ȣ�� ��ȸ)
// �ۼ��� : ���¿�
// �ۼ��� : 2005-05-16
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt12: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
  SetFldValue(0,[ssLocate,ssAppdate,ssMkDeptcd,ssDocType]);

  if (txGetF('GA_APROV_L12')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  ,  sStatusW   );    // ����� �ڵ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// ���� ��� ������ List Up(�λ�μ� ����)
// �ۼ��� : 2005-03-016
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListApprovt14 : Integer;
begin
  Result := -1;
  txAlloc;                //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service�Էº���

  SetFldValue(0,[ssLocate,
                 ssEmpno,
                 ssMkYymm,
                 ssDocType,
                 ssinsafirstyn,
                 ssDeptcd]);

  if (txGetF('GA_APROV_L14')) then             // ga_aprov_l14.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ��� �ٹ��μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno      );    // �������
    GetFldVar('S_STRING8'  , sAppempno   );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn      );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt     );    // ��  ��
    GetFldVar('S_STRING11' , sEmpnm      );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING13' , sSchustep   );    // �ش繮���� ���� ����ܰ�
    GetFldVar('S_STRING14' , sDeptgbn    );    // �μ�����
    GetFldVar('S_STRING15' , sInsayn     );    // �ѹ�������� ����
    GetFldVar('S_STRING16' , sCloseYn    );    // ��ȣ ���ۼ� ����

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// ���� ��� ������ List Up(�λ�μ� ����)
// �ۼ��� : 2005-03-016
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.ListEnd : Integer;
begin
  Result := -1;
  txAlloc;                //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���

  SetFldValue(0,[ssLocate,
                 ssDoctype,
                 ssEmpno,
                 ssinsafirstyn,
                 ssMkYymm]);

  if (txGetF('GA_APROL_L10')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sMkdeptcd   );    // �����ۼ���
    GetFldVar('S_STRING3'  , sDeptnm     );    // �ۼ��� �ٹ��μ��ڵ�
    GetFldVar('S_STRING4'  , sFlag       );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sAprol1     );    // �ۼ��� �ٹ��μ��ڵ�
    GetFldVar('S_STRING6'  , sAprol2     );    // �ۼ��� ���
    GetFldVar('S_STRING7'  , sAppseqno   );    // �ۼ��� ���



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaAprovt.ListApprovt27 : Integer;  // ���� ��� ���� List Up
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0,[ssLocate,          // ����� �ڵ�
                 ssAppdate,         // �����ۼ���
                 ssMkdeptcd,        // �ۼ� �μ��ڵ�
                 ssMkempno,         // �ۼ��� ���
                 ssDoctype,         // ��������
                 ssAppseqno,        // �ۼ��Ϸù�ȣ
                 ssLoginuser]);     // �α����� ����


  if (txGetF('GA_APROV_L27')) then      //ga_aprov_l27.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sSat1       );    // �����ڵ�
    GetFldVar('S_STRING9'  , sSat2       );    // ���½�����
    GetFldVar('S_STRING10' , sSat3       );    // ����������
    GetFldVar('S_STRING11' , sSat4       );    // ���»���
    GetFldVar('S_STRING12' , sSat5       );    // �����ϼ�
    GetFldVar('S_STRING13' , sMdate1     );    // �ݼۻ���
    GetFldVar('S_STRING14' , sMdate2     );    // �����ϷῩ��
    GetFldVar('S_STRING15' , sMdate3     );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING16' , sMdate4     );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING17' , sMdate5     );    // ����
    GetFldVar('S_STRING18' , sCode1      );    // ����
    GetFldVar('S_STRING19' , sCode2      );    // ���¸�
    GetFldVar('S_STRING20' , sCode3      );    // �μ���
    GetFldVar('S_STRING21' , sCode4      );    // �ۼ��� �̸�     �߰� ���� 2005-12-09
    GetFldVar('S_STRING22' , sCode5      );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING23' , sAllconyn   );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING24' , sChkyn      );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING25' , sGenconid   );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING26' , sEmpnm      );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING27' , sJikwe      );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING28' , sDeptnm     );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING29' , sMkempnm    );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING30' , sWkyymm     );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING31' , sCnt        );    // ����/��ȣ ����  �߰� ���� 2005-12-23

    GetFldVar('S_STRING32' , sSat6       );    // �����ڵ�
    GetFldVar('S_STRING33' , sSat7       );    // ���½�����
    GetFldVar('S_STRING34' , sSat8       );    // ����������
    GetFldVar('S_STRING35' , sSat9       );    // ���»���
    GetFldVar('S_STRING36' , sSat10      );    // �����ϼ�
    GetFldVar('S_STRING37' , sMdate6     );    // �ݼۻ���
    GetFldVar('S_STRING38' , sMdate7     );    // �����ϷῩ��
    GetFldVar('S_STRING39' , sMdate8     );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING40' , sMdate9     );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING41' , sMdate10    );    // ����
    GetFldVar('S_STRING42' , sCode6      );    // ����
    GetFldVar('S_STRING43' , sCode7      );    // ���¸�
    GetFldVar('S_STRING44' , sCode8      );    // �μ���
    GetFldVar('S_STRING45' , sCode9      );    // �ۼ��� �̸�     �߰� ���� 2005-12-09
    GetFldVar('S_STRING46' , sCode10     );    // ����/��ȣ ����  �߰� ���� 2005-12-23

    GetFldVar('S_STRING47' , sReason1      );    // ����
    GetFldVar('S_STRING48' , sReason2      );    // ���¸�
    GetFldVar('S_STRING49' , sReason3      );    // �μ���
    GetFldVar('S_STRING50' , sReason4      );    // �ۼ��� �̸�     �߰� ���� 2005-12-09
    GetFldVar('S_STRING51' , sReason5      );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING52' , sReason6      );    // ����
    GetFldVar('S_STRING53' , sReason7      );    // ���¸�
    GetFldVar('S_STRING54' , sReason8      );    // �μ���
    GetFldVar('S_STRING55' , sReason9      );    // �ۼ��� �̸�     �߰� ���� 2005-12-09
    GetFldVar('S_STRING56' , sReason10     );    // ����/��ȣ ����  �߰� ���� 2005-12-23


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


////////////////////////////////////////////////////////////////////////////////
// ��ȣ�� ���缱 ���� Update(�λ� Ȯ��)
// �ۼ��� : ���¿�
// �ۼ��� : 2005.05.17
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.UpdateSignlt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
   SetFldValue( 0, [sMkDeptcd,ssMkYymm,sRettxt,sEditid,sEditip,sChkyn]);

  if (txPutF('MN_SIGNL_U1')) then   //Tuxedo Service Call
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// ������ ���� ó��
// �ۼ��� : �� �� ��
// �ۼ��� :
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'+
              'S_TYPE11;S_TYPE12'); //service�Էº���
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
// ������ ���� ó��(�Ϻ� ���� ��û)
//function HgaAprovt.SaveAprovt3(iCnt : Integer) : Integer;  // ������ ���� ó��
// �ۼ��� : �� �� ��
// �ۼ��� : 2005-03
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt4 : Integer;  // ������ ���� ó��
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'); //service�Էº���
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
// ���缱 ����(�ٹ�������)
// 2005-03-21
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt5 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;'); //service�Էº���

   SetFldValue(0,[sLocate   ,                  // �����
                  sAppdate  ,                  // �����ۼ���(������ �����û���̴�)
                  sMkdeptcd ,                  // �ۼ��� �ٹ��μ��ڵ�
                  sMkempno  ,                  // �ۼ��� ���
                  sDoctype  ,                  // ��������
                  sAppseqno ,                  // �ۼ��Ϸù�ȣ(������ȣ)
                  sSeqno    ,                  // �������
                  sAppempno ,                  // ������ ���
                  sAppyn    ,                  // ���籸��
                  sRemtxt   ,                  // ���
                  sEditid   ,                  //
                  sEditip   ,                  //
                  sInsaEmpno,                  // ?
                  sInsaDpcd ,                  // ?
                  sInsaYn   ,                  // �λ�μ�����
                  ssMkYymm  ,                  // �ٹ����
                  sDeptnm]);                   // ��ȣ�ο� �μ���

  if (txPutF('GA_APROV_I5')) then   //Tuxedo Service Call
  begin
    Result := 1;
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// ������ ���� ó��(�Ϻ� Ư�� ��û)
// �ۼ��� : �� �� ��
// �ۼ��� : 2005-03
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt6 : Integer;  // ������ ���� ó��
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'); //service�Էº���
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
// ������ ���� ó��(���� �ٹ� ������)
// �ۼ��� : �� �� ��
// �ۼ��� : 2005-03
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt7 : Integer;  // ������ ���� ó��
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0, [sLocate              // 01. �����
                ,  sAppdate             // 02. �����ۼ���
                ,  sMkdeptcd            // 03. �ۼ� �μ��ڵ�
                ,  sMkempno             // 04. �ۼ��� ���
                ,  sDoctype             // 05. ��������
                ,  sAppseqno            // 06. �ۼ��Ϸù�ȣ
                ,  sSeqno               // 07. �������
                ,  sAppempno            // 08. ������ ���
                ,  sAppyn               // 09. ���翩��
                ,  sRemtxt              // 10. ���
                ,  sWkyymm              // 11. �ٹ����
                ,  sEditid              // 12. �ۼ��� ID
                ,  sEditip              // 13. �ۼ��� IP
                ,  sInsayn              // 14. �ѹ������缱 ����
                ,  sRemark              // 15. ��ȣ�μ��� ��� ���������Ϳ� ������ ���
                ,  sNurseYn             // 16. ��ȣ�ι��� ����
                ,  sInsafirstyn         // 17. �ѹ������ʰ������ ����
                  ]);

   if (txPutF('GA_APROV_I7', 300)) then   //Tuxedo Service Call
   begin
      Result := 1;
      txFree;
   end;

end;



function HgaAprovt.SaveAprovt19 : Integer;  // ������ ���� ó��
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');

   SetFldValue(0, [sLocate              // 01. �����
                ,  sMkdeptcd            // 03. �ۼ� �μ��ڵ�
                ,  sMkempno             // 04. �ۼ��� ���
                ,  sDoctype             // 05. ��������
                ,  sAppseqno            // 06. �ۼ��Ϸù�ȣ
                ,  sWkyymm              // 11. �ٹ����
                ,  sEditid              // 12. �ۼ��� ID
                ,  sEditip              // 13. �ۼ��� IP
                ,  sInsafirstyn         // 17. �ѹ������ʰ������ ����
                ,  sMedDeptnm
                  ]);

   if (txPutF('GA_APROV_I19', 300)) then   //Tuxedo Service Call
   begin
      Result := 1;
      txFree;
   end;

end;

////////////////////////////////////////////////////////////////////////////////
// ������ ���� ó��(�ѹ��� ���缱 ����)
// �ۼ��� : �� �� ��
// �ۼ��� : 2005-04-26
////////////////////////////////////////////////////////////////////////////////
function HgaAprovt.SaveAprovt8 : Integer;  // ������ ���� ó��(���� �ٹ� ������)
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
// �������� List up
// �ۼ��� : �� �� ��
// �ۼ��� : 2005.03.
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.ListApprolt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
   SetFldValue(0,[ssLocate,ssDeptcd,ssDoctype,ssEmpno]);

  if (txGetF('GA_APROL_L1')) then              // ga_aprol_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate	   );    // �����
    GetFldVar('S_STRING2'  , sEmpno	     );    // �����ۼ���
    GetFldVar('S_STRING3'  , sDeptcd	   );    // �μ��ڵ�
    GetFldVar('S_STRING4'  , sDoctype	   );    // ��������
    GetFldVar('S_STRING5'  , sSeqno	     );    // �������
    GetFldVar('S_STRING6'  , sAppempno	 );    // ������ ���
    GetFldVar('S_STRING7'  , sAppempnm	 );    // ������ ����
    GetFldVar('S_STRING8'  , sJikwenm	   );    // ������
    GetFldVar('S_STRING9'  , sAppdeptcd  );    // �����μ� �μ��ڵ�
    GetFldVar('S_STRING10' , sAppdeptnm	 );    // �����μ� �μ��̸�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
// ������� ��Ͽ��� Cnt
// �ۼ��� : ���¿�
// �ۼ��� : 2005.03.23
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.CntApprolt : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
   SetFldValue(0,[ssLocate,ssEmpno,ssDocType,ssWkareacd]);

  if (txGetF('GA_APROL_L2')) then      // ga_aprol_l2.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1', sCnt);      // �����

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// ������� ����
// �ۼ��� : ���¿�
// �ۼ��� : 2005.02.28
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.SaveAprolt(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;'); //service�Էº���
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
// �������� ����
// �ۼ��� : ���¿�
// �ۼ��� : 2005.02.28
////////////////////////////////////////////////////////////////////////////////
function HgaAprolt.RemoveAprolt(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
   for ii := 0 to iCnt - 1 do
    SetFldValue(ii,[sLocate[ii],sEmpno[ii],sDeptcd[ii],sDocType[ii]]);

  if (txPutF('GA_APROL_D1')) then   //Tuxedo Service Call ga_aprol_d1.pc
  begin
     Result := 1;
     txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// �Ϻ� ��������� ��ȸ
// �ۼ��� : ���ֿ�
// �ۼ��� : 2005.04.07
////////////////////////////////////////////////////////////////////////////////
function HgaInoutt.ListDateInout: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
  SetFldValue(0,[sLocate,sDeptcd,sInoutdt]);

  if (txGetF('GA_INOUT_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sJikwe	 );    // �����
    GetFldVar('S_STRING2'  , sEmpno	 );    // �����
    GetFldVar('S_STRING3'  , sEmpnm	 );    // �����
    GetFldVar('S_STRING4'  , sDuty	 );    // �����
    GetFldVar('S_STRING5'  , sStm	   );    // �����
    GetFldVar('S_STRING6'  , sEtm	   );    // �����
    GetFldVar('S_STRING7'  , sDutstm );    // �����
    GetFldVar('S_STRING8'  , sDutetm );    // �����

    Result := GetRecordCnt('S_STRING1');

    txFree;
  end;
end;

function HgaApoid1.delApoid1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');

   SetFldValue( 0 ,[sLocate, sBasyy, sAppyymm]);

   //if (txPutF('GA_VACAM_U2', 1800)) then begin //Tuxedo Service Call
   {if (txPutF('GA_VACAM_U2', 1800)) then begin //Tuxedo Service Call ga_vacam_u2.pc
      Result := 1;
      txFree;
   end;}
   // 2016.01.05 ���ö ���� -- GA_VACAM_U2 --> GA_VACAM_U3
   if (txPutF('GA_VACAM_U3', 1800)) then begin //Tuxedo Service Call ga_vacam_u2.pc
      Result := 1;
      txFree;
   end;
end;




function HgaTenuat_1.SelTenuat: integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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
    GetFldVar('S_STRING12' , sInsayn    );    //20210428 �λ�������� �߰�
    GetFldVar('S_STRING13' , sSendyn    );    //20210611 �������ۿ��� �߰�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaTenuat_1.SelTenuatRow: integer;
begin
  //Empno, Locate, Tenusdate, Tenutype
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
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
    GetFldVar('S_STRING18' , sPhoneno    	);    //20210609  �޴��ȣ �߰�
    Result := GetRecordCnt('S_STRING15');
    txFree;
  end;
end;

function HgaTenuat_1.UpTenuat_Submyn: integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
//   �ش� ������ ������ �ܰ�
//
//
//==============================================================================

function HgaEtc.GetSchuStep: Integer;
begin

  // �ش� ������ ������ �ܰ�
  // 0 : ���常 �ϰ� ���� �����û�� ���� ����
  // 1 : �����û�� �� ���� (���� ��� ������ڵ� ���縦 ���� ���� ����)
  //
  // 2 : ������ڰ� 1���̻� ���縦 ������ ����
  // 3 : ����������ڰ� �ش繮���� ��ȯ�� ����
  // 4 : ��� ������ ����ó���� �� ����
  //
  // 5 : �λ翡�� ��ȯ�� ����
  // 9 : �λ翡�� ���������� ����ó���� �ѻ���
  //     (���ڿ� ���� 9�̴� => �߰��� ���δܰ谡 ����� ���ɼ� �����Ƿ�.

  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');

  sParam1 := 'SCHU_STEP';

  SetFldValue(0 ,[sParam1,      // ��������
                  sParam2,      // �����
                  sParam3,      // �ٹ����
                  sParam4,      // �ۼ��Ϸù�ȣ(������ȣ)
                  sParam5,
                  sParam6,
                  sParam7,
                  sParam8,
                  sParam9,
                  sParam10]);

  if (txGetF('GA_ETC_L1')) then
  begin     //Tuxedo Service Call
     GetFldVar('S_STRING1', sResult);    // ����ܰ�
     Result := GetRecordCnt('S_STRING1');
     txFree;
  end;


end;

function HgaMdutyt.SelMasterInfo: Integer;
begin

  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

  SetFldValue(0,[ssLocate,               // ������ڵ�
                 ssWkyymm,               // �ٹ����
                 ssDoctype,              // ��������
                 ssAppseqno]);           // ������ȣ
  //ga_mduty_l10.pc
  if (txGetF('GA_MDUTY_L10')) then          // ga_mduty_l10.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1',  sLocate   );    // �����
    GetFldVar('S_STRING2',  sAppdate  );    // �ۼ�����
    GetFldVar('S_STRING3',  sAppseqno );    // �����Ϸù�ȣ
    GetFldVar('S_STRING4',  sMkdeptcd );    // �ۼ��� �ٹ��μ�
    GetFldVar('S_STRING5',  sMkempno  );    // �ۼ��ڻ��
    GetFldVar('S_STRING6',  sDoctype  );    // ��������  => 'S' ( W: ����,  O: Ư��,  P: ������, S: ������ )
    GetFldVar('S_STRING7',  sMkyymm   );    // ���� ��ȸ�� ������ �ٹ����(�ۼ���� �ƴ�)
    GetFldVar('S_STRING8',  sSchustep );    // ���� ��ȸ�� ������ �ܰ踦 ��Ÿ����.

    GetFldVar('S_STRING9',  sMkdeptnm );    // �ۼ��� �ٹ��μ���
    GetFldVar('S_STRING10', sMkempnm  );    // �ۼ��ڸ�
    GetFldVar('S_STRING11', sRemtxt   );    // ���


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;



end;

function HgaAprovt.ListApprovt15: Integer;
begin
  Result := -1;
  txAlloc;                //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���

  SetFldValue(0,[ssLocate   ,             // �����
                 ssMkYymm   ,             // �ٹ����
                 ssDoctype  ,             // ��������
                 ssAppseqno]);            // ������ȣ

  if (txGetF('GA_APROV_L15')) then        // ga_aprov_l15.pc
  begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sLocate     );    // ����� �ڵ�
     GetFldVar('S_STRING2'   , sAppdate    );    // �����ۼ���
     GetFldVar('S_STRING3'   , sMkdeptcd   );    // �ۼ��� �ٹ��μ��ڵ�
     GetFldVar('S_STRING4'   , sMkempno    );    // �ۼ��� ���
     GetFldVar('S_STRING5'   , sDoctype    );    // ��������
     GetFldVar('S_STRING6'   , sAppseqno   );    // �ۼ��Ϸù�ȣ
     GetFldVar('S_STRING7'   , sSeqno      );    // �������
     GetFldVar('S_STRING8'   , sAppempno   );    // �����ڻ��
     GetFldVar('S_STRING9'   , sAppyn      );    // ���翩��
     GetFldVar('S_STRING10'  , sRemtxt     );    // ���
     GetFldVar('S_STRING11'  , sWkyymm     );    // �ٹ����
     GetFldVar('S_STRING12'  , sMeddeptnm  );    // ��ȣ�ο� �μ���
     GetFldVar('S_STRING13'  , sAppempnm   );    // ������ ����
     GetFldVar('S_STRING14'  , sMkempnm    );    // �ۼ��� ����
     GetFldVar('S_STRING15'  , sDeptnm     );    // �μ���
     GetFldVar('S_STRING16'  , sInsayn     );    // �ѹ�������ο���

     Result := GetRecordCnt('S_STRING1');
     txFree;
  end;

end;

function HgaMdutyt.SaveDocmat: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;');

   SetFldValue(0 , [sLocate   ,     //  1 �����
                    sMkyymm   ,     //  2 �ٹ����
                    sDoctype  ,     //  3 ��������
                    sAppseqno ,     //  4 �ۼ��Ϸù�ȣ
                    sDocstep  ,     //  5 �����ܰ�
                    sDeptgbn  ,     //  6 �μ�����
                    sRemark   ,     //  7 ���
                    sEditid   ,     //  8 ������ID
                    sEditip   ,     //  9 ����IP
                    sOldappseqno    // 10 ����������ȣ
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

  SetFldValue(0,[ssLocate,               // ������ڵ�
                 ssWkyymm,               // �ٹ����
                 ssDoctype,              // �ٹ��μ��ڵ�
                 ssAppseqno]);           // ���������Ϸ��� ������ȣ

  if (txGetF('GA_DOCMA_L1')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1',  sCount    );    // ���������Ϸ��� ���� ���� �Ǽ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaComcd1.InsComcd2: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'+
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10');

   SetFldValue(0 ,[sLargcd      // ��з��ڵ�
                 , sComcddtl    // �ߺз��ڵ�
                 , sComcdnm     // �ߺз��ڵ��
                 , sCdabbrnm    // ���
                 , sRemark      // ���
                 , sEditid
                 , sEditip
                 , sSaveGbn     // ���屸��
                 , sEngcomCdNm  // 20061019 ������ �߰�
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0, [ssLocate,          // �����
                   ssLargcd] );       // ��з��ڵ�

   if (txGetF('GA_COMCD_L10')) then                  // ga_comcd_l10.pc
   begin     //Tuxedo Service Call
      GetFldVar('S_STRING1'   ,  sComcddtl );        // �ߺз��ڵ�
      GetFldVar('S_STRING2'   ,  sComcdnm  );        // �ڵ��
      GetFldVar('S_STRING3'   ,  sCdabbrnm );        // ���
      GetFldVar('S_STRING4'   ,  sRemark   );        // ���

      GetFldVar('S_STRING5'   ,  sEngcomCdNm );      // 20061020 ������ �߰�
      GetFldVar('S_STRING6'   ,  sCdseqno    );      // 20061020 ������ �߰�      


      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;

function HgaMdutyt.IsAppEmp: Boolean;
begin
  Result := False;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

  SetFldValue(0,[ssLocate,               // �����
                 ssAppempno,             // �����ڻ��
                 ssEmpno,                // �ۼ��ڻ��
                 ssDoctype]);            // ��������

  if (txGetF('GA_APROL_L3')) then
  begin
    GetFldVar('S_STRING1',  sCnt      );    // �Ǽ�

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

  SetFldValue(0,[ssLocate,               // �����
                 ssAppempno,             // �����ڻ��
                 ssEmpno,                // �ۼ��ڻ��
                 ssDoctype]);            // ��������

  if (txGetF('GA_APROL_L4')) then        // ga_aprol_l4.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // �Ǽ�

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

  SetFldValue(0,[ssLocate,               // �����
                 ssAppempno,             // �����ڻ��
                 ssEmpno,                // �ۼ��ڻ��
                 ssDoctype]);            // ��������

  if (txGetF('GA_APROL_L7')) then        // ga_aprol_l4.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // �Ǽ�

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���

  SetFldValue(0,[ssLocate ,          // �����
                 ssEmpno  ,          // ���
                 ssYYMM   ,          // �ٹ����
                 ssDoctype           // ��������
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���

  SetFldValue(0,[ssLocate           // �����
               , ssEmpno            // ���
               , ssYear             // ����⵵
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���

  SetFldValue(0,  [sLocate       // �����
                 , sAppdate      // �����ۼ���
                 , sAppseqno     // ������ȣ
                 , sDoctype      // ��������
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���

  SetFldValue(0,  [sLocate       // �����
                 , sAppdate      // �����ۼ���
                 , sAppseqno     // ������ȣ
                 , sDoctype      // ��������
                   ]);

  if (txPutF('GA_WRKSD_D3')) then    // ga_wrksd_d3.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;

  end;

end;

//2018-08-14 ������ �߰� Ư�ټ����û
function HgaWrksdt.InsTGsudang(iCnt : Integer) : Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16;S_TYPE17;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue( ii ,   [sLocate       [ii]     //  1. �����
                       ,  sAppDate      [ii]     //  2. �����ۼ���
                       ,  sMkdeptcd     [ii]     //  3. �ۼ��μ��ڵ�
                       ,  sAppseqno     [ii]     //  4. ������ȣ
                       ,  sMkempno      [ii]     //  5. �ۼ��ڻ��
                       ,  sDoctype      [ii]     //  6. �������� ('Z')
                       ,  sEmpno        [ii]     //  7. �����ȣ
                       ,  sTGdate       [ii]     //  8. Ư������
                       ,  sTGstime      [ii]     //  9. Ư�ٽ��۽ð�
                       ,  sResbstm      [ii]     // 10. Ư�ٽ�û�ð�
                       ,  sRemtxt       [ii]     // 11. ���»���
                       ,  sAllconyn     [ii]     // 12. �������籸�� (YNR)
                       ,  sChkyn        [ii]     // 13. �λ���籸�� (YNR)
                       ,  sGenconid     [ii]     // 14. �λ�μ�Ȯ���� ID
                       ,  sEditid       [ii]     // 15. ������id
                       ,  sEditip       [ii]     // 16. ������ip
                       ,  sSnchngyn     [ii]     // 17. ��û����
                          ]);
  end;

  if (txPutF('GA_OVERSD_I1')) then    // ga_oversd_i1.pc
  begin     //Tuxedo Service Call
     Result := 1;
     txFree;
  end;
end;

//2018-08-14 ������ �߰� Ư�ټ����û ���� ��ȸ
function HgaWrksdt.ListTGsudang : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0,[ssLocate,          // ����� �ڵ�
                 ssAppdate,         // �����ۼ���
                 ssMkdeptcd,        // �ۼ� �μ��ڵ�
                 ssMkempno,         // �ۼ��� ���
                 ssDoctype,         // ��������
                 ssAppseqno,        // �ۼ��Ϸù�ȣ
                 ssLoginuser]);     // �α����� ����


  if (txGetF('GA_OVERSD_L1')) then      //ga_oversd_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sTGdate     );    // �����ڵ�
    GetFldVar('S_STRING9'  , sTGstime    );    // ���½��۽ð�
    GetFldVar('S_STRING10' , sResbstm    );    // ���½�û�ð� ��
    GetFldVar('S_STRING11' , sRettxt     );    // ���»���
    GetFldVar('S_STRING12' , sAllconyn   );    // �����ϷῩ��
    GetFldVar('S_STRING13' , sChkyn      );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING14' , sGenconid   );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING15' , sEmpnm      );    // ����̸�
    GetFldVar('S_STRING16' , sJikwe      );    // ����
    GetFldVar('S_STRING17' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING18' , sMkempnm    );    // �ۼ��� �̸�


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaAprovt.SaveAprovt9: Integer;
var
  Servernm : String;
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service�Էº���

   SetFldValue(0,[sLocate  ,                  // �����
                  sAppdate ,                  // �����ۼ���(������ ����Ǿ� �ִ� �����ۼ���) => Pro*C ���� �ý��� ��¥�� UPDATE �ȴ�
                  sMkdeptcd,                  // �ۼ� �μ��ڵ�
                  sMkempno ,                  // �ۼ��� ���(�����û�ϴ� ����� ���)
                  sDoctype ,                  // ��������
                  sAppseqno,                  // �ۼ��Ϸù�ȣ(������ȣ)
                  sAppyn   ,                  // ���籸��
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // �λ���缱 ���� => ��ûȭ���̹Ƿ� �Ϲݺμ��� ���缱�� Ž
                  sWkareacd]);                // �ۼ��� �ٹ��μ� = ��û�� �ٹ��μ�

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service�Էº���

   SetFldValue(0,[sLocate  ,                  // �����
                  sAppdate ,                  // �����ۼ���(������ ����Ǿ� �ִ� �����ۼ���) => Pro*C ���� �ý��� ��¥�� UPDATE �ȴ�
                  sMkdeptcd,                  // �ۼ� �μ��ڵ�
                  sMkempno ,                  // �ۼ��� ���(�����û�ϴ� ����� ���)
                  sDoctype ,                  // ��������
                  sAppseqno,                  // �ۼ��Ϸù�ȣ(������ȣ)
                  sAppyn   ,                  // ���籸��
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // �λ���缱 ���� => ��ûȭ���̹Ƿ� �Ϲݺμ��� ���缱�� Ž
                  sWkareacd]);                // �ۼ��� �ٹ��μ� = ��û�� �ٹ��μ�

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0, [  ssLocate                  // �����
                  , ssAppempno                // ������ ���
                  , ssDoctype                 // ��������
                  , ssSdate                   // �����ۼ���(From)
                  , ssEdate                   // �����ۼ���(To)
                  , ssinsafirstyn             // �ѹ��� ���ʰ����� ���� 'Y', 'N'
                  , ssDeptcd                  // ��ȸ�μ�
                  ]);

  if (txGetF('GA_APROV_L16')) then              // ga_aprov_l16.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate  );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd );    // �ۼ��μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno  );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype  );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno    );    // �������
    GetFldVar('S_STRING8'  , sAppempno );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn    );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt   );    // ���
    GetFldVar('S_STRING11' , sEmpnm    );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm   );    // �μ���
    GetFldVar('S_STRING13' , sDocstep  );    // �ش繮���� ���� ����ܰ�
    GetFldVar('S_STRING14' , sInsayn   );    // �ѹ�������ο���
    GetFldVar('S_STRING15' , sRettxt   );    // �ݼۻ���

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;


function HgaAprovt.ListApprovt28: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0, [  ssLocate                  // �����
                  , ssAppempno                // ������ ���
                  , ssDoctype                 // ��������
                  , ssSdate                   // �����ۼ���(From)
                  , ssEdate                   // �����ۼ���(To)
                  , ssinsafirstyn             // �ѹ��� ���ʰ����� ���� 'Y', 'N'
                  , ssDeptcd                  // ��ȸ�μ�
                  ]);

  if (txGetF('GA_APROV_L28')) then              // ga_aprov_l28.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate  );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd );    // �ۼ��μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno  );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype  );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno    );    // �������
    GetFldVar('S_STRING8'  , sAppempno );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn    );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt   );    // ���
    GetFldVar('S_STRING11' , sEmpnm    );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm   );    // �μ���
    GetFldVar('S_STRING13' , sDocstep  );    // �ش繮���� ���� ����ܰ�
    GetFldVar('S_STRING14' , sInsayn   );    // �ѹ�������ο���
    GetFldVar('S_STRING15' , sRettxt   );    // �ݼۻ���

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.ListApprovt29: Integer;
begin
  Result := -1;
  txAlloc;                //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���

  SetFldValue(0,[ssLocate   ,             // �����
                 ssAppdate   ,             // �ٹ����
                 ssDoctype  ,             // ��������
                 ssAppseqno ,
                 ssEmpno    ]);            // ������ȣ

  if (txGetF('GA_APROV_L29')) then        // ga_aprov_l15.pc
  begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sAppdate    );    // ����� �ڵ�
     GetFldVar('S_STRING2'   , sMkempno    );    // �����ۼ���
     GetFldVar('S_STRING3'   , sAppseqno   );    // �ۼ��� �ٹ��μ��ڵ�
     GetFldVar('S_STRING4'   , sSeqno      );    // �ۼ��� ���
     GetFldVar('S_STRING5'   , sAppempno   );    // ��������
     GetFldVar('S_STRING6'   , sAppyn      );    // �ۼ��Ϸù�ȣ
     GetFldVar('S_STRING7'   , sAppempnm   );    // �������
     GetFldVar('S_STRING8'   , sMkempnm    );    // �����ڻ��
     GetFldVar('S_STRING9'   , sEditdate   );    // �����ڻ��



     Result := GetRecordCnt('S_STRING1');
     txFree;
  end;

end;


function HgaAprovt.SaveAprovt10: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

{
        GET (S_TYPE1   , 0, sLocate         );      /* ����� �ڵ�              */
        GET (S_TYPE2   , 0, sAppdate        );      /* �����ۼ���               */
        GET (S_TYPE3   , 0, sMkdeptcd       );      /* �ۼ� �μ��ڵ�            */
        GET (S_TYPE4   , 0, sMkempno        );      /* �ۼ��� ���              */
        GET (S_TYPE5   , 0, sDoctype        );      /* ��������                 */
        GET (S_TYPE6   , 0, sAppseqno       );      /* �ۼ��Ϸù�ȣ             */
        GET (S_TYPE7   , 0, sSeqno          );      /* �������                 */
        GET (S_TYPE8   , 0, sAppempno       );      /* ������ ���              */
        GET (S_TYPE9   , 0, sAppyn          );      /* ���翩��                 */
        GET (S_TYPE10  , 0, sRemtxt         );      /* ���                     */
        GET (S_TYPE11  , 0, sEditid         );      /* �ۼ��� ID                */
        GET (S_TYPE12  , 0, sEditip         );      /* �ۼ��� IP                */
        GET (S_TYPE13  , 0, sInsaEmpno      );      /* �λ�μ� ���            */
        GET (S_TYPE14  , 0, sInsaDpcd       );      /* �λ�μ� �μ��ڵ�        */
        GET (S_TYPE15  , 0, sInsayn         );      /* �ѹ�������� ����        */
        GET (S_TYPE16  , 0, sRettxt         );      /* ��ȯ����                 */
        GET (S_TYPE17  , 0, sInsafirstyn    );      /* �ѹ��� ���� ������ڿ��� */
}

   SetFldValue(0, [sLocate               // ����� �ڵ�
                ,  sAppdate              // �����ۼ���
                ,  sMkdeptcd             // �ۼ� �μ��ڵ�
                ,  sMkempno              // �ۼ��� ���
                ,  sDoctype              // ��������
                ,  sAppseqno             // �ۼ��Ϸù�ȣ
                ,  sSeqno                // �������
                ,  sAppempno             // ������ ���
                ,  sAppyn                // ���翩��
                ,  sRemtxt               // ���
                ,  sEditid               // �ۼ��� ID
                ,  sEditip               // �ۼ��� IP
                ,  sInsaEmpno            // �λ�μ� ���
                ,  sInsaDpcd             // �λ�μ� �μ��ڵ�
                ,  sInsayn               // �ѹ�������� ����
                ,  sRettxt               // ��ȯ����
                ,  sInsafirstyn          // �ѹ��� ���� ������ڿ���
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
//GA_APROV_I10 ������ ����
//GA_APROV_I14 �ŷ��� ����
//GA_APROV_I18 new ����

   if (txPutF('GA_APROV_I18', 300)) then   //Tuxedo Service Call   ga_aprov_i18.pc
   begin
      Result := 1;
      txFree;
   end;

end;


function HgaAprovt.SaveAprovt16: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0, [sLocate               // ����� �ڵ�
                ,  sAppdate              // �����ۼ���
                ,  sMkdeptcd             // �ۼ� �μ��ڵ�
                ,  sMkempno              // �ۼ��� ���
                ,  sDoctype              // ��������
                ,  sAppseqno             // �ۼ��Ϸù�ȣ
                ,  sSeqno                // �������
                ,  sAppempno             // ������ ���
                ,  sAppyn                // ���翩��
                ,  sRemtxt               // ���
                ,  sEditid               // �ۼ��� ID
                ,  sEditip               // �ۼ��� IP
                ,  sInsaEmpno            // �λ�μ� ���
                ,  sInsaDpcd             // �λ�μ� �μ��ڵ�
                ,  sInsayn               // �ѹ�������� ����
                ,  sRettxt               // ��ȯ����
                ,  sInsafirstyn          // �ѹ��� ���� ������ڿ���
                  ]);

//GA_APROV_I10 ������ ����
//GA_APROV_I14 �ŷ��� ����
   if (txPutF('GA_APROV_I16', 300)) then   //Tuxedo Service Call   ga_aprov_i16.pc
   begin
      Result := 1;
      txFree;
   end;

end;

function HgaAprovt.SaveAprovt17: Integer; // 2020.01.05 ������ �߰�. ������ ����
begin
 Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;'+
              'S_TYPE16;S_TYPE17;'); //service�Էº���

   SetFldValue(0,[sLocate   ,                  // �����
                  sAppdate  ,                  // �����ۼ���(������ �����û���̴�)
                  sMkdeptcd ,                  // �ۼ��� �ٹ��μ��ڵ�
                  sMkempno  ,                  // �ۼ��� ���
                  sDoctype  ,                  // ��������
                  sAppseqno ,                  // �ۼ��Ϸù�ȣ(������ȣ)
                  sSeqno    ,                  // �������
                  sAppempno ,                  // ������ ���
                  sAppyn    ,                  // ���籸��
                  sRemtxt   ,                  // ���
                  sEditid   ,                  //
                  sEditip   ,                  //
                  sInsaEmpno,                  // ?
                  sInsaDpcd ,                  // ?
                  sInsaYn   ,                  // �λ�μ�����
                  ssMkYymm  ,                  // �ٹ����
                  sDeptnm]);                   // ��ȣ�ο� �μ���

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���

  SetFldValue(0,  [sLocate       // �����
                 , sAppdate      // �����ۼ���
                 , sAppseqno     // ������ȣ
                 , sDoctype      // ��������
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
  txAlloc32; //Pointer�� �޾ƿ�.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
             'S_TYPE16;S_TYPE17;S_TYPE18;S_TYPE19;S_TYPE20;' +
             'S_TYPE21;S_TYPE22;S_TYPE23');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [sLocate     [ii]     //  1. ����� �ڵ�
                       ,  sAppdate    [ii]     //  2. �ۼ�����
                       ,  sMkdeptcd   [ii]     //  3. �ۼ��μ�
                       ,  sAppseqno   [ii]     //  4. �ۼ� �Ϸù�ȣ
                       ,  sMkempno    [ii]     //  5. �ۼ��� ���
                       ,  sDoctype    [ii]     //  6. �������� ('O')
                       ,  sEmpno      [ii]     //  7. �����ȣ
                       ,  sWkdate     [ii]     //  8. Ư������
                       ,  sWkstime    [ii]     //  9. Ư�� ���۽ð�
                       ,  sWketime    [ii]     // 10. Ư�� ����ð�
                       ,  sWeekCnt    [ii]     // 11. ����
                       ,  sCnt        [ii]     // 12. Ư�ٽð���
                       ,  sCntOvr     [ii]     // 13. �ð���
                       ,  sCntNig     [ii]     // 14. �ɾ�
                       ,  sRemtxt     [ii]     // 15. Ư�ٻ���
                       ,  sRettxt     [ii]     // 16. ��ȯ����
                       ,  sAllconyn   [ii]     // 17. ��������Ϸ� ���� (YNR)
                       ,  sChkyn      [ii]     // 18. �λ����Ϸ� ���� (YNR)
                       ,  sGenconid   [ii]     // 19. �λ�μ� Ȯ���� ���
                       ,  sEditid     [ii]     // 20.
                       ,  sEditip     [ii]     // 21.
                       ,  sOldappdate [ii]     // 22. �����ۼ�����
                       ,  sZyn        [ii]     // 23. �����ް� ����
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_OVEDT_L6')) then              // ga_ovedt_l6.pc
  begin
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sEmpnm      );    // �ۼ��� ����
    GetFldVar('S_STRING8'  , sDeptnm     );    // �μ���
    GetFldVar('S_STRING9'  , sRettxt     );    // �ݼۻ���
    GetFldVar('S_STRING10' , sDocstep    );    // �����ܰ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaOverddt.ListOveddt7: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0,[ssLocate,          // ����� �ڵ�
                 ssAppdate,         // �����ۼ���
                 ssMkdeptcd,        // �ۼ� �μ��ڵ�
                 ssMkempno,         // �ۼ��� ���
                 ssDoctype,         // ��������
                 ssAppseqno,        // �ۼ��Ϸù�ȣ
                 ssLoginuser]);     // �α����� ����


  if (txGetF('GA_OVEDT_L7')) then              // ga_ovedt_l7.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sWkdate     );    // Ư������
    GetFldVar('S_STRING9'  , sWketime    );    // Ư�ٽ��۽ð�
    GetFldVar('S_STRING10' , sWkstime    );    // Ư������ð�
    GetFldVar('S_STRING11' , sWeekcnt    );    // ����
    GetFldVar('S_STRING12' , sCnt        );    // Ư�ٽð���
    GetFldVar('S_STRING13' , sCntovr     );    // �ð���
    GetFldVar('S_STRING14' , sCntnig     );    // �ɾ�
    GetFldVar('S_STRING15' , sRemtxt     );    // Ư�ٻ���
    GetFldVar('S_STRING16' , sRettxt     );    // �ݼۻ���
    GetFldVar('S_STRING17' , sAllconyn   );    // �����ϷῩ��
    GetFldVar('S_STRING18' , sChkyn      );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING19' , sGenconid   );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING20' , sEmpnm      );    // ����
    GetFldVar('S_STRING21' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING22' , sMkempnm    );    // �ۼ��� �̸�
    GetFldVar('S_STRING23' , sZyn        );    // �����ް� ���� 2018-07-13 ������ �߰�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.SaveAprovt11: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service�Էº���

   SetFldValue(0,[sLocate  ,                  // �����
                  sAppdate ,                  // �����ۼ���(������ ����Ǿ� �ִ� �����ۼ���) => Pro*C ���� �ý��� ��¥�� UPDATE �ȴ�
                  sMkdeptcd,                  // �ۼ� �μ��ڵ�
                  sMkempno ,                  // �ۼ��� ���(�����û�ϴ� ����� ���)
                  sDoctype ,                  // ��������
                  sAppseqno,                  // �ۼ��Ϸù�ȣ(������ȣ)
                  sAppyn   ,                  // ���籸��
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // �λ���缱 ���� => ��ûȭ���̹Ƿ� �Ϲݺμ��� ���缱�� Ž
                  sWkareacd]);                // �ۼ��� �ٹ��μ� = ��û�� �ٹ��μ�

   if (txPutF('GA_APROV_I11')) then   //Tuxedo Service Call    ga_aprov_i11.pc
   begin
      Result := 1;
      txFree;
   end;

end;

function HgaAprovt.ListApprovt17: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0, [  ssLocate                  // �����
                  , ssAppempno                // ������ ���
                  , ssDoctype                 // ��������
                  , ssSdate                   // �����ۼ���(From)
                  , ssEdate                   // �����ۼ���(To)
                  , ssinsafirstyn             // �ѹ��� ���ʰ����� ���� 'Y', 'N'
                  , ssDeptcd                  // ��ȸ�μ�
                  ]);


  if (txGetF('GA_APROV_L17')) then              // ga_aprov_l17.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate  );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd );    // �ۼ��μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno  );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype  );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno    );    // �������
    GetFldVar('S_STRING8'  , sAppempno );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn    );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt   );    // ���
    GetFldVar('S_STRING11' , sEmpnm    );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm   );    // �μ���
    GetFldVar('S_STRING13' , sDocstep  );    // �ش繮���� ���� ����ܰ�
    GetFldVar('S_STRING14' , sInsayn   );    // �ѹ�������ο���
    GetFldVar('S_STRING15' , sRettxt   );    // �ݼۻ���
    GetFldVar('S_STRING16' , sEditdate );    // �ݼۻ���
    GetFldVar('S_STRING17' , sAppinfo  );    // �ݼۻ���



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.SaveAprovt12: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;');


   SetFldValue(0, [sLocate               // ����� �ڵ�
                ,  sAppdate              // �����ۼ���
                ,  sMkdeptcd             // �ۼ� �μ��ڵ�
                ,  sMkempno              // �ۼ��� ���
                ,  sDoctype              // ��������
                ,  sAppseqno             // �ۼ��Ϸù�ȣ
                ,  sSeqno                // �������
                ,  sAppempno             // ������ ���
                ,  sAppyn                // ���翩��
                ,  sRemtxt               // ���
                ,  sEditid               // �ۼ��� ID
                ,  sEditip               // �ۼ��� IP
                ,  sInsayn               // �ѹ�������� ����
                ,  sRettxt               // �ݼۻ���
                ,  sInsafirstyn          // �ѹ��� ���� ������ڿ���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

   SetFldValue(0,[ssLocate        // �����
                , ssWkareacd
                , ssSdate
                , ssEdate] );   // �ٹ��μ��ڵ�

   if (txGetF('GA_INSAM_L4')) then begin         // Tuxedo Service Call ga_insam_l4.pc
      GetFldVar('S_STRING1'  , sLocate     );    //  1  �����
      GetFldVar('S_STRING2'  , sEmpno      );    //  2  ���
      GetFldVar('S_STRING3'  , sEmpnm      );    //  3  ����
      GetFldVar('S_STRING4'  , sDeptcd     );    //  4  �μ��ڵ�
      GetFldVar('S_STRING5'  , sDeptnm     );    //  5  �μ���
      GetFldVar('S_STRING6'  , sWkareacd   );    //  6  �ٹ��μ��ڵ�
      GetFldVar('S_STRING7'  , sWkareanm   );    //  7  �ٹ��μ���
      GetFldVar('S_STRING8'  , sJikwe      );    //  8  �����ڵ�
      GetFldVar('S_STRING9'  , sJikwenm    );    //  9  ������
      GetFldVar('S_STRING10' , sHobong     );    //  10 ȣ��
      GetFldVar('S_STRING11' , sResno      );    //  11 �ֹι�ȣ
      GetFldVar('S_STRING12' , sSexcd      );    //  12 ����
      GetFldVar('S_STRING13' , sEntdt      );    //  13 �Ի���
      GetFldVar('S_STRING14' , sRetdt      );    //  14 �����

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;


function HgaComcd1.DelComcd2: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0 ,[sLargcd      // ��з��ڵ�
                 , sComcddtl    // �ߺз��ڵ�
                   ]);

   if (txPutF('GA_COMCD_D1')) then begin   //Tuxedo Service Call  ga_comcd_d1.pc
      Result := 1;
      txFree;
   end;

end;

function HgaOverddt.UpdateOverddt5: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;');

{
        GET (S_TYPE1  ,  0, sLocate  );           /* ����� �ڵ�              */
        GET (S_TYPE2  ,  0, sAppdate );           /* �ۼ�����                 */
        GET (S_TYPE3  ,  0, sAppseqno);           /* �ۼ� �Ϸù�ȣ            */
        GET (S_TYPE4  ,  0, sDoctype );           /* �������� ('O')           */
        GET (S_TYPE5  ,  0, sEmpno   );           /* �����ȣ                 */
        GET (S_TYPE6  ,  0, sWkdate  );           /* Ư������                 */
        GET (S_TYPE7  ,  0, sWkstime );           /* Ư�� ���۽ð�            */
        GET (S_TYPE8  ,  0, sWketime );           /* Ư�� ����ð�            */
        GET (S_TYPE9  ,  0, sCnt     );           /* Ư�ٽð���               */
        GET (S_TYPE10 ,  0, sCntovr  );           /* �ð���                   */
        GET (S_TYPE11 ,  0, sCntnig  );           /* �ɾ�                     */
        GET (S_TYPE12 ,  0, sEditid  );
        GET (S_TYPE13 ,  0, sEditip  );

        GET (S_TYPE14 ,  0, sOldWkstime);         /* ������ Ư�� ���۽ð�      */
        GET (S_TYPE15 ,  0, sOldWketime);         /* ������ Ư�� ����ð�      */
}

  SetFldValue(0,  [sLocate             // ����� �ڵ�
                 , sAppdate            // �ۼ�����
                 , sAppseqno           // �ۼ� �Ϸù�ȣ
                 , sDoctype            // �������� ('O')
                 , sEmpno              // �����ȣ
                 , sWkdate             // Ư������
                 , sWkstime            // Ư�� ���۽ð�
                 , sWketime            // Ư�� ����ð�
                 , sCnt                // Ư�ٽð���
                 , sCntovr             // �ð���
                 , sCntnig             // �ɾ�
                 , sEditid
                 , sEditip
                 , sOldWkstime         // ������ Ư�� ���۽ð�
                 , sOldWketime         // ������ Ư�� ����ð�
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
             'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
             'S_TYPE11;S_TYPE12;S_TYPE13;');

{
        GET (S_TYPE1  ,  0, sLocate      );           /* ����� �ڵ�              */
        GET (S_TYPE2  ,  0, sAppdate     );           /* �ۼ�����                 */
        GET (S_TYPE3  ,  0, sAppseqno    );           /* �ۼ� �Ϸù�ȣ            */
        GET (S_TYPE4  ,  0, sDoctype     );           /* �������� ('W')           */
        GET (S_TYPE5  ,  0, sEmpno       );           /* �����ȣ                 */
        GET (S_TYPE6  ,  0, sRefwkcd     );           /* �����ڵ�                 */
        GET (S_TYPE7  ,  0, sWksdate     );           /* ���½�����               */
        GET (S_TYPE8  ,  0, sWkedate     );           /* ����������               */
        GET (S_TYPE9  ,  0, sEditid      );           /*                          */
        GET (S_TYPE10 ,  0, sEditip      );           /*                          */

        GET (S_TYPE11 ,  0, sOldRefwkcd  );           /* ������ �����ڵ�          */
        GET (S_TYPE12 ,  0, sOldWksdate  );           /* ������ ���½�����        */
        GET (S_TYPE13 ,  0, sOldWkedate  );           /* ������ ����������        */
}

  SetFldValue(0,  [sLocate              // ����� �ڵ�
                 , sAppdate             // �ۼ�����
                 , sAppseqno            // �ۼ� �Ϸù�ȣ
                 , sDoctype             // �������� ('W')
                 , sEmpno               // �����ȣ
                 , sRefwkcd             // �����ڵ�
                 , sWksdate             // ���½�����
                 , sWkedate             // ����������
                 , sEditid              //
                 , sEditip              //
                 , sOldRefwkcd          // ������ �����ڵ�
                 , sOldWksdate          // ������ ���½�����
                 , sOldWkedate          // ������ ����������
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'); //service�Էº���

  SetFldValue(0,[ssLocate          // ����� �ڵ�
               , ssDoctype         // ��������
               , ssEmpno           // Ư���ڻ��
               , ssSDate           // Ư���� From
               , ssEDate           // Ư���� To
                 ]);

{
                PUT (S_STRING1  , iy, sLocate    [iy] );     /* ����� �ڵ�     */
                PUT (S_STRING2  , iy, sAppdate   [iy] );     /* �����ۼ���      */
                PUT (S_STRING3  , iy, sMkdeptcd  [iy] );     /* �ۼ� �μ��ڵ�   */
                PUT (S_STRING4  , iy, sAppseqno  [iy] );     /* �ۼ��Ϸù�ȣ    */
                PUT (S_STRING5  , iy, sMkempno   [iy] );     /* �ۼ��� ���     */
                PUT (S_STRING6  , iy, sDoctype   [iy] );     /* ��������        */
                PUT (S_STRING7  , iy, sEmpno     [iy] );     /* �����ȣ        */
                PUT (S_STRING8  , iy, sWkdate    [iy] );     /* Ư������        */
                PUT (S_STRING9  , iy, sWketime   [iy] );     /* Ư�ٽ��۽ð�    */
                PUT (S_STRING10 , iy, sWkstime   [iy] );     /* Ư������ð�    */
                PUT (S_STRING11 , iy, sWeekcnt   [iy] );     /* ����            */
                PUT (S_STRING12 , iy, sCnt       [iy] );     /* Ư�ٽð���      */
                PUT (S_STRING13 , iy, sCntovr    [iy] );     /* �ð���          */
                PUT (S_STRING14 , iy, sCntnig    [iy] );     /* �ɾ�            */
                PUT (S_STRING15 , iy, sRemtxt    [iy] );     /* Ư�ٻ���        */
                PUT (S_STRING16 , iy, sRettxt    [iy] );     /* �ݼۻ���        */
                PUT (S_STRING17 , iy, sAllconyn  [iy] );     /* �����ϷῩ��    */
                PUT (S_STRING18 , iy, sChkyn     [iy] );     /* �λ���Ȯ�ο���  */
                PUT (S_STRING19 , iy, sGenconid  [iy] );     /* �λ�μ� Ȯ���� */
                PUT (S_STRING20 , iy, sEmpnm     [iy] );     /* ����            */
                PUT (S_STRING21 , iy, sDeptnm    [iy] );     /* �μ���          */
                PUT (S_STRING22 , iy, sMkempnm   [iy] );     /* �ۼ��� �̸�     */
}

  if (txGetF('GA_OVEDT_L8')) then              // ga_ovedt_l8.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sWkdate     );    // Ư������
    GetFldVar('S_STRING9'  , sWketime    );    // Ư�ٽ��۽ð�
    GetFldVar('S_STRING10' , sWkstime    );    // Ư������ð�
    GetFldVar('S_STRING11' , sWeekcnt    );    // ����
    GetFldVar('S_STRING12' , sCnt        );    // Ư�ٽð���
    GetFldVar('S_STRING13' , sCntovr     );    // �ð���
    GetFldVar('S_STRING14' , sCntnig     );    // �ɾ�
    GetFldVar('S_STRING15' , sRemtxt     );    // Ư�ٻ���
    GetFldVar('S_STRING16' , sRettxt     );    // �ݼۻ���
    GetFldVar('S_STRING17' , sAllconyn   );    // �����ϷῩ��
    GetFldVar('S_STRING18' , sChkyn      );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING19' , sGenconid   );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING20' , sEmpnm      );    // ����
    GetFldVar('S_STRING21' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING22' , sMkempnm    );    // �ۼ��� �̸�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaVacamt.SelVacamtEmp2: Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue32(0,[ssLocate     // �����
                  , ssEmpno      // �����ȣ
                  , ssSDate      // �˻�������
                  , ssEDate      // �˻�������
                  , ssGrade      //���
                   ]);


   if (txGetF32('GA_VACAM_L5')) then             // ga_vacam_l5.pc
   begin
      GetFldVar32('S_STRING1'   , sDutydate );    // �ٹ�����
      GetFldVar32('S_STRING2'   , sDuty     );    // �ٹ��ڵ�
      GetFldVar32('S_STRING3'   , sAppseqno );    // ������ȣ
      GetFldVar32('S_STRING4'   , sRemtxt   );    // ���»���
      GetFldVar32('S_STRING5'   , sUsevcnt  );    // ���� �����ϼ�
      GetFldVar32('S_STRING6'   , sWrktnm   );    // ���¸�

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;

function HgaOverddt.ListOveddt9: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service�Էº���

  SetFldValue(0,[ssLocate          // ����� �ڵ�
               , ssEmpno           // Ư���ڻ��
               , ssSDate           // Ư���� From
               , ssEDate           // Ư���� To
               , ssWkareacd
                 ]);

  if (txGetF('GA_OVEDT_L9')) then              // ga_ovedt_l9.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate    );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate   );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd  );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno  );    // �ۼ��Ϸù�ȣ  
    GetFldVar('S_STRING5'  , sMkempno   );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sEmpno     );    // �����ȣ
    GetFldVar('S_STRING7'  , sWkdate    );    // Ư������
    GetFldVar('S_STRING8'  , sWkstime   );    // Ư�ٽ��۽ð�
    GetFldVar('S_STRING9'  , sWketime   );    // Ư������ð�
    GetFldVar('S_STRING10' , sWeekcnt   );    // ����
    GetFldVar('S_STRING11' , sCnt       );    // Ư�ٽð���
    GetFldVar('S_STRING12' , sCntovr    );    // �ð���
    GetFldVar('S_STRING13' , sCntnig    );    // �ɾ�
    GetFldVar('S_STRING14' , sRemtxt    );    // Ư�ٻ���
    GetFldVar('S_STRING15' , sRettxt    );    // �ݼۻ���
    GetFldVar('S_STRING16' , sAllconyn  );    // �����ϷῩ��
    GetFldVar('S_STRING17' , sChkyn     );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING18' , sEmpnm     );    // ����          
    GetFldVar('S_STRING19' , sDeptnm    );    // �μ���        
    GetFldVar('S_STRING20' , sMkempnm   );    // �ۼ��� �̸�
    GetFldVar('S_STRING21' , sCompayt   );    // �ۼ��� �̸�
    GetFldVar('S_STRING22' , sAmt   );    // �ۼ��� �̸�



    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaVacamt.SelVacamt: Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;');
   SetFldValue32(0,[ssLocate     // �����
                  , ssYear       // �⵵
                  , ssEmpno      // �����ȣ
                   ]);
{
        PUT (S_STRING1   , 0, sNewvcnt   [0]);    /* �ѹ߻�����        */
        PUT (S_STRING2   , 0, sUsevcnt   [0]);    /* �ѻ�뿬��        */
        PUT (S_STRING3   , 0, sRemvcnt   [0]);    /* ���ܿ�����        */
}

   if (txGetF32('GA_VACAM_L6')) then             // ga_vacam_l6.pc
   begin
      GetFldVar32('S_STRING1'   , sNewvcnt );    // �ѹ߻�����
      GetFldVar32('S_STRING2'   , sUsevcnt );    // �ѻ�뿬��
      GetFldVar32('S_STRING3'   , sRemvcnt );    // ���ܿ�����

      Result := GetRecordCnt32('S_STRING1');

      txFree32;
   end;

end;

function HgaInsamt.ListGaInsamt5: integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0,[ssLocate,        // �����
                  ssWkareacd] );   // �ٹ��μ��ڵ�

{
        asciz10 sEmpno     [MAXROWCNT];  /* �����ȣ          */
        asciz30 sEmpnm     [MAXROWCNT];  /* �����            */
        asciz30 sJikwenm   [MAXROWCNT];  /* ������            */
        asciz10 sHobong    [MAXROWCNT];  /* ȣ��              */
        asciz10 sEntdt     [MAXROWCNT];  /* �Ի�����          */
        asciz10 sCdprtseq  [MAXROWCNT];  /* �������ļ���      */
        asciz10 sSortindex [MAXROWCNT];  /* �μ��� ���ļ���   */
}

   if (txGetF('GA_INSAM_L5')) then begin        // Tuxedo Service Call ga_insam_l5.pc
      GetFldVar('S_STRING1'  , sEmpno     );    // �����ȣ
      GetFldVar('S_STRING2'  , sEmpnm     );    // �����
      GetFldVar('S_STRING3'  , sJikwenm   );    // ������
      GetFldVar('S_STRING4'  , sHobong    );    // ȣ��
      GetFldVar('S_STRING5'  , sEntdt     );    // �Ի�����
      GetFldVar('S_STRING6'  , sCdprtseq  );    // �������ļ���
      GetFldVar('S_STRING7'  , sSortseq   );    // �μ��� ���ļ���
      GetFldVar('S_STRING8'  , sWkareacd  );    // �ٹ��μ��ڵ�

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

end;


function HgaInsamt.SaveGaInsamt3(iCnt :Integer) :Integer;
var
  i : integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

  for i :=0 to iCnt - 1 do
  begin
     SetFldValue(i , [sLocate   [i]  // �����
                    , sWkareacd [i]  // �ٹ��μ��ڵ�
                    , sEmpno    [i]  // ���
                    , sSortseq  [i]  // �μ��� ���ļ���
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
   txAlloc; //Pointer�� �޾ƿ�.


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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');

   SetFldValue(0,[sType1,                               // �����
                  sType2,                               // �μ�����
                  sType3                               // �μ�
                  ]);

   if (txGetF('GA_INSAM_L6')) then begin                // Tuxedo Service Call ga_insam_l6.pc
      GetFldVar('S_STRING1'  , sEmpno             );    // ���
      GetFldVar('S_STRING2'  , sEmpnm             );    // ����
      GetFldVar('S_STRING3'  , sResno             );    // �ֹι�ȣ
      GetFldVar('S_STRING4'  , sEntdt             );    // �Ի���
      GetFldVar('S_STRING5'  , sRetdt             );    // �����
      GetFldVar('S_STRING6'  , sDeptnm            );    // �ٹ��μ�
      GetFldVar('S_STRING7'  , sJikjongnm         );    // ����
      GetFldVar('S_STRING8'  , sJikwenm           );    // ����
      GetFldVar('S_STRING9'  , sSexcd             );    // ����

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

////////////////////////////////////////
//  �ٿ�ε� ���� ȭ�� ����Ʈ�� ��ȸ �Ѵ�. 20060928
////////////////////////////////////////
function HgaUpLoad.DeleteUpLoadFile(iCnt: Integer): Integer;
var
    idx : Integer;
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx , [sFileGbn  [idx]  // �ѹ����� 1, �������� 2
                        ,  sFileName [idx]  // ���ϸ�
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

   SetFldValue(0,[sType1,SType2,SType3,SType4]);

   if (txGetF('GA_FLOAD_L2')) then begin        // Tuxedo Service Call ga_fload_l1.pc
      GetFldVar('S_STRING1'  , sFileGbn   );    // �ѹ����� 1, �������� 2
      GetFldVar('S_STRING2'  , sFileName  );    // ���ϸ�
      GetFldVar('S_STRING3'  , sMkdate    );    // ���ϸ�
      GetFldVar('S_STRING4'  , sDocno  );    // ���ϸ�            

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function HgaUpLoad.SaveUpLoadFilefn(iCnt: Integer): Integer;
var
    idx : Integer;
begin

    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx ,[sFileGbn  [idx]  // �ѹ����� 1, �������� 2
                        , sFileName [idx]  // ���ϸ�
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
//  �ٿ�ε� ���� ȭ�� ����Ʈ�� ��ȸ �Ѵ�. 20060928
////////////////////////////////////////
function HgaUpLoad.DownLoadList: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;');

   SetFldValue(0,[sType1,SType2]);

   if (txGetF('GA_FLOAD_L1')) then begin        // Tuxedo Service Call ga_fload_l1.pc
      GetFldVar('S_STRING1'  , sFileGbn   );    // �ѹ����� 1, �������� 2
      GetFldVar('S_STRING2'  , sFileName  );    // ���ϸ�

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

////////////////////////////////////////
//  ���ε� �� ������ ���̺� �����Ѵ�.  20060928
////////////////////////////////////////
function HgaUpLoad.SaveUpLoadFile(iCnt : Integer) :Integer;
var
    idx : Integer;
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx , [sFileGbn  [idx]  // �ѹ����� 1, �������� 2
                        ,  sFileName [idx]  // ���ϸ�
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
//  �İ��� ������.  20060929
////////////////////////////////////////
function HgaRetList.DataList: Integer;
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
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

//�ٹ��������� ��ȸ ȭ�� 20061001
function HgaWkrank.ListGawkrank: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1'); //service�Էº���
   SetFldValue(0,[sYear]);

   //ga_insamt_l2.pc
   if (txGetF('GA_WRANK_L2')) then begin //Tuxedo Service Call ga_wrank_l2.pc

      GetFldVar('S_STRING1' , sWkyear );    // ����
      GetFldVar('S_STRING2' , sDeptnm );    // �ҼӺμ�
      GetFldVar('S_STRING3' , sWkareanm );  // �ٹ��μ�
      GetFldVar('S_STRING4' , sEmpno );     // �����ȣ
      GetFldVar('S_STRING5' , sEmpnm );     // ��  ��
      GetFldVar('S_STRING6' , sNum );       // ��������
      GetFldVar('S_STRING7' , sNum1 );      // 1������
      GetFldVar('S_STRING8' , sNum2 );      // 2������
      GetFldVar('S_STRING9' , sNum3 );      // 3������
      GetFldVar('S_STRING10', sNum4 );      // 4������
      GetFldVar('S_STRING11', sAvg );       // ���

      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;
end;

//�ٹ���������, ����������� ��ȸ ȭ�� ����  20061117 ���汸
function HgaWkrank.ListGawkrankGaeducdt: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[sLocate,sYear,sGbgubun]);

   // ga_wrank_l3.pc
   if (txGetF('GA_WRANK_L3')) then begin //Tuxedo Service Call ga_wrank_l3.pc

      GetFldVar('S_STRING1' , sDeptnm );      // �ҼӺμ�
      GetFldVar('S_STRING2' , sWkareanm );    // �ٹ��μ�
      GetFldVar('S_STRING3' , sEmpno );       // �����ȣ
      GetFldVar('S_STRING4' , sEmpnm );       // ��  ��
      GetFldVar('S_STRING5' , sComcdnm );     // ������  2006.11.30
      GetFldVar('S_STRING6' , sApodate );     // �������� �߷��� 2006.11.30
      GetFldVar('S_STRING7' , sWkpoint2 );    // 2���� �ٹ�����
      GetFldVar('S_STRING8' , sWkpoint1 );    // 1���� �ٹ�����
      GetFldVar('S_STRING9' , sWkpoint0 );    // ���� �ٹ�����
      GetFldVar('S_STRING10' , sWkavg );      // ��� �ٹ�����
      GetFldVar('S_STRING11' , sEdupoint2 );  // 2���� �������
      GetFldVar('S_STRING12', sEdupoint1 );   // 1���� �������
      GetFldVar('S_STRING13', sEdupoint0 );   // ���� �������
      GetFldVar('S_STRING14', sEduavg );      // ��� �������
      GetFldVar('S_STRING15', sEduyn );       // �����ڰݽ��� �̼�����
      
      Result := GetRecordCnt('S_STRING1');
      txFree;
  end;
end;



function HgaWMdutyt.SelMDutytholy: Integer;
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2');  // service�Էº���
   SetFldValue(0,[ssLocate, ssYYMM]);
                       
   if (txGetF('GA_MDUTY_L12')) then
   begin
      GetFldVar('S_STRING1' , sSunCnt  );       // �ҼӺμ�
      GetFldVar('S_STRING2' , sRullCnt );       // �ٹ��μ�
      GetFldVar('S_STRING3' , sDualSun );       // �����ȣ


      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function HgaOvermt.CalcOverMT1: Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
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
   //Pointer�� �޾ƿ�.
   txAlloc;

   if (txGetF('GA_APOIC_L3')) then  //ga_apoic_l3.pc
   begin
     GetFldVar('S_STRING1',  sCode    );  // �ڵ�
     GetFldVar('S_STRING2',  sCodeName);  // �ڵ��

      //��ȸ�Ǽ� return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;




function HgaApoid1.Gbapoid_List: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8'+
                'S_TYPE9;;S_TYPE10'    ); //service�Էº���
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
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[sLocate, sCodsrh, sGubun] );


   if (txGetF('GA_APOID_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc
     GetFldVar('S_STRING1'   ,  sApocd      );        // �� �� �� ��
     GetFldVar('S_STRING2'   ,  sApoinm     );        // �� �� ��
     GetFldVar('S_STRING3'   ,  sApodate    );        // �� �� ��
     GetFldVar('S_STRING4'   ,  sEnddate    );        // �߷�����
     GetFldVar('S_STRING5'   ,  sJikjong    );        // �����ڵ�
     GetFldVar('S_STRING6'   ,  sJikjongnm  );        // �� �� ��
     GetFldVar('S_STRING7'   ,  sJikgup     );        // �����ڵ�
     GetFldVar('S_STRING8'   ,  sJikgupnm   );        // �� �� ��
     GetFldVar('S_STRING9'   ,  sJikmu      );        // �����ڵ�(�ź��ڵ�)
     GetFldVar('S_STRING10'  ,  sJikmunm    );        // ������(�źи�)
     GetFldVar('S_STRING11'  ,  sJikchek    );        // ��å�ڵ�
     GetFldVar('S_STRING12'  ,  sJikcheknm  );        // �� å ��
     GetFldVar('S_STRING13'  ,  sJikwe      );        // �����ڵ�
     GetFldVar('S_STRING14'  ,  sJikwenm    );        // �� �� ��
     GetFldVar('S_STRING15'  ,  sJikgun     );        // �����ڵ�
     GetFldVar('S_STRING16'  ,  sJikgunnm   );        // �� �� ��
     GetFldVar('S_STRING17'  ,  sHobong     );        // ȣ    ��
     GetFldVar('S_STRING18'  ,  sDeptcd     );        // �μ��ڵ�
     GetFldVar('S_STRING19'  ,  sDeptnm     );        // �� �� ��
     GetFldVar('S_STRING20'  ,  sWkareacd   );        // �ٹ����ڵ� --> �ٹ��μ��ڵ�
     GetFldVar('S_STRING21'  ,  sWkareacdnm );        // �ٹ����� --> �ٹ��μ���
     GetFldVar('S_STRING22'  ,  sRemtxt     );        // ��    ��
     GetFldVar('S_STRING23'  ,  sConCurYn   );        // �����ֺα���
     GetFldVar('S_STRING24'  ,  sAppotno    );        // ����� ��ȣ
     GetFldVar('S_STRING25'  ,  sWLocate    );        // �ٹ��μ� ����� �ڵ�
     GetFldVar('S_STRING26'  ,  sWkplace    );        // �ٹ���  20060522  

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

function HgaAprovt.ListApprovt18: Integer;
begin

  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���

  SetFldValue(0,[ssLocate,           // ����� �ڵ�
                 ssFromAppdate,      // �����ۼ���
                 ssToAppdate,        // �ۼ� �μ��ڵ�
                 ssMkdeptcd,         // �ۼ��� ���
                 ssDoctype,          // ��������
                 ssAppEmpno          // 20200403 ������
                ]);                  // �α����� ����


  if (txGetF('GA_APROV_L18')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sRefwkcd    );    // �����ڵ�
    GetFldVar('S_STRING9'  , sWksdate    );    // ���½�����
    GetFldVar('S_STRING10' , sWkedate    );    // ����������
    GetFldVar('S_STRING11' , sRemtxt     );    // ���»���
    GetFldVar('S_STRING12' , sCnt        );    // �����ϼ�
    GetFldVar('S_STRING13' , sRettxt     );    // �ݼۻ���
    GetFldVar('S_STRING14' , sAllconyn   );    // �����ϷῩ��
    GetFldVar('S_STRING15' , sChkyn      );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING16' , sGenconid   );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING17' , sEmpnm      );    // ����
    GetFldVar('S_STRING18' , sJikwe      );    // ����
    GetFldVar('S_STRING19' , sWknm       );    // ���¸�
    GetFldVar('S_STRING20' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING21' , sMkempnm    );    // �ۼ��� �̸�     �߰� ���� 2005-12-09
    GetFldVar('S_STRING22' , sANFlag     );    // ����/��ȣ ����  �߰� ���� 2005-12-23

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;  

end;

function HgaOverddt.ListOveddt10: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���

  SetFldValue(0,[ssLocate,          // ����� �ڵ�
                 ssFromAppdate,     // �����ۼ���
                 ssToAppdate,       // �ۼ� �μ��ڵ�
                 ssMkdeptcd,        // �ۼ��� ���
                 ssDoctype,         // ��������
                 ssAppEmpno         // Ư�� ���� ��ȸ ��� 20200403 ������
                            ]);

  if (txGetF('GA_OVEDT_L10')) then              // ga_ovedt_l7.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sWkdate     );    // Ư������
    GetFldVar('S_STRING9'  , sWketime    );    // Ư�ٽ��۽ð�
    GetFldVar('S_STRING10' , sWkstime    );    // Ư������ð�
    GetFldVar('S_STRING11' , sWeekcnt    );    // ����
    GetFldVar('S_STRING12' , sCnt        );    // Ư�ٽð���
    GetFldVar('S_STRING13' , sCntovr     );    // �ð���
    GetFldVar('S_STRING14' , sCntnig     );    // �ɾ�
    GetFldVar('S_STRING15' , sRemtxt     );    // Ư�ٻ���
    GetFldVar('S_STRING16' , sRettxt     );    // �ݼۻ���
    GetFldVar('S_STRING17' , sAllconyn   );    // �����ϷῩ��
    GetFldVar('S_STRING18' , sChkyn      );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING19' , sGenconid   );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING20' , sEmpnm      );    // ����
    GetFldVar('S_STRING21' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING22' , sMkempnm    );    // �ۼ��� �̸�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.ListDutySelect1: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���

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


//���� ����� ���� �ٹ��ڵ� �����ϵ��� ��..
function HgaMdutyt.ListFromDutySelect: Integer;
begin

  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

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

//���� ����� ���� �ٹ��ڵ� �����ϵ��� ��..
function HgaMdutyt.List: Integer;
begin

  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

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


//���� ����� ���� �ٹ��ڵ� �����ϵ��� ��..
function HgaMdutyt.IsRequest: Boolean;
begin

  Result := False;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���

  SetFldValue(0,[ssEmpno,                // �ۼ��ڻ��
                 ssWkyymm]);            // ��������

  if (txGetF('GA_APROL_L9')) then        // ga_aprol_l9.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // �Ǽ�

    if sCnt[0] = '0' then
       Result := False
    else
       Result := True;

    txFree;
  end;

end;




{ HgaGrpmgt }
//SMS �׷����
function HgaGrpmgt.DelMsgGrp: Integer;
var
  ii : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���

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
   SetFldName('S_TYPE1;S_TYPE2;STYPE3'); //service�Էº���

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
 SetFldName('S_TYPE1'); //service�Էº���
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
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���

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
//SMS �׷��Է�
function HgaGrpmgt.InsMsgGrp(): Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10'); //service�Էº���

   SetFldValue(0,[  sLocate          //A1
                  , sGrpcd           //�׷��
                  , sMember          //���(�ɹ��ڵ�)
                  , sMembernm        //����(�ɹ���)
                  , sHponeNo         //�ڵ�����ȣ (default �λ縶����)
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8'); //service�Էº���

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0, [  ssLocate                  // �����
                  , ssAppempno                // ������ ���
                  , ssDoctype                 // ��������
                  , ssSdate                   // �����ۼ���(From)
                  , ssEdate                   // �����ۼ���(To)
                  , ssinsafirstyn             // �ѹ��� ���ʰ����� ���� 'Y', 'N'
                  , ssDeptcd                  // ��ȸ�μ�
                  ]);
                  


  if (txGetF('GA_APROV_L20')) then              // ga_aprov_l16.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , ssnCount   );    // ����� �ڵ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.ListApprovt21: Integer;
begin
  Result := -1;
  txAlloc;                //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service�Էº���

  SetFldValue(0,[ssLocate,
                 ssEmpno,
                 ssMkYymm,
                 ssDocType,
                 ssinsafirstyn,
                 ssDeptcd]);

  if (txGetF('GA_APROV_L21')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , ssnCount     );    // ����� �ڵ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.ListApprovt22: Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0, [  ssLocate                  // �����
                  , ssAppempno                // ������ ���
                  , ssDoctype                 // ��������
                  , ssSdate                   // �����ۼ���(From)
                  , ssEdate                   // �����ۼ���(To)
                  , ssinsafirstyn             // �ѹ��� ���ʰ����� ���� 'Y', 'N'
                  , ssDeptcd                  // ��ȸ�μ�
                  ]);


  if (txGetF('GA_APROV_L22')) then              // ga_aprov_l17.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , ssnCount   );    // ����� �ڵ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;


end;

{ HgaUsgrmt }



function HgaMdutyt.gaUsgrmt_List: Integer;
 begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);

  //ga_mduty_l14.pc
  if (txGetF('GA_MDUTY_L14')) then //ga_mduty_l1.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // �����
    GetFldVar('S_STRING2' ,  sDeptcd   );    // �ҼӺμ�
    GetFldVar('S_STRING3' ,  sEmpno    );    // �����ȣ
    GetFldVar('S_STRING4' ,  sEmpnm    );    // �����
    GetFldVar('S_STRING5' ,  sMkyymm   );    // �ۼ����
    GetFldVar('S_STRING6' ,  sCloseyn  );    // ��������
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 �� �ٹ�
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 �� �ٹ�
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 �� �ٹ�
    GetFldVar('S_STRING10',  sDuty04   );    // 04 �� �ٹ�

    GetFldVar('S_STRING11',  sDuty05   );    // 05 �� �ٹ�
    GetFldVar('S_STRING12',  sDuty06   );    // 06 �� �ٹ�
    GetFldVar('S_STRING13',  sDuty07   );    // 07 �� �ٹ�
    GetFldVar('S_STRING14',  sDuty08   );    // 08 �� �ٹ�
    GetFldVar('S_STRING15',  sDuty09   );    // 09 �� �ٹ�
    GetFldVar('S_STRING16',  sDuty10   );    // 10 �� �ٹ�
    GetFldVar('S_STRING17',  sDuty11   );    // 11 �� �ٹ�
    GetFldVar('S_STRING18',  sDuty12   );    // 12 �� �ٹ�
    GetFldVar('S_STRING19',  sDuty13   );    // 13 �� �ٹ�
    GetFldVar('S_STRING20',  sDuty14   );    // 14 �� �ٹ�

    GetFldVar('S_STRING21',  sDuty15   );    // 15 �� �ٹ�
    GetFldVar('S_STRING22',  sDuty16   );    // 16 �� �ٹ�
    GetFldVar('S_STRING23',  sDuty17   );    // 17 �� �ٹ�
    GetFldVar('S_STRING24',  sDuty18   );    // 18 �� �ٹ�
    GetFldVar('S_STRING25',  sDuty19   );    // 19 �� �ٹ�
    GetFldVar('S_STRING26',  sDuty20   );    // 20 �� �ٹ�
    GetFldVar('S_STRING27',  sDuty21   );    // 21 �� �ٹ�
    GetFldVar('S_STRING28',  sDuty22   );    // 22 �� �ٹ�
    GetFldVar('S_STRING29',  sDuty23   );    // 23 �� �ٹ�
    GetFldVar('S_STRING30',  sDuty24   );    // 24 �� �ٹ�

    GetFldVar('S_STRING31',  sDuty25   );    // 25 �� �ٹ�
    GetFldVar('S_STRING32',  sDuty26   );    // 26 �� �ٹ�
    GetFldVar('S_STRING33',  sDuty27   );    // 27 �� �ٹ�
    GetFldVar('S_STRING34',  sDuty28   );    // 28 �� �ٹ�
    GetFldVar('S_STRING35',  sDuty29   );    // 29 �� �ٹ�
    GetFldVar('S_STRING36',  sDuty30   );    // 30 �� �ٹ�
    GetFldVar('S_STRING37',  sDuty31   );    // 31 �� �ٹ�
    GetFldVar('S_STRING38',  sJikwenm  );    // ������
    GetFldVar('S_STRING39',  sTotvcnt  );    // �ѿ���
    GetFldVar('S_STRING40',  sUsevcnt  );    // ��뿬��

    GetFldVar('S_STRING41',  sAllconyn );    // ����Ϸ� ����
    GetFldVar('S_STRING42',  sAppdate  );    // �ۼ�����
    GetFldVar('S_STRING43',  sMkdeptcd );    // �ۼ��μ�
    GetFldVar('S_STRING44',  sMkempno  );    // �ۼ��ڻ��
    GetFldVar('S_STRING45',  sAppseqno );    // �����Ϸù�ȣ
    GetFldVar('S_STRING46',  sMeddept  );    // ��ȣ�μ��ڵ�       �߰� ���� 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // �ٹ��μ��ڵ�
    GetFldVar('S_STRING48',  sUserid   );    // ��ȣ�μ����userid
    GetFldVar('S_STRING49',  sChkyn    );    // �λ�μ� ����Ϸ� ����
    GetFldVar('S_STRING50',  sDocstep  );    // �����ܰ�
    GetFldVar('S_STRING51',  sDeptNm   );    // �����ܰ�


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;


function HgaUsgrmt.gaUsgrmt_List_D1: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_STYPE3;S_STYPE4'); //service�Էº���

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_STYPE3;S_STYPE4'); //service�Էº���

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���

  SetFldValue(0, [sLocate,sgbn]);

  if (txGetF('GA_USGRP_L2')) then              // GA_USGRT_L1
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' , ssLocate   );    //  ���
    GetFldVar('S_STRING2' , ssdeptnm   );    // ����
    GetFldVar('S_STRING3' , sswkareanm );    // �����
    GetFldVar('S_STRING4' , ssEmpno    );    // ����
    GetFldVar('S_STRING5' , ssEmpnm    );    // �ٹ��μ���
    GetFldVar('S_STRING6' , ssJikwenm  );    // �ҼӺμ���
    GetFldVar('S_STRING7' , ssHphone   );
    GetFldVar('S_STRING8' , ssIntelno  );
    GetFldVar('S_STRING9' , ssRetdt    );    // �������� �߰� 20210616

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

{ HgaHotlnk }
function HgaHotlnk.DelHotLn: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');
   SetFldValue(0,[sLocate,sEmpno,sSDate,sEDate]);

   if (txGetF('GA_APOID_L6')) then begin    //Tuxedo Service Call  ga_apoid_l5.pc
     GetFldVar('S_STRING1'  , sVaCnt    );   // �����Ⱓ �ϼ�

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

//�ٷΰ�༭ ��� �߷����� ��ȸ  20210924 �߰�
function HgaApoid1.SelApoid7():Integer;

begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sEmpno] );

   if (txGetF('GA_APOID_L9')) then begin     //Tuxedo Service Call ga_apoid_l9.pc
     GetFldVar('S_STRING1'   ,  sApocd      );        // �� �� �� ��
     GetFldVar('S_STRING2'   ,  sApoinm     );        // �� �� ��
     GetFldVar('S_STRING3'   ,  sApodate    );        // �� �� ��
     GetFldVar('S_STRING4'   ,  sEnddate    );        // �߷�����
     GetFldVar('S_STRING5'   ,  sHobong     );        // ȣ   ��
     GetFldVar('S_STRING6'   ,  sWkareanm   );        // �� �� ��
     GetFldVar('S_STRING7'   ,  sWkareacd   );        // �ٹ��μ�
     GetFldVar('S_STRING8'   ,  sPreApodate );        // �����߷���
     GetFldVar('S_STRING9'   ,  sPreEnddate );        // ����������
     GetFldVar('S_STRING10'  ,  sJikmu      );        // �����ڵ�
     GetFldVar('S_STRING11'  ,  sJikmunm    );        // �����ڵ��
     GetFldVar('S_STRING12'  ,  sJikjong    );        // �����ڵ�
     GetFldVar('S_STRING13'  ,  sJikjongnm  );        // �� �� ��
     GetFldVar('S_STRING14'  ,  sJikwe      );        // �����ڵ�
     GetFldVar('S_STRING15'  ,  sJikwenm    );        // �� �� ��
     GetFldVar('S_STRING16'  ,  sJikgun     );        // ����
     GetFldVar('S_STRING17'  ,  sJikgunnm   );        // �� �� ��
     GetFldVar('S_STRING18'  ,  sJikchek    );        // ��å 
     GetFldVar('S_STRING19'  ,  sJikcheknm  );        // �� �� ��
     GetFldVar('S_STRING20'  ,  ssApodate   );        // �����߷���
     GetFldVar('S_STRING21'  ,  ssEnddate   );        // �����߷�������
     GetFldVar('S_STRING22'  ,  ssPreapodate);        // ���������߷���
     GetFldVar('S_STRING23'  ,  ssPreenddate);        // ���������߷�������
     GetFldVar('S_STRING24'  ,  ssPreyn     );        // ������������
     GetFldVar('S_STRING25'  ,  ssWkareacd  );        // �����ٹ��μ�
     GetFldVar('S_STRING26'  ,  ssWorktxt   );        // ������������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

//�ٷΰ�༭ ��������  ��ȸ  20211008 �߰�
function HgaDconmt.ListDutycon():Integer;

begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate,sEmpno] );

   if (txGetF('GA_DUCON_L1')) then begin     //Tuxedo Service Call ga_ducon_l1.pc
     GetFldVar('S_STRING1'  ,  ssApodate   );        // �����߷���
     GetFldVar('S_STRING2'  ,  ssEnddate   );        // �����߷�������
     GetFldVar('S_STRING3'  ,  ssPreapodate);        // ���������߷���
     GetFldVar('S_STRING4'  ,  ssPreenddate);        // ���������߷�������
     GetFldVar('S_STRING5'  ,  ssPreyn     );        // ������������
     GetFldVar('S_STRING6'  ,  ssWkareacd  );        // �����ٹ��μ�
     GetFldVar('S_STRING7'  ,  ssWorktxt   );        // ������������

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

//�ٷΰ�༭ ��������  ����  20211011 �߰�
function HgaDconmt.insDutycon: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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

//�ٷΰ�༭ �޿� ��ȸ  20211005 �߰�
function HgaApoid1.Dutysdamt():Integer;

begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
   SetFldValue(0,[sLocate,sPaygbn,sApplyymm,sEmpno] );

   if (txGetF('GA_MSALM_L1')) then begin     //Tuxedo Service Call ga_msalm_l1.pc
     GetFldVar('S_STRING1'   ,  sSdcd        );        // �����ڵ�
     GetFldVar('S_STRING2'   ,  sSdamt       );        // ����ݾ�
     GetFldVar('S_STRING3'   ,  sSdcdnm      );        // �����̸�
     GetFldVar('S_STRING4'   ,  sSdcd1012    );        // ���޼���
     GetFldVar('S_STRING5'   ,  sSdcd1017    );        // ü�¼���
     GetFldVar('S_STRING6'   ,  sSdcd1027    );        // �޽ļ���
     GetFldVar('S_STRING7'   ,  sSdcd1048    );        // �������
     GetFldVar('S_STRING8'   ,  sSdcd1062    );        // Ư����������
     GetFldVar('S_STRING9'   ,  sSdcd1064    );        // �ӻ�������

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
  txAlloc; //Pointer�� �޾ƿ�.

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
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
   SetFldValue(0,[strLocate,strDeptcd,strSinbun,strJikjong,strDate] );

   //ga_dptto_l1.pc
   if (txGetF('GA_DPTTO_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sDeptcd     );        // �� �� �� ��
     GetFldVar('S_STRING2'   ,  sDeptnm     );        // �� �� ��
     GetFldVar('S_STRING3'   ,  sJikmu      );        // �� �� ��
     GetFldVar('S_STRING4'   ,  sJikjong    );        // �߷�����
     GetFldVar('S_STRING5'   ,  sSDATE      );        // �����ڵ�
     GetFldVar('S_STRING6'   ,  sUpdown     );        // �� �� ��
     GetFldVar('S_STRING7'   ,  sDPTTO      );        // �����ڵ�
     GetFldVar('S_STRING8'   ,  sBIGO       );        // �� �� ��

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;


function HgaDptto.SelDiet: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���
   SetFldValue(0,[sLocate,sWkareacd] );

   //ga_dptto_l1.pc
   if (txGetF('GA_DIET_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sEmpno      );        // �� �� �� ��
     GetFldVar('S_STRING2'   ,  sEmpnm      );        // �� �� ��
     GetFldVar('S_STRING3'   ,  sWkareanm   );        // �� �� ��
     GetFldVar('S_STRING4'   ,  sEntdt      );        // �߷�����
     GetFldVar('S_STRING5'   ,  sRetdt      );        // �����ڵ�
     GetFldVar('S_STRING6'   ,  sIdent      );        // �� �� ��

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
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
   SetFldValue(0,[sEmpno, sTalkdate, sLocate] );

   //ga_dptto_l1.pc
   if (txGetF('GA_TALKH_L1')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sGubun      );        // �� �� �� ��
     GetFldVar('S_STRING2'   ,  sEditid     );        // �� �� �� ��
     GetFldVar('S_STRING3'   ,  sTalkdate   );        // �� �� �� ��
     GetFldVar('S_STRING4'   ,  sWritedate   );        // �� �� �� ��
     GetFldVar('S_STRING5'   ,  sTalk     );        // �� �� �� ��
     GetFldVar('S_STRING6'   ,  sTemp1     );        // �� �� �� ��
     GetFldVar('S_STRING7'   ,  sTemp2     );        // �� �� �� ��

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;


function HgaTalkht.SelTalkList: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue(0,[sLocate, sEmpno] );

   //ga_dptto_l1.pc
   if (txGetF('GA_TALKH_L2')) then begin     //Tuxedo Service Call ga_apoid_l1.pc

     GetFldVar('S_STRING1'   ,  sTalkdate      );        // �� �� �� ��
     GetFldVar('S_STRING2'   ,  sGubun         );        // �� �� �� ��
     GetFldVar('S_STRING3'   ,  sTalk          );        // �� �� �� ��
     GetFldVar('S_STRING4'   ,  sTemp1         );        // �� �� �� ��
     GetFldVar('S_STRING5'   ,  sTemp2         );        // �� �� �� ��
     GetFldVar('S_STRING6'   ,  sEditid        );        // �� �� �� ��
     GetFldVar('S_STRING7'   ,  sEditNm        );        // �� �� �� ��
     GetFldVar('S_STRING8'   ,  sGubun1        );        // �� �� �� ��


     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;


function HgaSchult.DelInformat(iCnt: Integer): Integer;
var
 ii : integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
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
  txAlloc; //Pointer�� �޾ƿ�.

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

//Mainȭ���� �μ��� �����ð�, Memo�� ������ ��.
function HgaSchult.MainWorkList: Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
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
   txAlloc32; //Pointer�� �޾ƿ�.

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
   txAlloc32; //Pointer�� �޾ƿ�.

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
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2'); //service�Էº���
   SetFldValue32(0,[ssLocate,ssCodsrh] );

   if (txGetF32('GA_INSAM_L8')) then begin //Tuxedo Service Call  ga_insam_l1.pc
// �⺻����0  ��������
      GetFldVar32('S_STRING1'   , sEmpno       );      // ���ι�ȣ
      GetFldVar32('S_STRING2'   , sLocate      );      // �� �� ��
      GetFldVar32('S_STRING3'   , sLocatenm    );      // �� �� ���
      GetFldVar32('S_STRING4'   , sEmpnm       );      // ��    ��
      GetFldVar32('S_STRING5'   , sEngnm       );      // ��������
      GetFldVar32('S_STRING6'   , sHanmunnm    );      // �ѹ�����
      GetFldVar32('S_STRING7'   , sResno       );      // �ֹε�Ϲ�ȣ
      GetFldVar32('S_STRING8'   , sBorndt      );      // �������
      GetFldVar32('S_STRING9'   , sSolucd      );      // ���籸�� (+��.-��)
      GetFldVar32('S_STRING10'  , sSexcd       );      // ����     (M��.F��)
      GetFldVar32('S_STRING11'  , sJikjong     );      // �����ڵ�
      GetFldVar32('S_STRING12'  , sJikjongnm   );      // ������
      GetFldVar32('S_STRING13'  , sJikgup      );      // �����ڵ�
      GetFldVar32('S_STRING14'  , sJikgupnm    );      // ���޸�
      GetFldVar32('S_STRING15'  , sJikmu       );      // �����ڵ�
      GetFldVar32('S_STRING16'  , sJikmunm     );      // ������
      GetFldVar32('S_STRING17'  , sJikchek     );      // ��å�ڵ�
      GetFldVar32('S_STRING18'  , sJikcheknm   );      // ��å��
      GetFldVar32('S_STRING19'  , sJikwe       );      // �����ڵ�
      GetFldVar32('S_STRING20'  , sJikwenm     );      // ������
      GetFldVar32('S_STRING21'  , sJikgun      );      // �����ڵ�
      GetFldVar32('S_STRING22'  , sJikgunnm    );      // ������
      GetFldVar32('S_STRING23'  , sHobong      );      // ȣ    ��
      GetFldVar32('S_STRING24'  , sWLocate     );      // �ٹ��μ� ������ڵ�
      GetFldVar32('S_STRING25'  , sConType     );      // �������
      GetFldVar32('S_STRING26'  , sDeptcd      );      // �μ��ڵ�
      GetFldVar32('S_STRING27'  , sDeptnm      );      // �μ���
      GetFldVar32('S_STRING28'  , sWkareacd    );      // �� �� ��  => �ٹ��μ�
      GetFldVar32('S_STRING29'  , sWkareanm    );      // �� �� ����  => �ٹ��μ���
      GetFldVar32('S_STRING30'  , sEntdt       );      // �� �� ��(�ӿ�����)
      GetFldVar32('S_STRING31'  , sRetdt       );      // �� �� ��(��������)
      GetFldVar32('S_STRING32'  , sMemyn       );      // ��ȥ����
      GetFldVar32('S_STRING33'  , sMemdt       );      // �� �� ��
      GetFldVar32('S_STRING34'  , sHeadyn      );      // ���忩��
      GetFldVar32('S_STRING35'  , sBohuntyp    );      // ���Ʊ���
      GetFldVar32('S_STRING36'  , sBohungrd    );      // ���Ƶ��
      GetFldVar32('S_STRING37'  , sBohunno     );      // ���ƹ�ȣ
      GetFldVar32('S_STRING38'  , sBohunorg    );      // ������û
      GetFldVar32('S_STRING39'  , sJangtyp     );      // ��ֱ���
      GetFldVar32('S_STRING40'  , sJanggrd     );      // ��ֵ��
      GetFldVar32('S_STRING41'  , sJangno      );      // ����ι�ȣ
      GetFldVar32('S_STRING42'  , sRLocate     );      // ������ �Ҽӻ�����ڵ�
      GetFldVar32('S_STRING43'  , sAddrbon     );      // ����
      GetFldVar32('S_STRING44'  , sSedenm      );      // �����ּ���
      GetFldVar32('S_STRING45'  , sHozunm      );      // ȣ�ּ���
      GetFldVar32('S_STRING46'  , sHozurela    );      // ȣ�ֿ��� ����
      GetFldVar32('S_STRING47'  , sLivtyp      );      // �ְű���
      GetFldVar32('S_STRING48'  , sDongsan     );      // ����
      GetFldVar32('S_STRING49'  , sBudongsa    );      // �ε���
      GetFldVar32('S_STRING50'  , sRgncd       );      // ��������
      GetFldVar32('S_STRING51'  , sHobby       );      // ��    ��
      GetFldVar32('S_STRING52'  , sTalent      );      // Ư    ��
      GetFldVar32('S_STRING53'  , sZip         );      // �ֹε���������ȣ
      GetFldVar32('S_STRING54'  , sZipnm       );      // �ֹε���������ȣ��
      GetFldVar32('S_STRING55'  , sAddr        );      // �ֹε�����ּ�
      GetFldVar32('S_STRING56'  , sCurzip      );      // ���ּҿ����ȣ
      GetFldVar32('S_STRING57'  , sCurzipnm    );      // ���ּҿ����ȣ��
      GetFldVar32('S_STRING58'  , sCuraddr     );      // ���ּ�
      GetFldVar32('S_STRING59'  , sEngaddr     );      // �����ּ�
      GetFldVar32('S_STRING60'  , sTelno       );      // ����ȭ��ȣ
      GetFldVar32('S_STRING61'  , sIntelno     );      // ������ȭ��ȣ
      GetFldVar32('S_STRING62'  , sPagerno     );      // ȣ����ȣ
      GetFldVar32('S_STRING63'  , sHphoneno    );      // �޴�����ȣ
      GetFldVar32('S_STRING64'  , sFaxno       );      // �ѽ���ȣ
      GetFldVar32('S_STRING65'  , sEmail       );      // EMAIL �ּ�
      GetFldVar32('S_STRING66'  , sPreempno    );      // �������ι�ȣ
      GetFldVar32('S_STRING67'  , sMiltype     );      // ��������
      GetFldVar32('S_STRING68'  , sMilkind     );      // ��������
      GetFldVar32('S_STRING69'  , sMilyuk      );      // ��������
      GetFldVar32('S_STRING70'  , sMilyn       );      // �������ʿ���
      GetFldVar32('S_STRING71'  , sMilrsn      );      // �������ʻ���
      GetFldVar32('S_STRING72'  , sMilsrt      );      // �����Ⱓfr
      GetFldVar32('S_STRING73'  , sMilend      );      // �����Ⱓto
      GetFldVar32('S_STRING74'  , sMilgrade    );      // �������
      GetFldVar32('S_STRING75'  , sMilbrnc     );      // ��������
      GetFldVar32('S_STRING76'  , sMilno       );      // ��  ��
      GetFldVar32('S_STRING77'  , sDamdang     );      // ������
      GetFldVar32('S_STRING78'  , sRcmnm       );      // ��õ�μ���
      GetFldVar32('S_STRING79'  , sRcmrel      );      // ��õ�ΰ���
      GetFldVar32('S_STRING80'  , sRcmcoara    );      // ��õ�αٹ�����
      GetFldVar32('S_STRING81'  , sRcmjikwe    );      // ��õ��������
//    GetFldVar32('S_STRING82'  , sRemtxt      );      // �ڱ�Ű����
      GetFldVar32('S_STRING83'  , sApptyp      );      // ä�뱸��
      GetFldVar32('S_STRING84'  , sRstdt       );      // ������
      GetFldVar32('S_STRING85'  , sReturndt    );      // ������
      GetFldVar32('S_STRING86'  , sRstmm       );      // ����������
      GetFldVar32('S_STRING87'  , sTrnstdt     );      // ����������
      GetFldVar32('S_STRING88'  , sTrnenddt    );      // ����������
      GetFldVar32('S_STRING89'  , sWkmm        );      // ������°�����
      GetFldVar32('S_STRING95'  , sRetresn     );      // ��������
      GetFldVar32('S_STRING96'  , sSchship     );      // �����з�
      GetFldVar32('S_STRING97'  , sLicno       );      // �����ȣ
      GetFldVar32('S_STRING98'  , sMajorno     );      // �����ǹ�ȣ
      GetFldVar32('S_STRING99'  , sEditid      );      // ������ ID
      GetFldVar32('S_STRING100' , sEditip      );      // ������ IP
      GetFldVar32('S_STRING101' , sEditdate    );      // ������
      GetFldVar32('S_STRING102' , sDeldate     );      // ������
      GetFldVar32('S_STRING103' , sSggbn       );      // �±ޱ���
      GetFldVar32('S_STRING104' , sDepteng     );      // ����μ���
      GetFldVar32('S_STRING105' , sInternNo    );      // ������ ��ȣ
      GetFldVar32('S_STRING106' , sIntHospNm   );      // ���ϼ��ú���
      GetFldVar32('S_STRING107' , sIntStDt     );      // ���Ͻ�����
      GetFldVar32('S_STRING108' , sIntEnDt     );      // ����������
      GetFldVar32('S_STRING109' , sRegStDt     );      // ������Ʈ ������
      GetFldVar32('S_STRING110' , sRegEnDt     );      // ������Ʈ ������
      GetFldVar32('S_STRING111' , sIntPoint    );      // ����(000000) -> 000/000
      GetFldVar32('S_STRING112' , sIntAve      );      // �������
      GetFldVar32('S_STRING113' , sIntSeats    );      // ����(000000) -> 000/000
      GetFldVar32('S_STRING114' , sIntGrade    );      // ����μ���
      GetFldVar32('S_STRING115' , sInDate      );      // ������
      GetFldVar32('S_STRING116' , sOutDate     );      // ������
      GetFldVar32('S_STRING117' , sPaygbn      );      // ������
      GetFldVar32('S_STRING118' , sInDt        );      // �ٹ�������  �߰� ���� 2005-12-09
      GetFldVar32('S_STRING119' , sDincomeyn   );      // �¹��̿���
      GetFldVar32('S_STRING120' , sWkplace     );      // �ٹ���  �߰� :   2006-05-18

      GetFldVar32('S_STRING121' , sYearsCnt    );      // �ټӳ�� �߰�
      GetFldVar32('S_STRING122' , sMonCnt      );      // �ټӿ��� �߰�
      GetFldVar32('S_STRING123' , sDayCnt      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11
      GetFldVar32('S_STRING124' , sTotCnt      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11

      GetFldVar32('S_STRING125' , sBankcd      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11
      GetFldVar32('S_STRING126' , sAcntno      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11
      GetFldVar32('S_STRING127' , sBanknm      );      // �ټ��ϼ� �߰� gawaguci 2008-03-11


      Result := 1 ;
      txFree32;
   end;
end;


function HgaHolydt.ListHolyday(sMonth: String): Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;'); //service�Էº���
   SetFldValue(0,[sMonth]);

   if (txGetF('GA_HOLYD_L3')) then
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sDay     );    //�����ȣ

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;   


end;

function HgaHolydt.GetHolyday41: Integer; // 2020.01.05 ������ �߰�
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
              'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;' +
              'S_TYPE16;S_TYPE17;');

   SetFldValue(0, [sLocate               // ����� �ڵ�
                ,  sAppdate              // �����ۼ���
                ,  sMkdeptcd             // �ۼ� �μ��ڵ�
                ,  sMkempno              // �ۼ��� ���
                ,  sDoctype              // ��������
                ,  sAppseqno             // �ۼ��Ϸù�ȣ
                ,  sSeqno                // �������
                ,  sAppempno             // ������ ���
                ,  sAppyn                // ���翩��
                ,  sRemtxt               // ���
                ,  sEditid               // �ۼ��� ID
                ,  sEditip               // �ۼ��� IP
                ,  sInsaEmpno            // �λ�μ� ���
                ,  sInsaDpcd             // �λ�μ� �μ��ڵ�
                ,  sFinalyn               // �ѹ�������� ����
                ,  sRettxt               // ��ȯ����
                ,  sFinal_firstyn          // �ѹ��� ���� ������ڿ���
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
        + '/' +'�μ����翩��'+ sAppyn
        + '/' + sRemtxt
        + '/' + sEditid
        + '/' + sEditip
        + '/' + sInsaEmpno
        + '/' + sInsaDpcd
        + '/' +'�������翩��'+ sFinalyn
        + '/' + sRettxt
        + '/' + '�μ� ���� ������ ����'+sFinal_firstyn );
}

//GA_APROV_I14 �ŷ��� ����

   if (txPutF('GA_APROV_I14', 300)) then   //Tuxedo Service Call   ga_aprov_i14.pc
   begin
      Result := 1;
      txFree;
   end;

end;

function HgaMdutyt.IsFirstAppEmp2: Boolean;
begin
  Result := False;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���

  SetFldValue(0,[ssLocate,               // �����
                 ssAppempno,             // �����ڻ��
                 ssEmpno,                // �ۼ��ڻ��
                 ssDoctype]);            // ��������

  if (txGetF('GA_APROL_L8')) then        // ga_aprol_l4.pc
  begin
    GetFldVar('S_STRING1',  sCnt      );    // �Ǽ�

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0, [  ssLocate                  // �����
                  , ssAppempno                // ������ ���
                  , ssDoctype                 // ��������
                  , ssSdate                   // �����ۼ���(From)
                  , ssEdate                   // �����ۼ���(To)
                  , ssinsafirstyn             // �ѹ��� ���ʰ����� ���� 'Y', 'N'
                  , ssDeptcd                  // ��ȸ�μ�
                  ]);

  if (txGetF('GA_APROV_L23')) then              // ga_aprov_l16.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate   );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate  );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd );    // �ۼ��μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno  );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype  );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sSeqno    );    // �������
    GetFldVar('S_STRING8'  , sAppempno );    // ������ ���
    GetFldVar('S_STRING9'  , sAppyn    );    // ���翩��
    GetFldVar('S_STRING10' , sRemtxt   );    // ���
    GetFldVar('S_STRING11' , sEmpnm    );    // ������ ����
    GetFldVar('S_STRING12' , sDeptnm   );    // �μ���
    GetFldVar('S_STRING13' , sDocstep  );    // �ش繮���� ���� ����ܰ�
    GetFldVar('S_STRING14' , sInsayn   );    // �ѹ�������ο���
    GetFldVar('S_STRING15' , sRettxt   );    // �ݼۻ���

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

function HgaAprovt.SaveAprovt13: Integer;
var
  Servernm : String;
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;' +
              'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;' +
              'S_TYPE11;'); //service�Էº���

   SetFldValue(0,[sLocate  ,                  // �����
                  sAppdate ,                  // �����ۼ���(������ ����Ǿ� �ִ� �����ۼ���) => Pro*C ���� �ý��� ��¥�� UPDATE �ȴ�
                  sMkdeptcd,                  // �ۼ� �μ��ڵ�
                  sMkempno ,                  // �ۼ��� ���(�����û�ϴ� ����� ���)
                  sDoctype ,                  // ��������
                  sAppseqno,                  // �ۼ��Ϸù�ȣ(������ȣ)
                  sAppyn   ,                  // ���籸��
                  sEditid  ,                  //
                  sEditip  ,                  //
                  sInsaYn  ,                  // �λ���缱 ���� => ��ûȭ���̹Ƿ� �Ϲݺμ��� ���缱�� Ž
                  sWkareacd]);                // �ۼ��� �ٹ��μ� = ��û�� �ٹ��μ�

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
  txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
   SetFldValue(0,[ssLocate,ssDeptCd,ssSdate,ssEdate]);

  if (txGetF('GA_MDUTYL_L9')) then             // ga_mdutyl_l6.pc
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sEmpno	     );    // ������ ���
    GetFldVar('S_STRING2'  , sEmpnm	     );    // ������ �̸�
    GetFldVar('S_STRING3'  , sDutyDate	 );    // ��������
    GetFldVar('S_STRING4'  , sDutyCode	 );    // �����ڵ�
    GetFldVar('S_STRING5'  , sDutyName	 );    // �����ڵ��
    GetFldVar('S_STRING6'  , sIntelno	   );    // ������ȣ 20061015
    GetFldVar('S_STRING7'  , sPagerno	   );    // ȣ����ȣ 20061015
    GetFldVar('S_STRING8'  , sHphoneno	 );    // �޴�����ȣ 20061015

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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���
  
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
   txAlloc; //Pointer�� �޾ƿ�.
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
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���

  SetFldValue(0,[ssLocate,          // ����� �ڵ�
                 ssAppdate,         // �����ۼ���
                 ssMkdeptcd,        // �ۼ� �μ��ڵ�
                 ssMkempno,         // �ۼ��� ���
                 ssDoctype,         // ��������
                 ssAppseqno,        // �ۼ��Ϸù�ȣ
                 ssLoginuser]);     // �α����� ����


  if (txGetF('GA_APROV_L24')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING5'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING6'  , sDoctype    );    // ��������
    GetFldVar('S_STRING7'  , sEmpno      );    // �����ȣ
    GetFldVar('S_STRING8'  , sRefwkcd    );    // �����ڵ�
    GetFldVar('S_STRING9'  , sWksdate    );    // ���½�����
    GetFldVar('S_STRING10' , sWkedate    );    // ����������
    GetFldVar('S_STRING11' , sRemtxt     );    // ���»���
    GetFldVar('S_STRING12' , sCnt        );    // �����ϼ�
    GetFldVar('S_STRING13' , sRettxt     );    // �ݼۻ���
    GetFldVar('S_STRING14' , sAllconyn   );    // �����ϷῩ��
    GetFldVar('S_STRING15' , sChkyn      );    // �λ���Ȯ�ο���
    GetFldVar('S_STRING16' , sGenconid   );    // �λ�μ� Ȯ����
    GetFldVar('S_STRING17' , sEmpnm      );    // ����
    GetFldVar('S_STRING18' , sJikwe      );    // ����
    GetFldVar('S_STRING19' , sWknm       );    // ���¸�
    GetFldVar('S_STRING20' , sDeptnm     );    // �μ���
    GetFldVar('S_STRING21' , sMkempnm    );    // �ۼ��� �̸�     �߰� ���� 2005-12-09
    GetFldVar('S_STRING22' , sANFlag     );    // ����/��ȣ ����  �߰� ���� 2005-12-23
    GetFldVar('S_STRING23' , sBefwkcd    );    // ����/��ȣ ����  �߰� ���� 2005-12-23


    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaAprovt.ListApprovt25: Integer;
begin
 Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���

  SetFldValue(0,[ssLocate,
                 ssSDate,
                 ssEDate,
                 ssDocType,
                 ssMkDeptcd,
                 ssMkEmpno]);

  if (txGetF('GA_APROV_L25')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�
    GetFldVar('S_STRING2'  , sAppdate    );    // �����ۼ���
    GetFldVar('S_STRING3'  , sMkdeptcd   );    // �ۼ� �μ��ڵ�
    GetFldVar('S_STRING4'  , sMkempno    );    // �ۼ��� ���
    GetFldVar('S_STRING5'  , sDoctype    );    // ��������
    GetFldVar('S_STRING6'  , sAppseqno   );    // �ۼ��Ϸù�ȣ
    GetFldVar('S_STRING7'  , sEmpnm      );    // �ۼ��� ����
    GetFldVar('S_STRING8'  , sDeptnm     );    // �μ���
    GetFldVar('S_STRING9'  , sRettxt     );    // ��ȯ����
    GetFldVar('S_STRING10' , sDocstep    );    // �����ܰ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

{ HgaStatst }
function HgaStatst.SelChaStatst: Integer;
begin
 Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;');   //service�Էº���
  SetFldValue(0,[sLocate, sYyyymm, sPremm, sFlag]); //locate, '200806', '200805', 'A'

  if (txGetF('')) then
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1'  , sLocate     );    // ����� �ڵ�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;

end;

{ HgaOutamt }

function HgaOutamt.GetUseridSelect: Integer;
begin
 Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;'); //service�Էº���

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
   txAlloc; //Pointer�� �޾ƿ�.
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
//20210602 ������ ���� ��������
function HgbSndSms.SndMsgText(iCnt: Integer): Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6'); //service�Էº���

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

//20210611 ������ �߱�  ��������
function HgbSndSms.SndMsgText2(iCnt: Integer): Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[Code1, Code2, Code3, Code4] );

   if (txGetF('GA_COMCD_L12')) then       // Tuxedo Service Call
   begin
      GetFldVar('S_STRING1', sCode);     // ���±����ڵ�
      GetFldVar('S_STRING2', sCodeName); // ���±����ڵ��
      GetFldVar('S_STRING3', sFlag);     // ����/��ȣ ���� �߰� ���� 2005-12-23
      GetFldVar('S_STRING4', sWktime);     // ����/��ȣ ���� �߰� ���� 2005-12-23

      Result := GetRecordCnt('S_STRING1');

      txFree;
   end;
end;

{ HgaAccid }

function HgaAccid.delAccid: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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

// 2009.6.10 ��â�� �ۼ� - �⵵�� ���߻� ��Ȳ
function HgaAccid.ListMon4 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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

// 2009.6.10 ��â�� �ۼ� - ���κ� ���߻� ��Ȳ
function HgaAccid.ListMon5 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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

// 2009.6.10 ��â�� �ۼ� - ������ ���߻� ��Ȳ
function HgaAccid.ListMon6 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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

// 2009.6.10 ��â�� �ۼ� - ��º� �ֻ�ħ �ڻ� �߻� ��Ȳ
function HgaAccid.ListMon7 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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


// 2009.6.10 ��â�� �ۼ� - ���� ������  ���߻� ��Ȳ
function HgaAccid.ListMon2 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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


// 2009.6.10 ��â�� �ۼ� - ��º� ���߻� ��Ȳ
function HgaAccid.ListMon3 : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���  //20161114 LEE S_TYPE5 �߰�
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
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName(
              'S_TYPE1;S_TYPE8;S_TYPE11;S_TYPE14;S_TYPE15'
              );
   SetFldValue(0 ,[sLocate,ssYYYY,sChoice,ssEditid,ssEditip]);     //20150918 ������ ,sEntdt,sGrudt �߰�

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
   txAlloc; //Pointer�� �޾ƿ�.

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
      GetFldVar('S_STRING4', sEmpid);   //20150506 lee �߰�
      GetFldVar('S_STRING5', sMkdate);  //20150512 lee �߰�
      GetFldVar('S_STRING6', sVusecnt); //20150610 lee �߰�
      GetFldVar('S_STRING7', sAusecnt); //20150618 lee �߰�
      Result := 1;
      txFree;
   end;


end;

function HgaDocvat.insDocvat1: Integer;
begin
//

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName(
              'S_TYPE1;S_TYPE2;S_TYPE3;'+
              'S_TYPE4;S_TYPE5;S_TYPE6;'+
              'S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13'
              );
   SetFldValue(0 ,[sLocate,sEmpno,sVtype,
                   sVtotcnt,sVusecnt,sVmodcnt,
                   sVremcnt,sYYYY,sVremark,sVtype1,sChoice,sEntdt,sGrudt]);     //20150918 ������ ,sEntdt,sGrudt �߰�

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
   txAlloc; //Pointer�� �޾ƿ�.

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
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName(
               'S_TYPE1;S_TYPE2;S_TYPE3;' +
               'S_TYPE4;S_TYPE5;S_TYPE6;' +
               'S_TYPE7;S_TYPE8;S_TYPE9;' +
               'S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13;' +
               'S_TYPE14;S_TYPE15;S_TYPE16;S_TYPE17'       //20150514 LEE
              ); //service�Էº���

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
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName(
               'S_TYPE1;S_TYPE2;S_TYPE3;' +
               'S_TYPE4;S_TYPE5;S_TYPE6;' +
               'S_TYPE7;S_TYPE8;S_TYPE9;' +
               'S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13'
              ); //service�Էº���

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

   //20150602 LEE ������ȣ�� ���� �����ϰ� ���������ʹ� �����ؼ� �����ϴ� ���� ¥��...

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.

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
   txAlloc; //Pointer�� �޾ƿ�.

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

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.

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
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName(
               'S_TYPE1;S_TYPE2;S_TYPE3;' +
               'S_TYPE4'
              ); //service�Էº���

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
    txAlloc32; //Pointer�� �޾ƿ�.
    SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
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
           GetFldVar32('S_STRING13'  , sAppdate0    ); //20150615 LEE �߰�
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
    txAlloc32; //Pointer�� �޾ƿ�.
    SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
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

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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
   txAlloc; //Pointer�� �޾ƿ�.
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
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
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
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');                      //20150611 LEE sVcnt1, sAcnt1 �߰�

    SetFldValue(0,[ssYYYY,ssVtype,ssDocno,sVcnt1,sAcnt1,ssEmpno]);                      //20150611 LEE sVcnt1, sAcnt1 �߰�
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

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6'); //service�Էº���
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
        GetFldVar('S_STRING14'  , sDocstep  );    //20150423 LEE �߰�

        GetFldVar('S_STRING15'  , sVdetail  );    //20150426 LEE �߰�
        GetFldVar('S_STRING16'  , sImpactfr );    //20150426 LEE �߰�
        GetFldVar('S_STRING17'  , sReldoc   );    //20150426 LEE �߰�
        GetFldVar('S_STRING18'  , sAdocYN   );    //20150426 LEE �߰�
        GetFldVar('S_STRING19'  , sAfromdate);    //20150426 LEE �߰�
        GetFldVar('S_STRING20'  , sAtodate  );    //20150426 LEE �߰�
        GetFldVar('S_STRING21'  , sAusecnt  );    //20150426 LEE �߰�
        GetFldVar('S_STRING22'  , sVtypecd  );    //20150426 LEE �߰�
        GetFldVar('S_STRING23'  , sYYYY     );    //20150426 LEE �߰�
        GetFldVar('S_STRING24'  , sTelno    );    //20150506 LEE �߰�
        GetFldVar('S_STRING25'  , sHphoneno );    //20150506 LEE �߰�
        GetFldVar('S_STRING26'  , sSubsign  );    //20150514 LEE �߰�
        GetFldVar('S_STRING27'  , sAppRemark);    //20150515 LEE �߰�
        GetFldVar('S_STRING28'  , sCdocyn   );    //20150603 LEE �߰�
        GetFldVar('S_STRING29'  , sRemark   );    //20150718 LEE �߰�

        GetFldVar('S_STRING30'  , sAppEmpno1);    //20150824 LEE �߰�
        GetFldVar('S_STRING31'  , sAppEmpno2);    //20150824 LEE �߰�
        GetFldVar('S_STRING32'  , sAppEmpno3);    //20150824 LEE �߰�
        GetFldVar('S_STRING33'  , sAppEmpno4);    //20150824 LEE �߰�
        GetFldVar('S_STRING34'  , sAppyn1   );    //20150824 LEE �߰�
        GetFldVar('S_STRING35'  , sAppyn2   );    //20150824 LEE �߰�
        GetFldVar('S_STRING36'  , sAppyn3   );    //20150824 LEE �߰�
        GetFldVar('S_STRING37'  , sAppyn4   );    //20150824 LEE �߰�
        GetFldVar('S_STRING38'  , sAppdate1 );    //20150824 LEE �߰�
        GetFldVar('S_STRING39'  , sAppdate2 );    //20150824 LEE �߰�
        GetFldVar('S_STRING40'  , sAppdate3 );    //20150824 LEE �߰�
        GetFldVar('S_STRING41'  , sAppdate4 );    //20150824 LEE �߰�
        GetFldVar('S_STRING42'  , sJikmu    );    //20161108 LEE �߰�  

        Result := GetRecordCnt('S_STRING1');
        txFree;

    end;

end;



function HgaDocvat.SelSubDrInfo1: Integer;
begin
//
    Result := -1;

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
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

    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2'); //service�Էº���
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
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7'); //service�Էº���
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
      GetFldVar32('S_STRING31'  , sCdocyn    );   //20150604 LEE �߰�
      GetFldVar32('S_STRING32'  , sJikmu     );   //20161104 LEE �߰�        

      Result := GetRecordCnt('S_STRING1');
      txFree32;
    end;

end;


//20161104 LEE ������/���� �߰��� ���� �ǻ��̸� ��ȸ �κ� ��ü ����
function HgaDocvat.SelDrNm_New: Integer;
begin
//

    Result := -1;
    txAlloc;                          //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2');    //service�Էº���
    SetFldValue(0,[sType1,sType2]);
    if (txGetF('GA_DOCVA_L21')) then  //ga_docva_l21.pc
    begin

        GetFldVar('S_STRING1'     , sEmpno   );
        GetFldVar('S_STRING2'     , sWkareacd);
        GetFldVar('S_STRING3'     , sEmpnm   );
        GetFldVar('S_STRING4'     , sJikmu   );  //20161109 LEE �߰�
        GetFldVar('S_STRING5'     , sEmpid   );  //20161110 LEE �߰�

        Result := GetRecordCnt('S_STRING1');
        txFree;
    end;


end;


function HgaInsamt.List2GaInsamt2: integer;
begin
//
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');

    SetFldValue(0,[sType1,                               // �����
                   sType2,                               // �μ�����
                   sType3,                               // �μ�
                   SType4                                // ��ȸ������
                   //,SType5                             // 20151105 lee �߰� : ��ȸ����(D ������ ��ȸ N �ش���ǻ���ȸ)
                  ] );

    if (txGetF('GA_DOCVA_L9')) then
    begin                                                 // Tuxedo Service Call ga_docva_l9.pc
        GetFldVar('S_STRING1'  , sEmpno             );    // ���
        GetFldVar('S_STRING2'  , sEmpnm             );    // ����
        GetFldVar('S_STRING3'  , sJikjongnm         );    // ����
        GetFldVar('S_STRING4'  , sJikwenm           );    // ����
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
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
   SetFldValue32(0,[ssLocate,ssMkdate,ssDocNo,ssFlag]);

       if (txGetF32('GA_INSAM_L19')) then //ga_insam_l19.pc
       begin
           if (ssFlag = 'A') or
              (ssFlag = 'VV') or         //20150414 LEE �߰�
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
                   (ssFlag = 'V2')      //20150414 LEE �߰�
           then
           begin
              GetFldVar32('S_STRING1'   , sAppseqno     );
              GetFldVar32('S_STRING2'   , sAppempno     );
              GetFldVar32('S_STRING3'   , sAppEmpnm     );
              GetFldVar32('S_STRING4'   , sRemtxt       );
           end
           else if ssFlag = 'V' then                                            //20150414 LEE �߰�
           begin
              GetFldVar32('S_STRING1'   , sEmpno        );
              GetFldVar32('S_STRING2'   , sEmpnm        );
              GetFldVar32('S_STRING3'   , sApodate      );
              GetFldVar32('S_STRING4'   , sEnddate      );
              GetFldVar32('S_STRING5'   , sAcaname      );
              GetFldVar32('S_STRING6'   , sAcaplace     );
              GetFldVar32('S_STRING7'   , sRemtxt       );
              GetFldVar32('S_STRING8'   , sVtype        );
              GetFldVar32('S_STRING9'   , sMeddept      );                      //20150619 LEE �߰�
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
(***** Ÿ��� ���� ���� ���� ���� 2018-04-16 *****)
function HgaGyeolhack.DelGyeolhack: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt, ssGJType]);

   if (txPutF('GA_EMPMDGH_D1')) then  // ga_empmdgh_d1.pc
   begin
      Result := 1;
      txFree;
   end;

end;

{ ������ 2019-03-19 }
function HgaGyeolhack.DelChaeYong: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt, ssGJType]);

   if (txPutF('GA_EMPMDCY_D1')) then  // ga_empmdcy_d1.pc
   begin
      Result := 1;
      txFree;
   end;

end;


{ ������ 2019-03-19 }
function HgaGyeolhack.DelYeBang: Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;');

   SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt, ssGJType]);

   if (txPutF('GA_EMPMDYB_D1')) then  // ga_empmdyb_d1.pc
   begin
      Result := 1;
      txFree;
   end;

end;


(***** Ÿ��� ���� ���� ���� �Է�/���� *****)
function HgaGyeolhack.InsUpdGyeolhack: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;' +
             'S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;' +
             'S_TYPE10;S_TYPE11;');  //������ �߰�
  SetFldValue(0, [ssEmpno, ssLoc, ssExamDate, ssSDateCnt,
                  sExamDate, sExamHspt, sExamName, sExamRslt, sExamMemo,
                  sChoice, ssGJType]); //������ �߰�

   if (txPutF('GA_EMPMDGH_I1')) then   // ga_empmdgh_i1.pc
   begin
      Result := 1;
      txFree;
   end;

end;

(***** (������ 2019-03-18 �߰�) ä�� ���� ���� �Է�/���� *****)
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


(***** (������ 2019-03-19 �߰�) �������� ���� �Է�/���� *****)
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

// �������� �������ε� �߰� (������ 2019-05-03)
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

(***** ��� ���� ���� ���� ��ȸ (������,�д���,����Ｚ,Ÿ���) *****)
function HgaGyeolhack.SelGyeolhack: Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');  //(������ 2019-03-18 �߰�)
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

(***** ä����� - ��ȸ *****)
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
    GetFldVar('S_STRING6', sSDateCnt); //(������ 2019-03-18 �߰�)

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

(***** �������� - ��ȸ *****)
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
    GetFldVar('S_STRING6', sSDateCnt); //(������ 2019-03-18 �߰�)

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// ���ο������� ���- ��ȸ///////
//////// 2019-09-20 ������ ////////////
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
//////// MMR�������� ���- ��ȸ///////
//////// 2019-09-20 ������ ////////////
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
//////// �����ؿ������� ���- ��ȸ///////
//////// 2019-09-20 ������ ////////////
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
//////// B�������������� ���- ��ȸ////
//////// 2019-09-20 ������ ////////////
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
///// ���÷翣�ڿ������� ���- ��ȸ////
//////// 2019-09-20 ������ ////////////
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
//////// ���ٰ���1 ���- ��ȸ//////////
//////// 2019-09-20 ������ ////////////
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
//////// ���ٰ���2 ���- ��ȸ//////////
//////// 2019-09-20 ������ ////////////
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
////// �ڷγ�19�˻�  ���- ��ȸ//////
////// 2020-10-12 ������  ///////////
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
////// �ڷγ�19�������� ���- ��ȸ///
////// 2021-05-10 ������  ///////////
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

{������ �߰� 2019.03.29 �����
function HgaMdutyt.SelDocDuty : Integer;
var
  ii, jj : Integer;
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�

  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE8;');
  SetFldValue(0, [sDeptcd, sEmpno, sStartDay, sLastDay, sEndDay, ssYYMM, ssWkyymm]);

  SetFldName('S_TYPE7;');
  for ii:=1 to 31 do
  begin
   SetFldValue(ii, [sDuty[ii]]);
  end;


  ShowMessage('���Ͻ� ��');
  if(txGetF('GA_DOCDTY_L1')) then
  begin
    ShowMessage('���� ����');

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

function HgaMdutyt.SelMDutyt20: Integer; // 2020.01.05 ������ �߰�
begin
 Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);

  //ga_mduty_l20.pc
  if (txGetF('GA_MDUTY_L30')) then //ga_mduty_l20.pc -> ga_mduty_l30.pc 20200318 OJE
  begin     //Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // �����
    GetFldVar('S_STRING2' ,  sDeptcd   );    // �ҼӺμ�
    GetFldVar('S_STRING3' ,  sEmpno    );    // �����ȣ
    GetFldVar('S_STRING4' ,  sEmpnm    );    // �����
    GetFldVar('S_STRING5' ,  sMkyymm   );    // �ۼ����
    GetFldVar('S_STRING6' ,  sCloseyn  );    // ��������
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 �� �ٹ�
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 �� �ٹ�
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 �� �ٹ�
    GetFldVar('S_STRING10',  sDuty04   );    // 04 �� �ٹ�

    GetFldVar('S_STRING11',  sDuty05   );    // 05 �� �ٹ�
    GetFldVar('S_STRING12',  sDuty06   );    // 06 �� �ٹ�
    GetFldVar('S_STRING13',  sDuty07   );    // 07 �� �ٹ�
    GetFldVar('S_STRING14',  sDuty08   );    // 08 �� �ٹ�
    GetFldVar('S_STRING15',  sDuty09   );    // 09 �� �ٹ�
    GetFldVar('S_STRING16',  sDuty10   );    // 10 �� �ٹ�
    GetFldVar('S_STRING17',  sDuty11   );    // 11 �� �ٹ�
    GetFldVar('S_STRING18',  sDuty12   );    // 12 �� �ٹ�
    GetFldVar('S_STRING19',  sDuty13   );    // 13 �� �ٹ�
    GetFldVar('S_STRING20',  sDuty14   );    // 14 �� �ٹ�

    GetFldVar('S_STRING21',  sDuty15   );    // 15 �� �ٹ�
    GetFldVar('S_STRING22',  sDuty16   );    // 16 �� �ٹ�
    GetFldVar('S_STRING23',  sDuty17   );    // 17 �� �ٹ�
    GetFldVar('S_STRING24',  sDuty18   );    // 18 �� �ٹ�
    GetFldVar('S_STRING25',  sDuty19   );    // 19 �� �ٹ�
    GetFldVar('S_STRING26',  sDuty20   );    // 20 �� �ٹ�
    GetFldVar('S_STRING27',  sDuty21   );    // 21 �� �ٹ�
    GetFldVar('S_STRING28',  sDuty22   );    // 22 �� �ٹ�
    GetFldVar('S_STRING29',  sDuty23   );    // 23 �� �ٹ�
    GetFldVar('S_STRING30',  sDuty24   );    // 24 �� �ٹ�

    GetFldVar('S_STRING31',  sDuty25   );    // 25 �� �ٹ�
    GetFldVar('S_STRING32',  sDuty26   );    // 26 �� �ٹ�
    GetFldVar('S_STRING33',  sDuty27   );    // 27 �� �ٹ�
    GetFldVar('S_STRING34',  sDuty28   );    // 28 �� �ٹ�
    GetFldVar('S_STRING35',  sDuty29   );    // 29 �� �ٹ�
    GetFldVar('S_STRING36',  sDuty30   );    // 30 �� �ٹ�
    GetFldVar('S_STRING37',  sDuty31   );    // 31 �� �ٹ�
    GetFldVar('S_STRING38',  sJikwenm  );    // ������
    GetFldVar('S_STRING39',  sTotvcnt  );    // �ѿ���
    GetFldVar('S_STRING40',  sUsevcnt  );    // ��뿬��

    GetFldVar('S_STRING41',  sAllconyn );    // ����Ϸ� ����
    GetFldVar('S_STRING42',  sAppdate  );    // �ۼ�����
    GetFldVar('S_STRING43',  sMkdeptcd );    // �ۼ��μ�
    GetFldVar('S_STRING44',  sMkempno  );    // �ۼ��ڻ��
    GetFldVar('S_STRING45',  sAppseqno );    // �����Ϸù�ȣ
    GetFldVar('S_STRING46',  sMeddept  );    // ��ȣ�μ��ڵ�       �߰� ���� 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // �ٹ��μ��ڵ�
    GetFldVar('S_STRING48',  sUserid   );    // ��ȣ�μ����userid
    GetFldVar('S_STRING49',  sChkyn    );    // �λ�μ� ����Ϸ� ����
    GetFldVar('S_STRING50',  sDocstep  );    // �����ܰ�
    GetFldVar('S_STRING51',  sWkareacdnm  );    // �����ܰ�
    GetFldVar('S_STRING52',  sHobong   );    //

    GetFldVar('S_STRING53',  sDutytime );    //
    GetFldVar('S_STRING54',  sDutytime1);    //
    GetFldVar('S_STRING55',  sMagamyn  );    // �������踶������ 20170523 LEE
    GetFldVar('S_STRING56',  sNdutytime);    // 1.5����½ð� 20171128 LEE

    GetFldVar('S_STRING57',  sDutytime11);   // 2018�����  20171128 LEE
    GetFldVar('S_STRING58',  sNdutytime1);   // 1.5����½ð� 2018�����  20171128 LEE
    GetFldVar('S_STRING59',  sYearcnt);      // �����ǿ���ī��Ʈ 2018�����  20171128 LEE

    GetFldVar('S_STRING60',  sDuty90);      // �����ǿ���ī��Ʈ 2018�����  20171128 LEE
    GetFldVar('S_STRING61',  sDuty91);      // �����ǿ���ī��Ʈ 2018�����  20171128 LEE
    GetFldVar('S_STRING62',  sNtmcnt);      // 20210726 ������ �ɾ߽ð� �߰�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

function HgaMdutyt.SelMdutyt8: Integer; // 2020.01.05 ������ �߰�
begin
 Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
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

function HgaMdutyt.GetCalendar2: Integer; // 2020.01.05 ������ �߰�
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���

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

function HgaMdutyt.GetCalendar1: Integer; // 2020.01.05 ������ �߰�
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���

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

function HgaMdutyt.GetCalendar3: Integer; // 2020.01.05 ������ �߰�
begin
//
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���

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

function HgaMdutyt.SaveMDutyt4: Integer; // 2020.01.05 ������ �߰�
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.

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

function HgaMdutyt.SelMdutyt26: Integer; // 2020.01.05 ������ �߰�
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
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

function HgaMdutyt.SelMdutyt26_1: Integer;  // 2020.01.05 ������ �߰�
begin

    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
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

function HgaMdutyt.SelMdutyt22: Integer; // 2020.01.05 ������ �߰�
begin
  Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //service�Էº���
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

function HgaMdutyt.SelMdutyt8n: Integer; // 2020.01.05 ������ �߰�
begin

    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
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

function HgaMdutyt.SelMdutyt9: Integer; // 2020.01.05 ������ �߰�
begin
//

    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;'); //service�Էº���
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

function HgaMdutyt.SaveMDutyt9: Integer; // 2020.01.05 ������ �߰�
begin

    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
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

function HgaMdutyt.CloseDuty: Integer; // 2020.01.05 ������ �߰�
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

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

function HgaMdutyt.SelMDutyt21: Integer; // 2020.01.05 ������ �߰�
begin
 Result := -1;
  txAlloc; //Pointer�� �޾ƿ�.
  SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4'); //service�Էº���
  SetFldValue(0,[ssLocate, ssYYMM, ssDeptcd, ssFlag]);

  //ga_mduty_l21.pc
  if (txGetF('GA_MDUTY_L29')) then
  begin                                      // Tuxedo Service Call
    GetFldVar('S_STRING1' ,  sLocate   );    // �����
    GetFldVar('S_STRING2' ,  sDeptcd   );    // �ҼӺμ�
    GetFldVar('S_STRING3' ,  sEmpno    );    // �����ȣ
    GetFldVar('S_STRING4' ,  sEmpnm    );    // �����
    GetFldVar('S_STRING5' ,  sMkyymm   );    // �ۼ����
    GetFldVar('S_STRING6' ,  sCloseyn  );    // ��������
    GetFldVar('S_STRING7' ,  sDuty01   );    // 01 �� �ٹ�
    GetFldVar('S_STRING8' ,  sDuty02   );    // 02 �� �ٹ�
    GetFldVar('S_STRING9' ,  sDuty03   );    // 03 �� �ٹ�
    GetFldVar('S_STRING10',  sDuty04   );    // 04 �� �ٹ�

    GetFldVar('S_STRING11',  sDuty05   );    // 05 �� �ٹ�
    GetFldVar('S_STRING12',  sDuty06   );    // 06 �� �ٹ�
    GetFldVar('S_STRING13',  sDuty07   );    // 07 �� �ٹ�
    GetFldVar('S_STRING14',  sDuty08   );    // 08 �� �ٹ�
    GetFldVar('S_STRING15',  sDuty09   );    // 09 �� �ٹ�
    GetFldVar('S_STRING16',  sDuty10   );    // 10 �� �ٹ�
    GetFldVar('S_STRING17',  sDuty11   );    // 11 �� �ٹ�
    GetFldVar('S_STRING18',  sDuty12   );    // 12 �� �ٹ�
    GetFldVar('S_STRING19',  sDuty13   );    // 13 �� �ٹ�
    GetFldVar('S_STRING20',  sDuty14   );    // 14 �� �ٹ�

    GetFldVar('S_STRING21',  sDuty15   );    // 15 �� �ٹ�
    GetFldVar('S_STRING22',  sDuty16   );    // 16 �� �ٹ�
    GetFldVar('S_STRING23',  sDuty17   );    // 17 �� �ٹ�
    GetFldVar('S_STRING24',  sDuty18   );    // 18 �� �ٹ�
    GetFldVar('S_STRING25',  sDuty19   );    // 19 �� �ٹ�
    GetFldVar('S_STRING26',  sDuty20   );    // 20 �� �ٹ�
    GetFldVar('S_STRING27',  sDuty21   );    // 21 �� �ٹ�
    GetFldVar('S_STRING28',  sDuty22   );    // 22 �� �ٹ�
    GetFldVar('S_STRING29',  sDuty23   );    // 23 �� �ٹ�
    GetFldVar('S_STRING30',  sDuty24   );    // 24 �� �ٹ�

    GetFldVar('S_STRING31',  sDuty25   );    // 25 �� �ٹ�
    GetFldVar('S_STRING32',  sDuty26   );    // 26 �� �ٹ�
    GetFldVar('S_STRING33',  sDuty27   );    // 27 �� �ٹ�
    GetFldVar('S_STRING34',  sDuty28   );    // 28 �� �ٹ�
    GetFldVar('S_STRING35',  sDuty29   );    // 29 �� �ٹ�
    GetFldVar('S_STRING36',  sDuty30   );    // 30 �� �ٹ�
    GetFldVar('S_STRING37',  sDuty31   );    // 31 �� �ٹ�
    GetFldVar('S_STRING38',  sJikwenm  );    // ������
    GetFldVar('S_STRING39',  sTotvcnt  );    // �ѿ���
    GetFldVar('S_STRING40',  sUsevcnt  );    // ��뿬��

    GetFldVar('S_STRING41',  sAllconyn );    // ����Ϸ� ����
    GetFldVar('S_STRING42',  sAppdate  );    // �ۼ�����
    GetFldVar('S_STRING43',  sMkdeptcd );    // �ۼ��μ�
    GetFldVar('S_STRING44',  sMkempno  );    // �ۼ��ڻ��
    GetFldVar('S_STRING45',  sAppseqno );    // �����Ϸù�ȣ
    GetFldVar('S_STRING46',  sMeddept  );    // ��ȣ�μ��ڵ�       �߰� ���� 2006-01-09
    GetFldVar('S_STRING47',  sWkareacd );    // �ٹ��μ��ڵ�
    GetFldVar('S_STRING48',  sUserid   );    // ��ȣ�μ����userid
    GetFldVar('S_STRING49',  sChkyn    );    // �λ�μ� ����Ϸ� ����
    GetFldVar('S_STRING50',  sDocstep  );    // �����ܰ�
    GetFldVar('S_STRING51',  sWkareacdnm  );    // �����ܰ�
    GetFldVar('S_STRING52',  sHobong   );    //

    GetFldVar('S_STRING53',  sDutytime );    //
    GetFldVar('S_STRING54',  sDutytime1);    //
    GetFldVar('S_STRING55',  sMagamyn  );    // �������踶������ 20170523 LEE
    GetFldVar('S_STRING56',  sNdutytime);    // 1.5����½ð� 20171128 LEE

    GetFldVar('S_STRING57',  sDutytime11);   // 2018�����  20171128 LEE
    GetFldVar('S_STRING58',  sNdutytime1);   // 1.5����½ð� 2018�����  20171128 LEE
    GetFldVar('S_STRING59',  sYearcnt   );   // �����ǿ���ī��Ʈ 2018�����  20171128 LEE
    GetFldVar('S_STRING60',  sNtmcnt    );   // 20210726 ������ �ɾ߽ð� �߰�

    Result := GetRecordCnt('S_STRING1');
    txFree;
  end;
end;

///////////////////////////////////////
//////// �����⵵�� ���- ��ȸ/////////
//////// 2020-04-20 ������ ////////////
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

// ȣ�� Check 20200507 ������ �߰�
// '�Է��� ȣ��' vs '�߷ɻ��׳��� MAX ȣ��' �� ū �� RETURN
function HgaApoid1.CheckHobong : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;'); //service�Էº���
   SetFldValue(0,[sEmpno, sHobong]);

   if (txGetF('GA_APOID_L8')) then //ga_apoid_l8.pc
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1' , sMaxHobong     );    //�����ȣ

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

{===============================================================================
   HgaFamld1 Ÿ��� ������ ��� ��������
   ��ȸ
   �ۼ��� : ������  2020-05-18
===============================================================================}
function HgaFamld1.SelFamld2():Integer; //��� �������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh, sChoice] );

   if (txGetF('GA_FAMLD_L2')) then begin //Tuxedo Service Call 'ga_famld_l1.pc'
       GetFldVar('S_STRING1'   , sResno	   );        //���� �ֹι�ȣ
       GetFldVar('S_STRING2'   , sFmlynm   );        //��������
       GetFldVar('S_STRING3'   , sRelcd    );        //���������ڵ�
       GetFldVar('S_STRING4'   , sRelcdnm  );        //���������
       GetFldVar('S_STRING5'   , sSupcd    );        //�ξ籸��
       GetFldVar('S_STRING6'   , sSchship  );        //�����з��ڵ�
       GetFldVar('S_STRING7'   , sSchshipnm);        //�����з¸�
       GetFldVar('S_STRING8'   , sJob      );        //����
       GetFldVar('S_STRING9'   , sSdyn     );        //�������޴�� ����===> ���������� �ݿ�
       GetFldVar('S_STRING10'  , sDedyn    );        //����񰨸鿩
       GetFldVar('S_STRING11'  , sMinsutyp );        //�ǷẸ�豸��
       GetFldVar('S_STRING12'  , sRsdyn    );        //���ſ���
       GetFldVar('S_STRING13'  , sInjuryyn );        //����ο���
       GetFldVar('S_STRING14'  , sFmleditid);        //�������� ������ 20140626 ���ö �߰�
       GetFldVar('S_STRING15'  , sFmleditdate);      //�������� ������ 20140626 ���ö �߰�
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
   HgaSchod1 Ÿ��� ������ ��� �з�����
   ��ȸ
   �ۼ��� : ������  2020-05-18
 ===============================================================================
}
function HgaSchod1.SelSchod2():Integer; //��� �з����� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh,sChoice] );

   if (txGetF('GA_SCHOD_L2')) then begin     //Tuxedo Service Call ga_schod_l1.pc
     GetFldVar('S_STRING1'   , sSchship    );        // �з±����ڵ�
     GetFldVar('S_STRING2'   , sSchshnm	   );        // �з±��и�
     GetFldVar('S_STRING3'   , sSdt        );        // �з½�������
     GetFldVar('S_STRING4'   , sGrudt      );        // �з���������
     GetFldVar('S_STRING5'   , sSchoolnm   );        // �б���
     GetFldVar('S_STRING6'   , sMjrnm      );        // ������
     GetFldVar('S_STRING7'   , sMjrcd      );        // �����ڵ�
     GetFldVar('S_STRING8'   , sEndyn      );        // ��������
     GetFldVar('S_STRING9'   , sRemtxt     );        // ���
     GetFldVar('S_STRING10'  , sEntGubn    );        // �Ի�����
     GetFldVar('S_STRING11'  , sSchoolcd   );        // �з��ڵ�
     GetFldVar('S_STRING12'  , sEmpno  );
     GetFldVar('S_STRING13'  , sEmpnm  );
     GetFldVar('S_STRING14'  , sRgtdate);
     GetFldVar('S_STRING15'  , sResid  );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaWoiwd1 Ÿ��� ������ ��� �������
   ��ȸ
   �ۼ��� : ������  2020-05-18
===============================================================================}
function HgaWoiwd1.SelWoiwd2():Integer; //��� ������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh,sChoice] );

   if (txGetF('GA_WOIWD_L2')) then  //ga_woiwd_l2.pc
   begin     //Tuxedo Service Call
     GetFldVar('S_STRING1'   , sSdate      );        // �ٹ���������
     GetFldVar('S_STRING2'   , sEdate      );        // �ٹ���������
     GetFldVar('S_STRING3'   , sCompnm     );        // ȸ���
     GetFldVar('S_STRING4'   , sJikwe      );        // ����
     GetFldVar('S_STRING5'   , sJikmunm    );        // ��������
     GetFldVar('S_STRING6'   , sWkmm       );        // ����������
     GetFldVar('S_STRING7'   , sWkRate     );        // ��±Ⱓ ������
     GetFldVar('S_STRING8'   , sEmpno  );
     GetFldVar('S_STRING9'   , sEmpnm  );
     GetFldVar('S_STRING10'  , sRgtdate);
     GetFldVar('S_STRING11'  , sResid  );

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaQulid1 Ÿ��� ������ ��� �ڰ�����
   ��ȸ
   �ۼ��� : ������  2020-05-18
===============================================================================}
function HgaQulid1.SelQulid2():Integer; //��� ������� ��ȸ
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3'); //service�Էº���
   SetFldValue(0,[sLocate,sCodsrh,sChoice] );

   if (txGetF('GA_QULID_L3')) then begin     //Tuxedo Service Call ga_qulid_l1.pc
     GetFldVar('S_STRING1'   , sLcncd      );        // �ڰ��ڵ�
     GetFldVar('S_STRING2'   , sLcncdn     );        // �ڰ��ڵ��
     GetFldVar('S_STRING3'   , sOrgcd      );        // �������ڵ�
     GetFldVar('S_STRING4'   , sOrgcdn     );        // �������ڵ��
     GetFldVar('S_STRING5'   , sGetdate    );        // �������
     GetFldVar('S_STRING6'   , sFnsdate    );        // ��ȿ����
     GetFldVar('S_STRING7'   , sChgdate    );        // ���ⰻ������
     GetFldVar('S_STRING8'   , sLcnno      );        // �ڰݹ�ȣ
     GetFldVar('S_STRING9'   , sRemix      );        // �ڰݹ�ȣ
     GetFldVar('S_STRING10'  , sSubject      );        // �ڰݹ�ȣ
     GetFldVar('S_STRING11'  , sSubnm        );        // �ڰݹ�ȣ
     GetFldVar('S_STRING12'  , sEmpno  );
     GetFldVar('S_STRING13'  , sEmpnm  );
     GetFldVar('S_STRING14'  , sRgtdate);
     GetFldVar('S_STRING15'  , sResid  );



     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;
{===============================================================================
   HgaFamld1 Ÿ��� ������ ��� ��������
   �ű��Է�
   �ۼ��� : ������  20/05/20
===============================================================================}
function HgaFamld1.insFamld3(iCnt: Integer): Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer�� �޾ƿ�.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
               'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
               'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [sEmpno    [ii]     //  1. ���
                       ,  sLocate   [ii]     //  2. �����
                       ,  sResno    [ii]     //  3. ���� �ֹι�ȣ
                       ,  sFmlynm   [ii]     //  4. ���� �̸�
                       ,  sRelcd    [ii]     //  5. ���� �����ڵ�
                       ,  sSupcd    [ii]     //  6. �ξ籸��
                       ,  sSchship  [ii]     //  7. ���� �з��ڵ�
                       ,  sJob      [ii]     //  8. ����
                       ,  sSdyn     [ii]     //  9. �������޴�� ����
                       ,  sDedyn    [ii]     // 10. ����� ���鿩��
                       ,  sRsdyn    [ii]     // 11. ���� ����
                       ,  sEditid   [ii]     // 12.
                       ,  sEditip   [ii]     // 13.
                       ,  sInjuryyn [ii]     // 14. ��ֿ���
                       ,  sRgtdate  [ii]     // 15. ������ �������
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
   HgaFamld1 Ÿ��� ������ ��� �з�����
   �ű��Է�
   �ۼ��� : ������  20/05/20
===============================================================================}
function HgaSchod1.insSchod2(iCnt: Integer): Integer;
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer�� �޾ƿ�.
  SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;'      +
               'S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;'     +
               'S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15;S_TYPE16;');

  for ii := 0 to iCnt - 1 do
  begin
     SetFldValue32( ii , [sLocate    [ii]     // 1. �����
                       ,  sEmpno     [ii]     // 2. �����ȣ
                       ,  sSdt       [ii]     // 3. �з½�������  
                       ,  sGrudt     [ii]     // 4. �з���������  
                       ,  sSchoolnm  [ii]     // 5. �б���        
                       ,  sMjrnm     [ii]     // 6. ������        
                       ,  sEndyn     [ii]     // 7. ��������      
                       ,  sEntGubn   [ii]     // 8. �Ի�����      
                       ,  sRemtxt    [ii]     // 9. ���          
                       ,  sSchship   [ii]     // 10.�з±����ڵ�  
                       ,  sMjrcd     [ii]     // 11.�����ڵ�      
                       ,  sSchoolcd  [ii]     // 12.�б��ڵ�      
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
   HgaFamld1 Ÿ��� ������ ��� �������
   �ű��Է�
   �ۼ��� : ������  20/05/20
===============================================================================}
function HgaWoiwd1.insWoiwd2(iCnt: Integer):Integer;    // ��� ��� �ű��Է�/����
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer�� �޾ƿ�.
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
   HgaFamld1 Ÿ��� ������ ��� �ڰ�����
   �ű��Է�
   �ۼ��� : ������  20/05/20
===============================================================================}
function HgaQulid1.insQulid2(iCnt: Integer):Integer;    // ��� ��� �ű��Է�/����
var
  ii : Integer;
begin
  Result := -1;
  txAlloc32; //Pointer�� �޾ƿ�.
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

function HgaUpLoad.UpdateUpLoadFilefn(iCnt: Integer): Integer; //20200623 ������
var
    idx : Integer;
begin

    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.

    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;');

    for idx := 0 to iCnt - 1 do
    begin
        SetFldValue(idx ,[sFileGbn  [idx]  // �ѹ����� 1, �������� 2
                        , sFileName [idx]  // ���ϸ�
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





