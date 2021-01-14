inherited GoodsTypeEditForm: TGoodsTypeEditForm
  Left = 533
  Top = 197
  Caption = #21830#21697#20998#31867'--'#32534#36753
  ClientHeight = 151
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 32
    Width = 48
    Height = 12
    Caption = #31867#21035#32534#21495
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 64
    Width = 48
    Height = 12
    Caption = #31867#21035#21517#31216
    FocusControl = DBEditEh2
  end
  object Label3: TLabel [6]
    Left = 16
    Top = 96
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh3
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 28
    Width = 145
    Height = 20
    DataField = #31867#21035#32534#21495
    DataSource = GoodsTypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 60
    Width = 145
    Height = 20
    DataField = #31867#21035#21517#31216
    DataSource = GoodsTypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 4
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 92
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = GoodsTypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 5
    Visible = True
  end
end
