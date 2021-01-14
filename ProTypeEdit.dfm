inherited ProTypeEditForm: TProTypeEditForm
  Left = 518
  Top = 225
  Height = 136
  Caption = #39033#30446#31867#21035'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 27
    Width = 48
    Height = 12
    Caption = #31867#21035#32534#21495
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 54
    Width = 48
    Height = 12
    Caption = #31867#21035#21517#31216
  end
  object Label3: TLabel [6]
    Left = 16
    Top = 82
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
  end
  inherited btnIns: TBitBtn
    TabOrder = 3
  end
  inherited btnOK: TBitBtn
    TabOrder = 4
  end
  inherited btnNO: TBitBtn
    TabOrder = 5
  end
  object DBEditEh1: TDBEditEh
    Left = 70
    Top = 23
    Width = 145
    Height = 20
    DataField = #31867#21035#32534#21495
    DataSource = ProTypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 70
    Top = 50
    Width = 145
    Height = 20
    DataField = #31867#21035#21517#31216
    DataSource = ProTypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 70
    Top = 78
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = ProTypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 2
    Visible = True
  end
end
