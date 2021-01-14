inherited CashbankEditForm: TCashbankEditForm
  Left = 315
  Top = 389
  Caption = #29616#37329#38134#34892'--'#32534#36753
  ClientHeight = 123
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 32
    Width = 48
    Height = 12
    Caption = #24080#25143#21517#31216
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 60
    Width = 48
    Height = 12
    Caption = #38134#34892#20840#21517
  end
  object Label3: TLabel [6]
    Left = 16
    Top = 88
    Width = 48
    Height = 12
    Caption = #38134#34892#24080#21495
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 28
    Width = 145
    Height = 20
    DataField = #24080#25143#21517#31216
    DataSource = CashbankForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 56
    Width = 145
    Height = 20
    DataField = #38134#34892#20840#21517
    DataSource = CashbankForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 4
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 84
    Width = 145
    Height = 20
    DataField = #38134#34892#24080#21495
    DataSource = CashbankForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 5
    Visible = True
  end
end
