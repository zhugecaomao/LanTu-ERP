inherited ProductTypeEditForm: TProductTypeEditForm
  Left = 585
  Top = 226
  Caption = #20135#21697#31867#22411'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 8
    Top = 24
    Width = 60
    Height = 12
    Caption = #31867#21035#32534#21495#65306
  end
  object Label2: TLabel [5]
    Left = 8
    Top = 52
    Width = 60
    Height = 12
    Caption = #31867#21035#21517#31216#65306
  end
  object Label3: TLabel [6]
    Left = 8
    Top = 80
    Width = 60
    Height = 12
    Caption = #22791'    '#27880#65306
  end
  inherited btnIns: TBitBtn
    TabOrder = 4
  end
  inherited btnOK: TBitBtn
    TabOrder = 3
  end
  inherited btnNO: TBitBtn
    TabOrder = 5
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 20
    Width = 145
    Height = 20
    DataField = #31867#21035#32534#21495
    DataSource = ProductTypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 48
    Width = 145
    Height = 20
    DataField = #31867#21035#21517#31216
    DataSource = ProductTypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 76
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = ProductTypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 2
    Visible = True
  end
end
