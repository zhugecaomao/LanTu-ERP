inherited BillmodeEditForm: TBillmodeEditForm
  Left = 186
  Top = 244
  Caption = #25910#20184#27454#26041#24335'--'#32534#36753
  ClientHeight = 125
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 24
    Top = 32
    Width = 48
    Height = 12
    Caption = #20184#27454#26041#24335
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 24
    Top = 60
    Width = 48
    Height = 12
    Caption = #38134'    '#34892
    FocusControl = DBEditEh2
  end
  object Label3: TLabel [6]
    Left = 24
    Top = 88
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh3
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
    Left = 80
    Top = 28
    Width = 145
    Height = 20
    DataField = #20184#27454#26041#24335
    DataSource = BillmodeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 80
    Top = 56
    Width = 145
    Height = 20
    DataField = #38134#34892
    DataSource = BillmodeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 80
    Top = 84
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = BillmodeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 2
    Visible = True
  end
end
