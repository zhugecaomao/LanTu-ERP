unit Test;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, ExtDlgs, DsFancyButton, DBGrids, Jpeg,
  ExtCtrls, DBCtrls;

type
  TTestForm = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DsFancyButton1: TDsFancyButton;
    DsFancyButton2: TDsFancyButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  TestForm: TTestForm;

implementation

uses SetData;

{$R *.dfm}

procedure TTestForm.DsFancyButton1Click(Sender: TObject);
var 
  MyJPEG : TJPEGImage;
  MS: TMemoryStream;

begin



  MyJPEG := TJPEGImage.Create;
  try
    with MyJPEG do
    begin
      Assign(Image1.Picture.Graphic);
      MS:=TMemoryStream.create;
      SaveToStream(MS);
      MS.Position:=0;
      ADOQuery1.Append;
      TBlobField(ADOQuery1.FieldbyName('图片')).LoadFromStream(MS);
      ADOQuery1.Post;
      ShowMessage('图像保存完毕！');
    end;
  finally
    MyJPEG.Free;
  end;

end;


procedure TTestForm.DsFancyButton2Click(Sender: TObject);
var tempstream:TStringStream;
   tempjpeg:TJPEGImage; 
begin
   try
        tempstream:=TStringStream.Create(' ');
        TBlobField(ADOQuery1.FieldByName('图片')).SaveToStream(tempstream);            
        tempstream.Position:=0;
        tempjpeg:=TJPEGImage.Create;
        tempjpeg.LoadFromStream(tempstream);
        Image1.Picture.Bitmap.Assign(tempjpeg);
  finally
        tempstream.Free;
        tempjpeg.Free;
  end;
end;

procedure TTestForm.Image1DblClick(Sender: TObject);
var
  sFile:String;   //文件名
begin
  if OpenPictureDialog1.Execute then
  begin
    sFile:=openPictureDialog1.FileName;
    if Trim(sFile)<>'' then
    begin
      Image1.Picture.LoadFromFile(sFile);
    end;
  end;
end;

end.
