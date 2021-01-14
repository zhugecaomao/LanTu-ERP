inherited AreaEditForm: TAreaEditForm
  Left = 235
  Top = 192
  Caption = #22320#21306'--'#32534#36753
  ClientHeight = 125
  ClientWidth = 326
  PixelsPerInch = 96
  TextHeight = 12
  object Label2: TLabel [4]
    Left = 16
    Top = 60
    Width = 48
    Height = 12
    Caption = #22320#21306#21517#31216
    FocusControl = DBEditEh2
  end
  object Label11: TLabel [5]
    Left = 16
    Top = 32
    Width = 48
    Height = 12
    Caption = #22320#21306#32534#21495
    FocusControl = DBEditEh1
  end
  object Label1: TLabel [6]
    Left = 16
    Top = 88
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh3
  end
  inherited btnIns: TBitBtn
    TabOrder = 2
  end
  inherited btnOK: TBitBtn
    TabOrder = 4
  end
  inherited btnNO: TBitBtn
    TabOrder = 5
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 56
    Width = 145
    Height = 20
    DataField = #22320#21306#21517#31216
    DataSource = AreaForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 28
    Width = 145
    Height = 20
    DataField = #22320#21306#32534#21495
    DataSource = AreaForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 84
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = AreaForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 3
    Visible = True
    WordWrap = True
  end
end
