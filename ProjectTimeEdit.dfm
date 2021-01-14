inherited ProjectTimeEditForm: TProjectTimeEditForm
  Left = 557
  Top = 238
  Width = 328
  Height = 189
  Caption = #35745#26102#20215#26684'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 34
    Width = 48
    Height = 12
    Caption = #24320#22987#26102#38388
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 60
    Width = 48
    Height = 12
    Caption = #32467#26463#26102#38388
  end
  object Label3: TLabel [6]
    Left = 16
    Top = 85
    Width = 48
    Height = 12
    Caption = #21333#20301#26102#38388
  end
  object Label4: TLabel [7]
    Left = 16
    Top = 111
    Width = 48
    Height = 12
    Caption = #26368#23567#21333#20301
  end
  object Label5: TLabel [8]
    Left = 16
    Top = 137
    Width = 48
    Height = 12
    Caption = #20215'    '#26684
  end
  inherited btnIns: TBitBtn
    Left = 234
    TabOrder = 5
  end
  inherited btnOK: TBitBtn
    Left = 234
    TabOrder = 6
  end
  inherited btnNO: TBitBtn
    Left = 234
    TabOrder = 7
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 81
    Width = 145
    Height = 20
    DataField = #21333#20301#26102#38388
    DataSource = ProjectTimeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 2
    Visible = True
  end
  object DBEditEh4: TDBEditEh
    Left = 72
    Top = 107
    Width = 145
    Height = 20
    DataField = #26368#23567#21333#20301
    DataSource = ProjectTimeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 3
    Visible = True
  end
  object DBEditEh5: TDBEditEh
    Left = 72
    Top = 133
    Width = 145
    Height = 20
    DataField = #20215#26684
    DataSource = ProjectTimeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 32
    Width = 145
    Height = 20
    DataField = #24320#22987#26102#38388
    DataSource = ProjectTimeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 56
    Width = 145
    Height = 20
    DataField = #32467#26463#26102#38388
    DataSource = ProjectTimeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
end
