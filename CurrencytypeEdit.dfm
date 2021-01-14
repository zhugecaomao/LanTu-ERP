inherited CurrencytypeEditForm: TCurrencytypeEditForm
  Left = 426
  Top = 222
  Caption = #22806#24065#31181#31867'--'#32534#36753
  ClientHeight = 132
  ClientWidth = 339
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 32
    Top = 32
    Width = 48
    Height = 12
    Caption = #24065#31181#21517#31216
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 8
    Top = 60
    Width = 72
    Height = 12
    Caption = #23545#20154#27665#24065#27719#29575
    FocusControl = DBEditEh2
  end
  object Label3: TLabel [6]
    Left = 32
    Top = 88
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh3
  end
  inherited btnIns: TBitBtn
    Left = 249
    TabOrder = 3
  end
  inherited btnOK: TBitBtn
    Left = 249
    TabOrder = 4
  end
  inherited btnNO: TBitBtn
    Left = 249
    TabOrder = 5
  end
  object DBEditEh1: TDBEditEh
    Left = 88
    Top = 28
    Width = 145
    Height = 20
    DataField = #24065#31181#21517#31216
    DataSource = CurrencytypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 88
    Top = 56
    Width = 145
    Height = 20
    DataField = #23545#20154#27665#24065#27719#29575
    DataSource = CurrencytypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 88
    Top = 84
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = CurrencytypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 2
    Visible = True
  end
end
