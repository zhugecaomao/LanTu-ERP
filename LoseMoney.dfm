inherited LoseMoneyForm: TLoseMoneyForm
  Caption = #20250#21592#21462#27454
  PixelsPerInch = 96
  TextHeight = 12
  object Label3: TLabel [0]
    Left = 19
    Top = 112
    Width = 48
    Height = 12
    Caption = #21462#27454#37329#39069
  end
  inherited GroupBox1: TGroupBox
    object Label2: TLabel [1]
      Left = 12
      Top = 45
      Width = 48
      Height = 12
      Caption = #23494'    '#30721
    end
    inherited Edit1: TEdit
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 64
      Top = 41
      Width = 145
      Height = 20
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  inherited BitBtn1: TBitBtn
    OnClick = BitBtn1Click
  end
  object Edit3: TEdit [6]
    Left = 72
    Top = 108
    Width = 145
    Height = 20
    TabOrder = 5
    OnEnter = Edit3Enter
    OnKeyPress = Edit3KeyPress
  end
end
