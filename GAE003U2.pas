
{*******************************************************************************
 Program ID   : GAE001U1
 Program 명   : GAE001F1.dfm,  GAE001F1.pas
 Program 개요 : 재증명 신청 관리

 작성자       : 문 태 용
 작성일       : 2004.10.30

 변경내역
--------+------------+---------------------------+------------------------------
 수정자   수정일       수정사유                    수정내역
--------+------------+---------------------------+------------------------------
 문 태 용 2004.10.30    신규작성
 김 용 욱 2005.11.01    1. 국/영문 갑종근로소득증명 금액 및 기준신고일자 추가
*******************************************************************************}
unit GAE003U2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GAClassU1, StdCtrls, ComCtrls, Mask, AdvLabel, Buttons, ExtCtrls,
  Grids, BaseGrid, AdvGrid;

type
  TGAE003F2 = class(TGAClassF1)
    AdvLabel3: TAdvLabel;
    lbl_Find: TAdvLabel;
    AdvLabel11: TAdvLabel;
    Bbtn_Submyn: TBitBtn;
    cbx_Locate: TComboBox;
    edt_Empno: TEdit;
    sbt_FindUser: TSpeedButton;
    edt_Empnm: TEdit;
    med_SYYMM: TMaskEdit;
    sbt_Plus: TSpeedButton;
    sbt_Minus: TSpeedButton;
    advList: TAdvStringGrid;
    Splitter1: TSplitter;
    pnl_List2: TPanel;
    pnl_Work: TPanel;
    AdvLabel6: TAdvLabel;
    AdvLabel1: TAdvLabel;
    AdvLabel2: TAdvLabel;
    AdvLabel4: TAdvLabel;
    AdvLabel5: TAdvLabel;
    AdvLabel7: TAdvLabel;
    AdvLabel8: TAdvLabel;
    AdvLabel9: TAdvLabel;
    Label1: TLabel;
    Label2: TLabel;
    cbx_Proof: TComboBox;
    med_SDate: TMaskEdit;
    dtp_SDate: TDateTimePicker;
    edt_Cnt: TEdit;
    ud_Cnt: TUpDown;
    mo_sTenuuse: TMemo;
    edt_sOffice: TEdit;
    edt_sJobtype: TEdit;
    mo_sEngaddr: TMemo;
    med_BDateFr: TMaskEdit;
    med_BDateTo: TMaskEdit;
    edt_empno1: TEdit;
    sbt_Minus1: TSpeedButton;
    sbt_Plus1: TSpeedButton;
    dtp_BDateFr: TDateTimePicker;
    lab_rextxt: TAdvLabel;
    mo_retxt: TMemo;
    Panel1: TPanel;
    AdvLabel24: TAdvLabel;
    AdvLabel25: TAdvLabel;
    AdvLabel26: TAdvLabel;
    AdvLabel27: TAdvLabel;
    DateTimePicker2: TDateTimePicker;
    AdvLabel10: TAdvLabel;
    chk1: TCheckBox;
    adl1: TAdvLabel;
    adl2: TAdvLabel;
    AdvLabel12: TAdvLabel;
    cbx_yyyy: TComboBox;
    AdvLabel13: TAdvLabel;
    AdvLabel14: TAdvLabel;
    AdvLabel15: TAdvLabel;
    edt_phone: TMaskEdit;
    AdvLabel16: TAdvLabel;
    Edt_Empno2: TEdit;
    AdvLabel17: TAdvLabel;
    pnlpl13: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure edt_EmpnoKeyPress(Sender: TObject; var Key: Char);
    procedure sbt_FindUserClick(Sender: TObject);
    procedure edt_EmpnoExit(Sender: TObject);
    procedure bbt_InsertClick(Sender: TObject);
    procedure cbx_LocateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbx_ProofChange(Sender: TObject);
    procedure med_BDateFrKeyPress(Sender: TObject; var Key: Char);
    procedure advListGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure bbt_SearchClick(Sender: TObject);
    procedure advListClick(Sender: TObject);
    procedure bbt_UpdateClick(Sender: TObject);
    procedure bbt_SaveClick(Sender: TObject);
    procedure bbt_CancelClick(Sender: TObject);
    procedure Bbtn_SubmynClick(Sender: TObject);
    procedure cbx_LocateKeyPress(Sender: TObject; var Key: Char);
    procedure edt_EmpnoChange(Sender: TObject);
    procedure med_SYYMMChange(Sender: TObject);
    procedure sbt_PlusClick(Sender: TObject);
    procedure sbt_MinusClick(Sender: TObject);
    procedure sbt_sPlusClick(Sender: TObject);
    procedure sbt_sMinusClick(Sender: TObject);
    procedure sbt_Plus1Click(Sender: TObject);
    procedure sbt_Minus1Click(Sender: TObject);
    procedure dtp_SDateCloseUp(Sender: TObject);
    procedure pnlpl13Click(Sender: TObject);

  private
    { Private declarations }
    GU_SAVEMODE  :String;
    GU_SAVEMODE1 :String;

    sLoc : String;
    slAppEmpno : String;   // 결재권자 사번
    sMode :String;

    procedure SetGrade;   // 사용자 권한 설정
    procedure Submit;

    procedure pInsData;
    procedure pClear;
  public
    { Public declarations }
  end;

var
  GAE003F2: TGAE003F2;

implementation

uses GAMAINU, GAComFunc, CComFunc, VarCom, GACLASS1, GBCLASS1, MsgCom,
  GMsg, TuxCom, GComFunc, DateUtils, GAE001U3, GAE003U3;

{$R *.dfm}

procedure TGAE003F2.SetGrade;
begin
  if (G_GRADE = '1') or (G_GRADE = '2')then
  begin
    cbx_Locate.Enabled := False;
    if Trim(edt_Empno.Text) = '' then
    begin
      edt_Empno.Text := G_USERID;
      sbt_FindUserClick(Self);
    end;
    edt_Empno.Enabled := False;
    sbt_FindUser.Enabled := False;
  end;
end;

procedure TGAE003F2.FormCreate(Sender: TObject);
var
  i : Integer;
  tYYYY : string;
begin
  inherited;

  pnl_Work.Left := (pnl_Main.Width - pnl_Work.Width) div 2;
  pnl_Work.Top  := (pnl_Main.Height - pnl_Work.Height) div 2;

  GALocateList(cbx_Locate, G_LOCATE);


  sLoc := Trim(Copy(cbx_Locate.Text, 51, 10));

  GetCComCdListOncCombo2('GA35', sLoc, cbx_Proof);

  cbx_Proof.Items[0] := '-- 선택 --';
  cbx_Proof.ItemIndex := 0;


  // 2019-12-03 오정은
  // 근로소득원천징수영수증 신청년도
  // 2020년 3/9일까진    17/18년도 영수증 뜨고,
  //        3/10일부터는 18/19년도 제증명서 뜨도록.
  tYYYY := FormatDateTime('YYYY', Date);

  if Date <= StrToDate(tYYYY+'-03-09') then // 2020 3/9 이전
  begin
    tYYYY := IntToStr(StrToInt(tYYYY)-1);
  end;

  tYYYY := IntToStr(StrToInt(tYYYY)-1);
  for i:=0 to 1 do
  begin
    cbx_yyyy.Items.Add(tYYYY);
    tYYYY := IntToStr(StrToInt(tYYYY)-1);
  end;

  med_sDate.Text := gDate;
  med_SYYMM.Text := Copy(gDate,1,6);


  dtp_SDate.Date := StrToDate(ConvertSDate(gDate));
  SetGrade;

  advList.ColWidths[1]  := 70;   //20210609
  advList.ColWidths[2]  := 70;   //20210428
  advList.ColWidths[3]  := 80;   //20210428
  advList.ColWidths[4]  := 150;   //20210428
