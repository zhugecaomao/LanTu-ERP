inherited DepartEditForm: TDepartEditForm
  Left = 270
  Top = 213
  Caption = #37096#38376'--'#32534#36753
  ClientHeight = 120
  ClientWidth = 331
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 36
    Width = 48
    Height = 12
    Caption = #37096#38376#21517#31216
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 64
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh2
  end
  inherited btnIns: TBitBtn
    TabOrder = 2
  end
  inherited btnOK: TBitBtn
    TabOrder = 3
  end
  inherited btnNO: TBitBtn
    TabOrder = 4
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 32
    Width = 145
    Height = 20
    DataField = #37096#38376#21517#31216
    DataSource = DepartForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 60
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = DepartForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
end
