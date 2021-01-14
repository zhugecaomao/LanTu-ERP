inherited PassMoneyForm: TPassMoneyForm
  Left = 310
  Top = 186
  Caption = #20250#21592#36716#24080
  ClientHeight = 259
  ClientWidth = 340
  PixelsPerInch = 96
  TextHeight = 12
  object Label6: TLabel [0]
    Left = 25
    Top = 230
    Width = 48
    Height = 12
    Caption = #36716#20837#37329#39069
  end
  inherited btnContent: TBitBtn
    TabOrder = 3
    OnClick = btnContentClick
  end
  inherited btnExecute1: TBitBtn
    Left = 254
    TabOrder = 4
    OnClick = btnExecute1Click
  end
  inherited btnExecute2: TBitBtn
    Left = 254
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 32
    Width = 233
    Height = 103
    Caption = #36716#20986#20250#21592
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 12
      Caption = #21345'    '#21495
    end
    object Label2: TLabel
      Left = 16
      Top = 50
      Width = 48
      Height = 12
      Caption = #20250#21592#32534#21495
    end
    object Label3: TLabel
      Left = 16
      Top = 76
      Width = 48
      Height = 12
      Caption = #21475'    '#20196
    end
    object Edit1: TEdit
      Left = 69
      Top = 20
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 69
      Top = 46
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 69
      Top = 72
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 140
    Width = 233
    Height = 77
    Caption = #36716#20837#20250#21592
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 12
      Caption = #21345'    '#21495
    end
    object Label5: TLabel
      Left = 16
      Top = 50
      Width = 48
      Height = 12
      Caption = #20250#21592#32534#21495
    end
    object Edit4: TEdit
      Left = 70
      Top = 20
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      OnChange = Edit4Change
    end
    object Edit5: TEdit
      Left = 70
      Top = 46
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
    end
  end
  object Edit6: TEdit
    Left = 80
    Top = 226
    Width = 145
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 2
    OnKeyPress = Edit6KeyPress
  end
  object ADOQryOut: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 120
  end
  object ADOQryIn: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 88
  end
end
