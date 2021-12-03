unit daywork;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Calendar, StdCtrls, ExtCtrls, AdvEdit, AdvEdBtn,
  PlannerDatePicker, ComCtrls, Buttons;

type
  TForm2 = class(TForm)
    dayworkpanel: TPanel;
    dayworklabel: TLabel;
    Panel1: TPanel;
    ed_locate: TEdit;
    Panel2: TPanel;
    ed_position: TEdit;
    Panel3: TPanel;
    ed_name: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    DateTimePicker1: TDateTimePicker;
    ed_date: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    ed_dayworktext: TEdit;
    ed_ok: TEdit;
    ed_remark: TEdit;
    Panel12: TPanel;
    ed_daywork2: TEdit;
    ed_ok2: TEdit;
    ed_remark2: TEdit;
    Label1: TLabel;
    datelabel: TLabel;
    Panel13: TPanel;
    ed_etc: TEdit;
    Panel14: TPanel;
    ed_all: TEdit;
    close2btn: TBitBtn;
    savebtn: TBitBtn;
    procedure close2btnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    iId             :string;    //���̵�
    iPosition       :string;    //����
    iName           :string;    //�̸�
    iWirtedate      :string;    //�ۼ�����
    iDaywork        :string;    //�����������
    iCompleteyn     :string;    //�ϷῩ��
    iRemark         :string;    //���
    iTomwork        :string;    //�����������
    iEtc            :string;    //��Ÿ
    iAllnotice      :string;    //��ü��������
//------------------------------------------------------------------------------
    sId             :Variant;   //���̵�
    sPosition       :Variant;   //����
    sName           :Variant;   //�̸�
    iWritedate      :Variant;   //�ۼ�����
    sDaywork        :Variant;   //�����������
    sCompleteyn     :Variant;   //�ϷῩ��
    sRemark         :Variant;   //���
    sTomwork        :Variant;   //�����������
    sEtc            :Variant;   //��Ÿ
    sAllnotice      :Variant;   //��ü��������
  public
  //  function PutData :integer;   //�Էµ�����
 //   function GetData(iDate : String) :Integer;
  end;




var
  Form2  : TForm2;
  Result : integer;

implementation

uses login;

{$R *.dfm}




procedure TForm2.close2btnClick(Sender: TObject);
begin
    Form1.Close;
    close;
end;



procedure TForm2.FormDestroy(Sender: TObject);
begin
    Form2 := nil;
end;



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;



procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
    ed_date.Text := DateToStr(DateTimePicker1.Date);
    datelabel.Caption := ed_date.Text;
end;



procedure TForm2.FormCreate(Sender: TObject);
begin
    ed_date.Text := DateToStr(DateTimePicker1.Date);
    datelabel.Caption := ed_date.Text;
    //savebtn.SetFocus;
end;


//function TForm2.PutData :Integer;
//begin
//    Result := -1;
//    txAlloc;
//
//    SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10');
//
//    SetFldValue(0, [  iId
//                     ,iPosition
//                     ,iName
//                     ,iWirtedate
//                     ,iDaywork
//                     ,iCompleteyn
//                     ,iRemark
//                     ,iTomwork
//                     ,iEtc
//                     ,iAllnotice
//                     ]);
//
//   //Tuxedo Service Call
//    if (txPutF('SQ_ADDMGT_I2')) then
//    begin
//        Result := 1;
//        txFree;
//    end;
//end;
//
//function TForm2.GetData(iDate : String) :Integer;
//begin
//    Result := -1;
//    //Pointer�� �޾ƿ�.
//    txAlloc;
//    SetFldName('S_STRING1');
//    SetFldValue(0, [iDate]);
//    //Tuxedo Service Call
//    if (txGetF('SQ_GETMGT_L1')) then
//    begin
//        GetFldVar('S_CODE1'  ,   sId);
//        GetFldVar('S_CODE2'  ,   sPosition);
//        GetFldVar('S_CODE3'  ,   sName);
//        GetFldVar('S_CODE4'  ,   sWirtedate);
//        GetFldVar('S_CODE5'  ,   sDaywork);
//        GetFldVar('S_CODE6'  ,   sCompleteyn);
//        GetFldVar('S_CODE7'  ,   sRemark);
//        GetFldVar('S_CODE8'  ,   sTomwork);
//        GetFldVar('S_CODE9'  ,   sEtc);
//        GetFldVar('S_CODE10' ,   sAllnotice);
//
//                 //Service�� �����ϰ� FML Buffer�� PUT�� Record��
//        Result := GetRecordCnt('S_CODE1');
//        txFree;
//   end;
//
//end;



end.
