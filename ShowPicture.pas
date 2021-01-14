unit ShowPicture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, ExtDlgs, DBGrids, Jpeg,
  ExtCtrls, DBCtrls, StdCtrls;

type
  TShowPictureForm = class(TForm)
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  ShowPictureForm: TShowPictureForm;

implementation

uses DataM, SysPublic;

{$R *.dfm}

procedure TShowPictureForm.DsFancyButton1Click(Sender: TObject);
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


procedure TShowPictureForm.DsFancyButton2Click(Sender: TObject);
var
  tempstream:TStringStream;
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

procedure TShowPictureForm.Image1DblClick(Sender: TObject);
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

procedure TShowPictureForm.FormShow(Sender: TObject);
begin
  if not ADOQuery1.Active then
    ADOQuery1.Open;
end;

end.
