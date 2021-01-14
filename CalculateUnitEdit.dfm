inherited CalculateUnitEditForm: TCalculateUnitEditForm
  Left = 401
  Top = 218
  Caption = #35745#37327#21333#20301'--'#32534#36753
  ClientHeight = 145
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 35
    Width = 48
    Height = 12
    Caption = #21333#20301#32534#21495
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 59
    Width = 48
    Height = 12
    Caption = #21333#20301#21517#31216
    FocusControl = DBEditEh2
  end
  object Label3: TLabel [6]
    Left = 16
    Top = 83
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh3
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 31
    Width = 145
    Height = 20
    DataField = #21333#20301#32534#21495
    DataSource = CalculateUnitForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 55
    Width = 145
    Height = 20
    DataField = #21333#20301#21517#31216
    DataSource = CalculateUnitForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 4
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 79
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = CalculateUnitForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 5
    Visible = True
  end
end
