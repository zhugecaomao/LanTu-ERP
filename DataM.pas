unit DataM;

interface

uses
  SysUtils, Windows, Messages, ImgList, Controls, DB, ADODB, Classes,
  WinSkinData;

type
  TDataMForm = class(TDataModule)
    ADOConnet: TADOConnection;
    ImageList: TImageList;
    SkinData1: TSkinData;
    procedure DataModuleCreate(Sender: TObject);
  private
    bLinkAccess: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMForm: TDataMForm;

implementation

uses SysPublic;

{$R *.DFM}

procedure TDataMForm.DataModuleCreate(Sender: TObject);
begin
  bLinkAccess:= True;
  if bLinkAccess then LnkLocalAccess;
end;

end.