//  advList.ColWidths[4] := 84;
  advList.ColWidths[5]  := 0;
  advList.ColWidths[6]  := 0;
  advList.ColWidths[7]  := 0;   //20210428  //20210608 60 -> 0
  advList.ColWidths[8]  := 60;   //20210428
  advList.ColWidths[9]  := 0;   //20210428  //20210608 60 -> 0
  advList.ColWidths[10] := 60;   //20210428
  advList.ColWidths[11] := 0;   //20210428  //20210608 60 -> 0

  sMode := 'I';

  pnl_Work.Enabled    := False;

  bbt_SearchClick(Self);


end;

procedure TGAE003F2.edt_EmpnoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    sbt_FindUserClick(Sender);

    if edt_Empno.Text <> '' then
    begin
      SelectNext(Sender as TWinControl, True, True);
      Key := #0;
    end;
  end;
end;

procedure TGAE003F2.sbt_FindUserClick(Sender: TObject);
var
  iRowNo : Integer;
begin
  inherited;

  if Trim(edt_EmpNo.Text) <> '' then
  begin
    try
      StrToInt(Copy(edt_EmpNo.Text, 2, 1));           // 이건 뭐야? 김용욱 2006-01-17
      OpenPopupDept_Pop(sLoc, 1,edt_EmpNo,edt_EmpNm);
    except
      OpenPopupDept_Pop(sLoc, 0,edt_EmpNo,edt_EmpNm);
    end;
  end
  else
  begin
    if (G_GRADE <> '1') AND (G_GRADE <> '2')then
    begin
      try
        StrToInt(Copy(edt_EmpNo.Text, 2, 1));           // 이건 뭐야? 김용욱 2006-01-17
        OpenPopupDept_Pop(sLoc, 0,edt_EmpNo,edt_EmpNm);
      except
        OpenPopupDept_Pop(sLoc, 0,edt_EmpNo,edt_EmpNm);        //1 > 0   20210629 사원명으로 검색 가능하게 -장다은 요청 
      end;
{
        gaInsab1 := HgaInsab1.Create;
        iRowNo   := gaInsab1.SelInsab1(sLoc, edt_EmpNo.Text);    //'AA', Edt_empno_sch.Text
        if iRowNo > 0 then
          mo_sEngaddr.Text := Trim(gaInsab1.sEngaddr[0]);
        gaInsab1.Free;
}        
    end
  end;

end;

procedure TGAE003F2.edt_EmpnoExit(Sender: TObject);
begin
  inherited;
  if Trim(edt_Empno.Text) = '' then
    edt_Empnm.Clear;
end;

procedure TGAE003F2.bbt_InsertClick(Sender: TObject);
var
    iRowNo : Integer;
    sloc   : string;
