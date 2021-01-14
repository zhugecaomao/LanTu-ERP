inherited FindPublicForm: TFindPublicForm
  Left = 239
  Top = 116
  Caption = #19975#33021#26597#25214
  ClientHeight = 153
  ClientWidth = 359
  PixelsPerInch = 96
  TextHeight = 12
  object Label4: TLabel
    Left = 14
    Top = 16
    Width = 60
    Height = 12
    Caption = #26597#25214#20869#23481#65306
  end
  object edtName: TEdit
    Left = 75
    Top = 12
    Width = 181
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 36
    Width = 259
    Height = 109
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 60
      Height = 12
      Caption = #26597#25214#23383#27573#65306
    end
    object Label2: TLabel
      Left = 8
      Top = 50
      Width = 60
      Height = 12
      Caption = #25628#32034#26041#21521#65306
    end
    object edtField: TComboBox
      Left = 68
      Top = 17
      Width = 181
      Height = 20
      Style = csDropDownList
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      ItemHeight = 12
      TabOrder = 0
    end
    object edtCaption: TComboBox
      Left = 68
      Top = 17
      Width = 181
      Height = 20
      Style = csDropDownList
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      ItemHeight = 12
      TabOrder = 1
    end
    object edtDirection: TComboBox
      Left = 68
      Top = 48
      Width = 181
      Height = 20
      Style = csDropDownList
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      ItemHeight = 12
      TabOrder = 2
      Items.Strings = (
        #20840#37096#25968#25454
        #24403#21069#34892#21521#19979)
    end
    object checkAll: TCheckBox
      Left = 150
      Top = 80
      Width = 97
      Height = 17
      Caption = #20840#23383#21305#37197
      TabOrder = 3
    end
  end
  object bbFind: TBitBtn
    Left = 275
    Top = 8
    Width = 75
    Height = 25
    Caption = #26597'  '#25214'(&F)'
    TabOrder = 2
    OnClick = bbFindClick
  end
  object bbFindDown: TBitBtn
    Left = 275
    Top = 40
    Width = 75
    Height = 25
    Caption = #19979#19968#20010'(&D)'
    TabOrder = 3
    OnClick = bbFindDownClick
  end
  object bbNo: TBitBtn
    Left = 275
    Top = 72
    Width = 75
    Height = 25
    Caption = #21462'  '#28040'(&F)'
    TabOrder = 4
    OnClick = bbNoClick
  end
end
