inherited InouttypeEditForm: TInouttypeEditForm
  Left = 240
  Top = 235
  Caption = #25910#25903#31867#21035'--'#32534#36753
  ClientHeight = 146
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 24
    Top = 28
    Width = 48
    Height = 12
    Caption = #21517'    '#31216
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 24
    Top = 58
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh2
  end
  object Label3: TLabel [6]
    Left = 24
    Top = 88
    Width = 48
    Height = 12
    Caption = #25910#20837#25903#20986
    FocusControl = DBComboBoxEh1
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
    Top = 24
    Width = 145
    Height = 20
    DataField = #21517#31216
    DataSource = InouttypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 80
    Top = 56
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = InouttypeForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 80
    Top = 88
    Width = 145
    Height = 20
    DataField = #25910#20837#25903#20986
    DataSource = InouttypeForm.dsBaseInfo
    EditButtons = <>
    Items.Strings = (
      #26680#31639#25910#20837
      #26680#31639#25903#20986)
    TabOrder = 2
    Visible = True
  end
end