begin
    if trim(edt_Empno.Text) = '' then
    begin
       MakeMsg(GF_A021, D_EMPNO); //성명은(는) 필수입력 항목입니다.
       pnl_Search.Enabled := True;
       edt_Empno.SetFocus;

       Exit;
     end;
  mo_retxt.Text := '';
  mo_retxt.Visible :=false;
  lab_rextxt.Visible := false;
  pnl_Work.Enabled    := True;
  med_BDateFr.Clear;
  med_BDateTo.Clear;
  cbx_Proof.ItemIndex := 0;

  med_SDate.Text      := gDate;
  
  edt_Cnt.Text        := '1';
  mo_sTenuuse.Clear;
  edt_sOffice.Clear;
  edt_sJobtype.Clear;
  mo_sEngaddr.Clear;
  edt_phone.Clear;    //20210609

  pnl_Search.Enabled := False;
  advList.Enabled    := False;

  cbx_Proof.Enabled  := True;

  bbt_Insert.Enabled  := False;
  bbt_Update.Enabled  := False;
  bbt_Cancel.Enabled  := True;
  bbt_Save.Enabled    := True;
  Bbtn_Submyn.Enabled := False;

  try
    Screen.Cursor := crHourGlass;
    gaInsab1 := HgaInsab1.Create; // 사원기본정보, 사원조회

    sloc := 'A2';

    iRowNo   := gaInsab1.SelInsab1(sloc, edt_Empno.Text);

    if iRowNo <= 0 then
    begin
      ShowMessage('인사사항관리 > 신상정보관리> 기본사항' +#13+#10+ '휴대전화번호가 존재하지 않습니다.');
      Exit;
    end;

    edt_phone.Text  := DelChar(gaInsab1.sHphoneno[0], '-');   // 핸드폰번호 20210526
  finally
    gaInsab1.Free;
    Screen.Cursor := crDefault;
  end;

  sMode := 'I';


//  cbx_Proof.SetFocus;

end;


procedure TGAE003F2.cbx_LocateChange(Sender: TObject);
begin
  inherited;
  sLoc := Trim(Copy(cbx_Locate.Text, 51, 10));

  advList.ClearRows(1, advList.RowCount - 1);
  advList.RowCount := 2;
end;

procedure TGAE003F2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if      (Key = VK_F8) And (bbt_Insert.Enabled)  then bbt_InsertClick(self)
  else if (Key = VK_F7) And (pnl_Search.Enabled)  then bbt_SearchClick(self)
  else if (Key = VK_F6) And (bbt_Update.Enabled)  then bbt_UpdateClick(self)
  else if (Key = VK_F2) And (bbt_Cancel.Enabled)  then bbt_CancelClick(self)
  else if (Key = VK_F5) And (bbt_Save.Enabled)    then bbt_SaveClick(self)
  else if (Key = VK_F9) And (Bbtn_Submyn.Enabled) then Bbtn_SubmynClick(self)
  ;
  if (Key = VK_F12) then
     edt_Empno.SetFocus;


end;

// 김용욱 추가 2005-11-01
procedure TGAE003F2.cbx_ProofChange(Sender: TObject);
var
  str1 : String;
  iRowNo : Integer;
  sTemp  : String;
  sLoc1  : string; 
begin
  inherited;

  //20210623 추가 시작
  gaInsab1 := HgaInsab1.Create; // 사원기본정보, 사원조회

  sLoc1 := 'A2';

  iRowNo   := gaInsab1.SelInsab1(sLoc1, edt_Empno.Text);  // txGetF32('GA_INSAM_L1') ga_insam_l1.pc

  if (iRowNo < 0 ) then
  begin
    gaInsab1.Free;
    Exit;
  end;

  if (iRowNo = 1 ) then
  begin
    str1 := Trim(Copy(cbx_Proof.Text, 51, 10));
    if ( (Trim(gaInsab1.sConType[0]) ='0704') or (Trim(gaInsab1.sConType[0]) = '0707') )     //20210623 일반의, 전문의 갑종,근로소득 신청 X
        and ( (str1 = '00005') or (str1 = '10005')  or (str1 = '10004')  or (str1 = '00004') ) then
    begin
      ShowMessage('학교소속 : 학교 재무실(031-850-9094)' +#13+#10+ '병원소속 : 강남 경리팀(031-727-8439)' +#13+#10+ '                로 문의하세요.');
      cbx_Proof.ItemIndex := 0;
      Exit;
    end
    else if ( (Trim(gaInsab1.sConType[0]) ='0709') )                                       //20210623 파견근로 전부 신청 X
            and ( (str1 = '00001') or (str1 = '00002')  or (str1 = '00003')  or (str1 = '00004') or (str1 = '00005')
                   or (str1 = '10001')  or (str1 = '10002')  or (str1 = '10003') or (str1 = '10004') or (str1 = '10005') ) then
    begin
      ShowMessage('소속 파견 업체에 문의하세요.');
      cbx_Proof.ItemIndex := 0;
      Exit;
    end
    else if ( (Trim(gaInsab1.sJikmu[0]) ='270') )                                          //20210623 아르바이트 전부 신청 X
            and ( (str1 = '00001') or (str1 = '00002')  or (str1 = '00003')  or (str1 = '00004') or (str1 = '00005')
                   or (str1 = '10001')  or (str1 = '10002')  or (str1 = '10003') or (str1 = '10004') or (str1 = '10005') ) then
    begin
      ShowMessage('인사총무팀에 문의하세요.');
      cbx_Proof.ItemIndex := 0;
      Exit;
    end
    else if ( (Trim(gaInsab1.sConType[0]) ='0706') )                                       //20210623 전공의 갑종,근로소득 신청 X
            and ( (str1 = '00005') or (str1 = '10005')  or (str1 = '10004')  or (str1 = '00004') ) then
    begin
      ShowMessage('인사총무팀에 문의하세요.');
      cbx_Proof.ItemIndex := 0;
      Exit;
    end
    else
    begin
      //20210623 추가 끝 
      //str1 := Trim(Copy(cbx_Proof.Text, 51, 10));                             //20210623 주석 위로 올림
      if (str1 = '00001') or (str1 = '00002') or (str1 = '00003') or (str1 = '00004') then
      begin
        mo_sTenuuse.ImeMode := imSHanguel;
        edt_sOffice.ImeMode := imSHanguel;
      end
      else if (str1 = '10001') or (str1 = '10002') or (str1 = '10003') or (str1 = '10004') then
      begin
          // 2006-10-13
//          gaInsab1 := HgaInsab1.Create;                                       //20210623 주석
//          iRowNo   := gaInsab1.SelInsab1(sLoc, edt_EmpNo.Text);               //'AA', Edt_empno_sch.Text //20210623 주석
//          if iRowNo > 0 then                                                  //20210623 주석
            mo_sEngaddr.Text := Trim(gaInsab1.sEngaddr[0]);
//          gaInsab1.Free;                                                      //20210623 주석 

          mo_sTenuuse.ImeMode := imSAlpha;
          edt_sOffice.ImeMode := imSAlpha;
      end;

      if (str1 = '00004') or    // 국문갑종근로소득증명
         (str1 = '10004') then  // 영문갑종근로소득증명
      begin


        AdvLabel9.Enabled := True;

        med_BDateFr.Enabled := True;
        sbt_Plus.Enabled    := True;
        sbt_Minus.Enabled   := True;
        med_BDateFr.Text    :=FormatFloat('000#',strtofloat(Copy(gDate,1,4)) - 1) + Copy(gDate,5,2)+'10';

        //Copy(gDate, 1,6)+'10';

        med_BDateTo.Enabled := True;
        sbt_Plus1.Enabled   := True;
        sbt_Minus1.Enabled  := True;
        med_BDateTo.Text    := Copy(gDate, 1,6) +'10';
        //FormatFloat('000#',strtofloat(Copy(gDate,1,4)) + 1) + Copy(gDate,5,2)+'10';


      end
      else
      begin
        AdvLabel9.Enabled   := False;

        med_BDateFr.Enabled := False;
        sbt_Plus.Enabled    := False;
        sbt_Minus.Enabled   := False;
        med_BDateFr.Clear;

        med_BDateTo.Enabled := False;
        sbt_Plus1.Enabled    := False;
        sbt_Minus1.Enabled   := False;
        med_BDateTo.Clear;
      end;

      // 2019-12-03 오정은
      // 근로소득원천징수 영수증일 때 신청 년도 보이기.
      if (str1 = '00005') then
      begin
        AdvLabel12.Visible := True;
        cbx_yyyy.Visible   := True;
        edt_Cnt.Enabled    := False;     //20211006  신청부수 1로 고정
        ud_Cnt.Enabled     := False;
        edt_Cnt.Text       := '1';
        edt_Cnt.Visible    := False;
        ud_Cnt.Visible     := False;
        AdvLabel2.Visible  := False;
      end
      else
      begin
        AdvLabel12.Visible := False;
        cbx_yyyy.Visible   := False;
        edt_Cnt.Visible    := True;     //20211006  신청부수 1로 고정
        ud_Cnt.Visible     := True;
        AdvLabel2.Visible  := True;
        edt_Cnt.Enabled    := True;
        ud_Cnt.Enabled     := True;     
      end;
    end;
  end;
  gaInsab1.Free;
end;



procedure TGAE003F2.med_BDateFrKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(Sender as TWinControl, True, True);
end;

procedure TGAE003F2.sbt_PlusClick(Sender: TObject);
begin
  inherited;
  if Length(med_BDateFr.Text) <> 8 then
  begin
    MakeMsg(GF_A001, '기준월월'); //근무년월 $S을(를) 확인하십시오.
    med_BDateFr.SetFocus;
    Exit;
  end;

  med_BDateFr.Text := NextYyMm(Copy(med_BDateFr.Text,1,6))+'10';
  med_BDateTo.Text := PrevYyMm(copy(med_BDateFr.Text,1,6))+'10';



end;

procedure TGAE003F2.sbt_MinusClick(Sender: TObject);
begin
  inherited;
  if Length(med_BDateFr.Text) <> 8 then
  begin
    MakeMsg(GF_A001, '기준월'); //근무년월 $S을(를) 확인하십시오.
    med_BDateFr.SetFocus;
    Exit;
  end;
  med_BDateFr.Text := PrevYyMm(Copy(med_BDateFr.Text,1,6))+'10';
  med_BDateTo.Text := NextYyMm(Copy(med_BDateFr.Text,1,6))+'10';

    
end;

procedure TGAE003F2.advListGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  if      ARow = 0 then HAlign := taCenter
//  else if ACol in [1,2,3,7,8,9] then HAlign := taCenter
  else if ACol in [1,2,3,7,8,9,10,11] then HAlign := taCenter       //20210428
  else if ACol in [0] then HAlign := taRightJustify;
end;

procedure TGAE003F2.bbt_SearchClick(Sender: TObject);
var
  iRowNo, iLoop, ii : Integer;
begin
  inherited;
  mo_retxt.Text := '';
  mo_retxt.Visible :=false;
  lab_rextxt.Visible := false;
  
  pClear;

  try
    Screen.Cursor := crHourGlass;
    gaTenuat_1    := HgaTenuat_1.Create;

    with gaTenuat_1 do
    begin
      sEmpno      := edt_Empno.Text;
      sLocate     := sLoc;
      sUsedtyymm  := med_SYYMM.Text;

      iRowNo       := SelTenuat;  // txGetF('GA_TENUA_L3')
    end;

    advList.ClearRows(1, advList.RowCount - 1);
    advList.RowCount := 2;

    if iRowNo <= 0 then
    begin
      GAMAINF.sbMain.Panels[0].Text := MakeMsgStr(GF_A000); //조회할 자료가 없습니다.

      bbt_Insert.Enabled  := True;
      bbt_Update.Enabled  := False;
      bbt_Cancel.Enabled  := False;
      bbt_Save.Enabled    := False;
      Bbtn_Submyn.Enabled := False;
      
      Exit;
    end
    else
    begin

      advList.RowCount := iRowNo + 1;
      for iLoop := 0 to iRowNo - 1 do
      begin
        advList.Cells[ 0, iLoop + 1] := Trim(gaTenuat_1.sRowcnt[iLoop]);    // Rownum
        advList.Cells[ 1, iLoop + 1] := Trim(gaTenuat_1.sEmpno1[iLoop]);    // 사원번호
        advList.Cells[ 2, iLoop + 1] := Trim(gaTenuat_1.sEmpnm[iLoop]);     // 사원명
        advList.Cells[ 3, iLoop + 1] := Trim(gaTenuat_1.sUsedate[iLoop]);   // * 사용일자          */
        advList.Cells[ 4, iLoop + 1] := Trim(gaTenuat_1.sComcdnm[iLoop]);   // * 재증명종류 명     */
        advList.Cells[ 5, iLoop + 1] := Trim(gaTenuat_1.sTenusdate[iLoop]); // * 신청일자 Key1     */
        advList.Cells[ 6, iLoop + 1] := Trim(gaTenuat_1.sTenutype[iLoop]);  // * 재증명종류 Key2   */
        advList.Cells[ 7, iLoop + 1] := Trim(gaTenuat_1.sSubmyn[iLoop]);    // 제출여부..

//        advList.Cells[ 8, iLoop + 1] := Trim(gaTenuat_1.sTenuprnyn[iLoop]); // 발급여부
        advList.Cells[ 8, iLoop + 1] := Trim(gaTenuat_1.sInsayn[iLoop]); // 인사결재여부로 변경
        advList.Cells[ 8, iLoop + 1] := Trim(gaTenuat_1.sSendyn[iLoop]); // 문자전송여부로 변경  20210611

        advList.Cells[ 9, iLoop + 1] := Trim(gaTenuat_1.sAppyn[iLoop]);     // 진행상태

//        advList.Cells[10, iLoop + 1] := Trim(gaTenuat_1.sInsayn[iLoop]);    // 인사결재 추가 20210428
        advList.Cells[10, iLoop + 1] := Trim(gaTenuat_1.sTenuprnyn[iLoop]);    // 발급여부로 변경 

        advList.Cells[11, iLoop + 1] := Trim(gaTenuat_1.sResnoyn[iLoop]);   // 주민번호 출력여부 2014.12.08 김승철 추가
//        advList.Cells[10, iLoop + 1] := Trim(gaTenuat_1.sResnoyn[iLoop]);   // 주민번호 출력여부 2014.12.08 김승철 추가

        if advList.Cells[ 9, iLoop + 1] = 'R' then
        begin
         for ii := 0 to advList.ColCount - 1 do begin
           advList.Colors[ii, iLoop+1] := $00EFEEFF;
         end;
        end;

      end;

      bbt_Insert.Enabled  := True;

      if advList.Cells[7, 1] = 'Y' then
      begin
        bbt_Update.Enabled  := False;
        Bbtn_Submyn.Enabled := False;
      end
      Else
      begin
        bbt_Update.Enabled  := True;
        Bbtn_Submyn.Enabled := True;
      end;
      bbt_Cancel.Enabled  := False;
      bbt_Save.Enabled    := False;

      pnl_Work.Enabled    := False;
      advList.Enabled     := True;
    end;

    GAMAINF.sbMain.Panels[0].Text := MakeMsgStr(GF_A027, inttostr(iRowNo)); //iRowNo 건의 자료가 조회되었습니다.
  finally
    gaTenuat_1.Free;

     // 2006-10-13
     if advList.Cells[1, 1] <> '' then
         advListClick(Sender);

    Screen.Cursor := crDefault;
  end;
end;

procedure TGAE003F2.advListClick(Sender: TObject);
var
  iRowNo : Integer;
begin
  inherited;

  edt_phone.Clear;    //20210609

  if advList.Cells[5, advList.Row] = '' then Exit;

  try
    Screen.Cursor := crHourGlass;
    gaTenuat_1    := HgaTenuat_1.Create;

    with gaTenuat_1 do
    begin
      sEmpno      := advList.Cells[1, advList.Row];
      sLocate     := sLoc;
      sTenusdate  := advList.Cells[5, advList.Row];
      sTenutype   := advList.Cells[6, advList.Row];

      iRowNo      := SelTenuatRow;  // txGetF('GA_TENUA_L4')
    end;

    if iRowNo <= 0 then
    begin
      GAMAINF.sbMain.Panels[0].Text := MakeMsgStr(GF_A000); //조회할 자료가 없습니다.
      Exit;
    end;

    CheckCombo(cbx_Proof, advList.Cells[6, advList.Row]);   //증명서
    cbx_ProofChange(nil);
    cbx_Proof.Enabled := False;

    edt_empno1.Text   := advList.Cells[1, advList.Row];

    med_SDate.Text    := gaTenuat_1.sUsedate[0];  //사용일
    edt_Cnt.Text      := gaTenuat_1.sTenucnt[0];             //신청부수
    mo_sTenuuse.Text  := gaTenuat_1.sTenuuse[0];             //용도
    edt_sOffice.Text  := gaTenuat_1.sOffice[0];              //제출처
    edt_sJobtype.Text := gaTenuat_1.sJobtype[0];             //영문직종명
    mo_sEngaddr.Text  := gaTenuat_1.sEngaddr[0];             //영문주소
    med_BDateFr.Text  := gaTenuat_1.sBasedatefr[0];          //신고기준일 20210602
    med_BDateTo.Text  := gaTenuat_1.sBsasedateto[0];         //신고기준일 20210602
    edt_phone.Text    := gaTenuat_1.sPhoneno[0];             //저장한 핸드폰 번호 추가 20210609

    if advList.Cells[9, advList.Row] = 'R' then
    begin
    mo_retxt.Text     := gaTenuat_1.sRetxt[0];               //반송사유 20070103 추가
    mo_retxt.Visible := true;
    lab_rextxt.Visible :=true;
    end
    else
    begin
    mo_retxt.Text :='';
    mo_retxt.Visible := false;
    lab_rextxt.Visible :=false;
    end;

    if  gaTenuat_1.sResnoyn[0] = 'Y' then
      chk1.Checked := true
    else
      chk1.Checked := false;


    sMode := 'U';
    bbt_Update.Enabled := True;

    if (gaTenuat_1.sSubmyn[0] = 'Y') then
    begin
      //  수정불가..
      bbt_Insert.Enabled  := True;
      bbt_Update.Enabled  := False;
      bbt_Cancel.Enabled  := False;
      bbt_Save.Enabled    := False;
      Bbtn_Submyn.Enabled := False;
    end
    else
    begin
      bbt_Insert.Enabled  := True;
      bbt_Update.Enabled  := True;
      bbt_Cancel.Enabled  := False;
      bbt_Save.Enabled    := False;
      Bbtn_Submyn.Enabled := True;
    end;

  finally
    gaTenuat_1.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TGAE003F2.bbt_UpdateClick(Sender: TObject);
var
  iRowNo :integer;
begin
  inherited;

  if cbx_Proof.ItemIndex = 0 then
  begin
    showmessage('수정할 증명서를 선택해주세요');
    pnl_Search.Enabled := True;
    Exit;
  end;

  mo_retxt.Text := '';
  mo_retxt.Visible :=false;
  lab_rextxt.Visible := false;
  pnl_Work.Enabled    := True;
  pnl_Search.Enabled  := False;
  advList.Enabled     := False;

  bbt_Insert.Enabled  := False;
  bbt_Update.Enabled  := False;
  bbt_Cancel.Enabled  := True;
  bbt_Save.Enabled    := True;
  Bbtn_Submyn.Enabled := False;


  if (advList.RowCount >= 2) And (advList.Cells[5, advList.Row] <> '') And (sMode = 'I') then
  begin
    if advList.Cells[5, advList.Row] = '' then Exit;

    try
      Screen.Cursor := crHourGlass;
      gaTenuat_1    := HgaTenuat_1.Create;

      with gaTenuat_1 do
      begin
        sEmpno      := edt_Empno1.Text; 
        sLocate     := sLoc           ;
        sTenusdate  := advList.Cells[5, advList.Row];
        sTenutype   := advList.Cells[6, advList.Row];

        iRowNo      := SelTenuatRow;  // txGetF('GA_TENUA_L2')
      end;

      if iRowNo <= 0 then
      begin
        GAMAINF.sbMain.Panels[0].Text := MakeMsgStr(GF_A000); //조회할 자료가 없습니다.
        Exit;
      end;

      CheckCombo(cbx_Proof, advList.Cells[6, advList.Row]);   //증명서
      cbx_ProofChange(nil);
      cbx_Proof.Enabled := False;

      med_SDate.Text    := gaTenuat_1.sUsedate[0];             //사용일
      edt_Cnt.Text      := gaTenuat_1.sTenucnt[0];             //신청부수
      mo_sTenuuse.Text  := gaTenuat_1.sTenuuse[0];             //용도
      edt_sOffice.Text  := gaTenuat_1.sOffice[0];              //제출처
      edt_sJobtype.Text := gaTenuat_1.sJobtype[0];             //영문직종명
      mo_sEngaddr.Text  := gaTenuat_1.sEngaddr[0];             //영문주소
      if gaTenuat_1.sResnoyn[0] = 'Y' then
        chk1.Checked := true
      else
        chk1.Checked := false;

      sMode := 'U';

    finally
      gaTenuat_1.Free;
      Screen.Cursor := crDefault;
    end;
  end;

  //advListClick(Sender);

  med_SDate.SetFocus;

end;

procedure TGAE003F2.bbt_SaveClick(Sender: TObject);
begin
  inherited;

  pInsData;

end;

procedure TGAE003F2.pInsData;
var
  iRowNo, iRowNo1, iLoop, flag: Integer;
  sTemp : String;
  bExcept : Boolean;
  Long : Real;   // 날짜 비교하기 위해 추가 김용욱 2005-11-09
  bSeqNoZero : Boolean;  // 추가 김용욱 2005-12-07
begin
  inherited;

  if cbx_Proof.ItemIndex <= 0 then
  begin
    MakeMsg(GF_A020, '제증명 종류');
    cbx_Proof.SetFocus;
    Exit;
  end;

  if Trim(mo_sTenuuse.Text) = '' then
  begin
    MakeMsg(GF_A021, '제증명 용도');
    mo_sTenuuse.SetFocus;
    Exit;
  end;

  if Trim(med_SDate.Text) < gDate then
  begin
    MakeMsg('사용일자가 오늘보다 작을수 없습니다!'); // 시작일 선택하십시오.
    med_SDate.Setfocus;
    Exit;
  end;

  if Trim(edt_phone.Text) = '' then
  begin
    MakeMsg('회신받을 연락처를 입력해주세요.');
    edt_phone.Setfocus;
    Exit;
  end;
                              
  if (Trim(Copy(cbx_Proof.Text, 61, 10)) = 'E')
      or (Trim(Copy(cbx_Proof.Text, 61, 10)) = 'CE') then
  begin
    if Trim(edt_sJobtype.Text) = '' then
    begin
      MakeMsg(GF_A021, '영문직종명');
      edt_sJobtype.SetFocus;
      Exit;
    end;

    if Trim(mo_sEngaddr.Text) = '' then
    begin
      MakeMsg(GF_A021, '영문주소');
      mo_sEngaddr.SetFocus;
      Exit;
    end;
  end;

  sTemp := Trim(Copy(cbx_Proof.Text, 51, 10));
  if (sTemp = '00004') or (sTemp = '10004') then //국/영문 갑종근로소득증명
  begin
    if Trim(med_BDateFr.Text) = '' then
    begin                                        //'신고기준' + 시작일 + '$S을(를) 입력하십시오.'
      MakeMsg(GF_A021, '갑종근로소득증명일 경우' + '신고기준' + GNF016);
      med_BDateFr.SetFocus;
      Exit;
    end;

    if Trim(med_BDateTo.Text) = '' then
    begin                                        //'신고기준' + 종료일 + '$S을(를) 입력하십시오.'
      MakeMsg(GF_A021, '갑종근로소득증명일 경우' + '신고기준' + GNF017);
      med_BDateTo.SetFocus;
      Exit;
    end;

    if Trim(med_BDateFr.Text) > Trim(med_BDateTo.Text) then
    begin
      MakeMsg(GF_A007); //시작일자가 종료일자보다 클 수 없습니다.
      med_BDateFr.SetFocus;
      Exit;
    end;

    // 일자의 유효성 체크. 추가 김용욱 2005-12-30
    if(Trunc(StrToDate(ConvertSDate(med_BDateTo.Text)) - StrToDate(ConvertSDate(med_BDateFr.Text))) < 0) then
    begin
      MakeMsg(GF_A130); //'신고기준일자가 유효하지 않습니다.'
      med_BDateFr.SetFocus;
      Exit;
    end;

    // 추가 김용욱 2005-12-30
    if CompareDate(IncMonth(StrToDate(ConvertSDate(med_BDateFr.Text)),12)
                           ,StrToDate(ConvertSDate(med_BDateTo.Text))      ) = -1 then
    begin
      MakeMsg('신고기준일자는 12개월 내에서만 신청가능합니다');
      med_BDateFr.SetFocus;
      Exit;
    end;

  end;





  // 발급하려는 재증명의 종류가 재직, 영문재직직 증명서의 경우     추가 김용욱 2005-11-08
  // 재직자인지 확인(재직자만 발급 가능)
  
  if (sTemp = '00001') or (sTemp = '10001') then
  begin
    try
      bExcept := True;
      Screen.Cursor := crHourGlass;
      gaInsab1 := HgaInsab1.Create;
      iRowNo   := gaInsab1.SelInsab1(sLoc, edt_Empno1.Text);  // txGetF32('GA_INSAM_L1')

      if (iRowNo <= 0 ) then
      begin
        bExcept := False;
        GAMAINF.sbMain.Panels[0].Text := MakeMsgStr(GF_A000); //조회할 자료가 없습니다.
        Exit;
      end;

      if (iRowNo = 1 ) then
      begin
        sTemp := Trim(gaInsab1.sEntdt[0]);
        if sTemp = '' then
        begin
          MakeMsg('입사일이 존재하지 않습니다!' +#13+
                  '발령사항을 확인하시기 바랍니다!!');
          bExcept := False;
          Exit;
        end;

        sTemp := Trim(gaInsab1.sRetdt[0]);

        if (sTemp <> '') then
        begin
          Long := StrToDate(ConvertSDate(sTemp)) - StrToDate(ConvertSDate(gDate));

          if (Long < 0) then
          begin
            MakeMsg('이미 퇴사한 직원입니다!' +#13+
                    '발령사항을 확인하시기 바랍니다!!');
            bExcept := False;
            Exit;
          end;
        end;
      end;
    finally
      gaInsab1.Free;
      Screen.Cursor := crDefault;
    end;
    
    if not bExcept then Exit;
  end;
  // 발급하려는 재증명의 종류가 경력, 퇴직, 영문경력, 영문퇴직 증명서의 경우
  // 퇴사자인지 확인(퇴사자만 발급 가능)
  if (sTemp = '00002') or (sTemp = '00003') or (sTemp = '10002') or (sTemp = '10003') then
  begin
    try
      bExcept := True;

      Screen.Cursor := crHourGlass;

      gaInsab1 := HgaInsab1.Create;

      iRowNo   := gaInsab1.SelInsab1(sLoc, trim(edt_Empno1.Text));  // txGetF32('GA_INSAM_L1')

      if (iRowNo <= 0 ) then
      begin
        bExcept := False;
        GAMAINF.sbMain.Panels[0].Text := MakeMsgStr(GF_A000); //조회할 자료가 없습니다.
        Exit;
      end;

      if (iRowNo = 1 ) then
      begin
      // 기본정보0  고정좌측
        sTemp := Trim(gaInsab1.sEntdt[0]);

        if sTemp = '' then
        begin
          MakeMsg('입사일이 존재하지 않습니다!' +#13+
                  '발령사항을 확인하시기 바랍니다!!');
          bExcept := False;
          Exit;
        end;


        sTemp := Trim(gaInsab1.sRetdt[0]);
        
        if sTemp = '' then
        begin
          MakeMsg('퇴사일이 존재하지 않습니다!' +#13+
                  '발령사항을 확인하시기 바랍니다!!');
          bExcept := False;
          Exit;
        end;
      end;
      
    finally
      gaInsab1.Free;
      Screen.Cursor := crDefault;
    end;
    if not bExcept then Exit;
  end;

  // 2019-12-08 오정은 추가(근로소득원천징수영수증)
  if (sTemp = '00005') then
  begin
    try
      bExcept := True;
      Screen.Cursor := crHourGlass;

      if cbx_yyyy.Text = '' then
      begin
        ShowMessageM('신청년도를 선택하세요.');
        bExcept := False;
      end;

    finally
      Screen.Cursor := crDefault;
    end;
    if not bExcept then Exit;

  end;

  if (sTemp = '00005') then       //20210930 연말정산 내역 확인 
  begin
    try
      bExcept := True;
      Screen.Cursor := crHourGlass;

      gbYjsldt      := HgbYjsldt.Create;
      with gbYjsldt do
      begin
        ssJyymm   := cbx_yyyy.Text;
        ssCalcgbn := '1';
        ssLocate  := G_LOCATE;
        ssEmpno   := edt_Empno.Text;

        iRowNo1   := GetYjsldt20;   //gb_yjsld20_l1.pc

        Edt_Empno2.Text := gbYjsldt.sEmpno[0];

        if Edt_Empno2.Text = '' then
        begin
          ShowMessageM('신청년도를 확인하세요.');
          gbYjsldt.Free;
          Exit;
        end;


      end;
      gbYjsldt.Free;

    finally
      Screen.Cursor := crDefault;
    end;
    if not bExcept then Exit;

  end;

  

  flag := 0;

  //--------------------------------------------------------------------------------------//
  // 결재선 정보가 존재하는지 검사한후 결재선 정보가 존재하지 않을 경우 결재선 저장 시작 -//
  //--------------------------------------------------------------------------------------//
//  try
//    Screen.Cursor := crHourGlass;
//    gaAprolt := HgaAprolt.Create;
//
//    with gaAprolt do
//    begin
//      ssLocate   := sLoc;
//      ssDeptcd   := '';  //ga_aprol_l2.pc 에서는 사용안함. 다른 곳에서 사용하는 지 추후 검색 요 김용욱 2006-01-17
//      ssEmpno    := G_USERID;
//      ssDoctype  := 'P';
//      ssWkareacd := gWkareacd;  // 여기서부터 추가 김용욱 2005-12-06----------------------------//
//                                // CntApprolt(결제선 여부 체크) 호출 추가 !!!
//      iRowNo := CntApprolt;  // txGetF('GA_APROL_L2')
//
//      if iRowNo = -1 then
//      begin
//        ShowErrMsg(GAMAINF.sbMain);
//        Exit;
//      end;
//      if iRowNo = 0 then
//      begin
//        MakeMsg(GF_A016 , '조회'); //_ 된 자료가 없습니다.
//        Exit;
//      end;
//
//      if sCnt[0] = '0' then
//      begin
//        MakeMsg('등록된 결재선 정보가 존재하지 않습니다!' + #13+
//                '기초코드관리->결재권자등록(제증명신청서)' + #13+
//                '화면에서 결재선을 등록후 작업하세요');
//        Exit;
//      end;
//
//      
//      if sCnt[0] >= '1' then
//      begin
//        ssDeptcd := gWkareacd;
//
//        iRowNo := ListApprolt;  // txGetF('GA_APROL_L1')
//
//        bSeqNoZero := False;    // 최종결재권자 플래그...
//
//        if iRowNo <= 0 then
//        begin
//          MakeMsg('결재권자가 등록되지 않았습니다!' +#13+
//                  '결재권자를 등록하신 후 신청하여 주시기 바랍니다!');
//          bbt_Insert.Enabled := False;
//          Exit;
//        end;
//
//        slAppEmpno := sAppempno[0];
//
//        
//        bbt_Insert.Enabled := True;
//
//        if iRowNo > 0 then
//          for iLoop := 0 to iRowNo - 1 do
//          begin
//            if sSeqno[iLoop] = '0' then  // 결재권자 등록된 사람중에
//              bSeqNoZero := True;        // 최종결재권자(SeqNo:0) 가 있으면 ...
//          end;
//
//        if not bSeqNoZero then         // 최종결재권자가 없는 경우, 빠져나감
//        begin
//          MakeMsg('등록된 결재선 정보가 존재하지 않습니다!'  + #13+
//                  '기초코드관리->결재권자등록(제증명신청서)' + #13+
//                  '화면에서 결재선을 등록후 작업하세요');
//          Exit;
//        end;
//
//        if sAppEmpno[0] = G_USERID then
//          flag := 1;
//      end;
//    end;  // with  여기까지 수정 및 추가 -------------------------------------------------------//
//  finally
//    gaAprolt.Free;
//    Screen.Cursor := crDefault;
//  end; // try
  //--------------------------------------------------------------------------------------//
  // 결재선 정보가 존재하는지 검사한후 결재선 정보가 존재하지 않을 경우 결재선 저장 끝 ---//
  //--------------------------------------------------------------------------------------//
 
  try
    Screen.Cursor := crHourGlass;
    gaTenuat := HgaTenuat.Create;

    with gaTenuat do
    begin
      sEmpno      := edt_Empno1.Text;
      sLocate     := sLoc;

      //--------------------------------------------------
      // 증명서 담당자가 여러번 중복 신청할 수 있도록 수정 김용욱 2005-11-10
      // (old)       sTenusdate  := gDate;
      //--------------------------------------------------

      if   sMode = 'U' then
      begin
        sChoice     := 'U';
        sTenusdate  := advList.Cells[5, advList.Row];
//        advList.Cells[4, advList.Row];
      end
      else
      begin
        sChoice     := 'I';
        sTenusdate  := gDate + FormatDateTime('hhnnss', Now);
      end;
 
      sTenutype   := Trim(Copy(cbx_Proof.Text, 51, 10));
      sTenupubno  := '';
      sTenuuse    := Trim(mo_sTenuuse.Text);
      sTenucnt    := Trim(edt_Cnt.Text);
      sUsedate    := Trim(med_SDate.Text);
      sOffice     := Trim(edt_sOffice.Text);
      sTenuprnyn  := 'N';
      sPrintdate  := '';
      sJobtype    := Trim(edt_sJobtype.Text);
      sEngAddr    := Trim(mo_sEngAddr.Text);
      sAppEmpno   := slAppEmpno;            // 결재권자 사번
      sPhoneno    := Trim(edt_phone.Text);  //20210609 핸드폰 번호 추가

//      if flag = 1 then    // flag 적용 수정 김용욱 2006-01-17          20210609 sAppyn (현업결재)는 무조건 Y로 되게 주석 처리
//        sAppyn    := 'Y'
//      else
//        sAppyn    := 'N';
      sAppyn      := 'Y';                   //20210609 추가

      sInsayn     := 'N';       // 추가 김용욱 2006-01-18 (누가 신청하든 처음에는 'N')


      if chk1.Checked = true then  // 주민등록번호 출력여부 2014.12.08 김승철 추가
        sResnoyn  := 'Y'
      else
        sResnoyn  := 'N';


      sEditid     := G_USERID;
      sEditip     := G_USERIP;

      sBaseDateFr := Trim(med_BDateFr.Text);
      sBaseDateTo := Trim(med_BDateTo.Text);

      // 근로소득 원천 징수 영수증에서는 sBaseDateFr = 신청년도
      if sTenutype = '00005' then
        sBaseDateFr := (cbx_yyyy.Text+'0101'); //입력 포맷 맞춰주기 위해.

//      ShowMessage(sBaseDateFr);
//      ShowMessage(sBaseDateTo);

//      iRowNo := RsqtTenuat;  // txPutF('GA_TENUA_I1')
      iRowNo := RsqtTenuat2;  // txPutF('GA_TENUA_I2')   //20210427 수정

      if iRowNO = -1 then
      begin
      if GetTxUrcode = -10 then
         MakeMsg(GF_A204 ,GNF230) // 해당 자료가 이미 존재 합니다.
      else
         ShowErrMsg(GAMAINF.sbMain);
         gaTenuat.Free;
         Exit;
      end;
      if iRowNO = 0 then
      begin
         MakeMsg(GF_A016 , NF240); //신청 된 자료가 없습니다.
         gaTenuat.Free;
         Exit;
      end;

      if sMode = 'I' then
           MakeMsg(GF_A022,'입력')
      else
           MakeMsg(GF_A022,'수정');

      pClear;
      //MakeMsg(GF_A022,NF240); // 이 완료되었습니다
    end;
    gaTenuat.Free;
  finally
    Screen.Cursor := crDefault;
  end;

  GU_SAVEMODE  := 'Z';  

  Bbtn_SubmynClick(Self);

  bbt_SearchClick(nil);
  pnl_Search.Enabled := True;  // 추가 김용욱 2006-01-17

  Bbtn_Submyn.Click;  //20210406 이은아 추가 저장누르면 제출도 바로 되도록 (장다은 요청)
                             //제출버튼도 안보이도록 (장다은 요청)
//  if not IsThereForm('GAE001F3') then              //202010406 이은아 재증명 결재 창으로 이동
//      Application.CreateForm(TGAE001F3, GAE001F3);
//    GAE001F3.WindowState :=  wsMaximized;
//    GAE001F3.bbt_Search.Click;
//  bbt_Close.Click;

end;


procedure TGAE003F2.bbt_CancelClick(Sender: TObject);
begin
  inherited;

  //
  if advList.Cells[1, 1] <> '' then
     advListClick(Sender)
  else
  begin
      pClear;
  end;
  mo_retxt.Text := '';
  mo_retxt.Visible :=false;
  lab_rextxt.Visible := false;
  pnl_Work.Enabled    := False;
  pnl_Search.Enabled  := True;
  advList.Enabled     := True;

  cbx_Proof.Enabled   := True;

  bbt_Insert.Enabled  := True;

  if (advList.Cells[5, 1] = '') then
    bbt_Update.Enabled  := False  //1로우의 Key값..
  else
    bbt_Update.Enabled  := True;

  if advList.Cells[7, advList.Row] = 'Y' then
  begin
    bbt_Update.Enabled  := False;
    Bbtn_Submyn.Enabled := False;
  end
  else
  begin
    bbt_Update.Enabled  := True;
    Bbtn_Submyn.Enabled := True;    
  end;

  bbt_Save.Enabled    := False;
  Bbt_Cancel.Enabled := False;
end;

procedure TGAE003F2.Bbtn_SubmynClick(Sender: TObject);
var
  iRowNo :integer;
begin
  inherited;   //제출..

  GU_SAVEMODE1 := 'K';  

//  if (GU_SAVEMODE = 'Z') and (GU_SAVEMODE1 = 'K' ) then 
//  begin
//
//    if MakeQus('지금 결재 신청하시겠습니까?',mtConfirmation,[mbYes,mbNo]) = mrNo then
//    begin
//       GU_SAVEMODE  := 'ZZ';
//       GU_SAVEMODE1 := 'KK';
//       Exit;
//    end;
//  end;

  Screen.Cursor := crHourglass;

  try
    gaTenuat_1 := HgaTenuat_1.Create;
    with gaTenuat_1 do
    begin
      sEmpno     := edt_Empno1.Text;
      sLocate    := sLoc;
      sTenusdate := advList.Cells[5, advList.Row];
      sTenutype  := advList.Cells[6, advList.Row];
      sEditid    := G_USERID;
      sEditip    := G_USERIP;
    end;


    iRowNo := gaTenuat_1.UpTenuat_Submyn;

    if (iRowNo = -1 ) then
    begin
      ShowErrMsg(GAMAINF.sbMain);
      Exit;
    end;

    if (iRowNo = 0)then
    begin
      MakeMsg(GF_A016,'선택'); // sChoice_n된 자료가 없습니다.
      Exit;
    end;

    ShowErrMsg(GAMAINF.sbMain);

  finally
    gaTenuat_1.Free;
    Screen.Cursor := crDefault;
  end;

  Submit;
  
{
  MakeMsg(GF_A022,'제출');// sChoice이 완료되었습니다.
  bbt_SearchClick(nil);

  GU_SAVEMODE1 := 'KK';
  GU_SAVEMODE  := 'ZZ';
  }

end;

procedure TGAE003F2.cbx_LocateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    SelectNext(Sender as TWinControl, True, True);
    Key := #0;
  end;
end;

procedure TGAE003F2.edt_EmpnoChange(Sender: TObject);
begin
  inherited;

  advList.ClearRows(1, advList.RowCount - 1);
  advList.RowCount := 2;

  edt_Empnm.Clear;
  edt_empno1.Text := edt_Empno.Text;
end;

procedure TGAE003F2.pClear;
begin
  cbx_Proof.ItemIndex := 0;

  med_BDateFr.Clear;
  med_BDateTo.Clear;
  med_SDate.Text := gDate;
  edt_Cnt.Text   := '1';

  mo_sTenuuse.Clear;
  edt_sOffice.Clear;
  edt_sJobtype.Clear;
  mo_sEngaddr.Clear; // 20061011
  edt_phone.Clear; //20210609
end;

procedure TGAE003F2.med_SYYMMChange(Sender: TObject);
begin
  inherited;
    advList.ClearRows(1, advList.RowCount - 1);
    advList.RowCount := 2;
end;


procedure TGAE003F2.sbt_sPlusClick(Sender: TObject);
begin
  inherited;
  if Length(med_SYYMM.Text) <> 6 then
  begin
    MakeMsg(GF_A001, '기준월월'); //근무년월 $S을(를) 확인하십시오.
    med_SYYMM.SetFocus;
    Exit;
  end;
  med_SYYMM.Text := NextYyMm(med_SYYMM.Text);
end;

procedure TGAE003F2.sbt_sMinusClick(Sender: TObject);
begin
  inherited;
 if Length(med_SYYMM.Text) <> 6 then
  begin
    MakeMsg(GF_A001, '기준월'); //근무년월 $S을(를) 확인하십시오.
    med_SYYMM.SetFocus;
    Exit;
  end;
  med_SYYMM.Text := PrevYyMm(med_SYYMM.Text);
end;

procedure TGAE003F2.sbt_Plus1Click(Sender: TObject);
begin
  inherited;
  if Length(med_BDateTo.Text) <> 8 then
  begin
    MakeMsg(GF_A001, '기준월월'); //근무년월 $S을(를) 확인하십시오.
    med_BDateTo.SetFocus;
    Exit;
  end;
  med_BDateTo.Text := NextYyMm(Copy(med_BDateTo.Text,1,6))+'10';
  med_BDateFr.Text := PrevYyMm(Copy(med_BDateTo.Text,1,6))+'10';
end;


procedure TGAE003F2.sbt_Minus1Click(Sender: TObject);
begin
  inherited;
  if Length(med_BDateTo.Text) <> 8 then
  begin
    MakeMsg(GF_A001, '기준월'); //근무년월 $S을(를) 확인하십시오.
    med_BDateTo.SetFocus;
    Exit;
  end;
  med_BDateTo.Text := PrevYyMm(Copy(med_BDateTo.Text,1,6))+'10';
  med_BDateFr.Text := NextYyMm(Copy(med_BDateTo.Text,1,6))+'10';
end;

procedure TGAE003F2.dtp_SDateCloseUp(Sender: TObject);
begin
  inherited;
    med_SDate.Text := DelChar(DateToStr(dtp_SDate.Date), '-');
end;

procedure TGAE003F2.Submit;
var
  iRowNo :integer;
begin
  inherited;   //제출..

  GU_SAVEMODE1 := 'K';  


  if (GU_SAVEMODE = 'Z') and (GU_SAVEMODE1 = 'K' ) then
  begin

//    if MakeQus('지금 결재 신청하시겠습니까?',mtConfirmation,[mbYes,mbNo]) = mrNo then
//    begin
       GU_SAVEMODE  := 'ZZ';
       GU_SAVEMODE1 := 'KK';
       Exit;
//    end;
  end;

  Screen.Cursor := crHourglass;

  try
    gaTenuat_1 := HgaTenuat_1.Create;
    with gaTenuat_1 do
    begin
      sEmpno     := edt_Empno1.Text;
      sLocate    := sLoc;
      sTenusdate := advList.Cells[5, advList.Row];
      sTenutype  := advList.Cells[6, advList.Row];
      sEditid    := G_USERID;
      sEditip    := G_USERIP;
    end;


    iRowNo := gaTenuat_1.UpTenuat_Submyn;

    if (iRowNo = -1 ) then
    begin
      ShowErrMsg(GAMAINF.sbMain);
      Exit;
    end;

    if (iRowNo = 0)then
    begin
      MakeMsg(GF_A016,'선택'); // sChoice_n된 자료가 없습니다.
      Exit;
    end;

    ShowErrMsg(GAMAINF.sbMain);

  finally
    gaTenuat_1.Free;
    Screen.Cursor := crDefault;
  end;

  MakeMsg(GF_A022,'제출');// sChoice이 완료되었습니다.
  bbt_SearchClick(nil);

  GU_SAVEMODE1 := 'KK';
  GU_SAVEMODE  := 'ZZ';
end;

//문의사항 버튼 추가 20211101
procedure TGAE003F2.pnlpl13Click(Sender: TObject);
begin
  inherited;
  if not IsThereForm('GAE003F3') then
    Application.CreateForm(TGAE003F3, GAE003F3);
    GAE003F3.Show;
end;

end.
