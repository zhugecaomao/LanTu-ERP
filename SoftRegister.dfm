object SoftRegisterForm: TSoftRegisterForm
  Left = 252
  Top = 201
  Width = 360
  Height = 263
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #27491#29256#36719#20214#27880#20876
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object bbOk: TBitBtn
    Left = 185
    Top = 201
    Width = 75
    Height = 25
    Caption = #30830#23450'(&Y)'
    TabOrder = 0
    OnClick = bbOkClick
  end
  object bbNo: TBitBtn
    Left = 265
    Top = 201
    Width = 75
    Height = 25
    Caption = #21462#28040'(&N)'
    TabOrder = 1
    OnClick = bbNoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 104
    Width = 337
    Height = 89
    TabOrder = 2
    object Label1: TLabel
      Left = 47
      Top = 19
      Width = 48
      Height = 12
      Caption = #26426#22120#30721#65306
    end
    object Label2: TLabel
      Left = 47
      Top = 42
      Width = 48
      Height = 12
      Caption = #27880#20876#20154#65306
    end
    object Label3: TLabel
      Left = 47
      Top = 65
      Width = 48
      Height = 12
      Caption = #27880#20876#30721#65306
    end
    object edtPcCode: TEdit
      Left = 95
      Top = 15
      Width = 181
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object edtManName: TEdit
      Left = 95
      Top = 38
      Width = 181
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object edtRegCode: TEdit
      Left = 95
      Top = 61
      Width = 181
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 2
      OnDblClick = edtRegCodeDblClick
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 335
    Height = 94
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Lines.Strings = (
      #35874#35874#20320#36141#20080#25105#20204#30340#36719#20214#12290#25105#20204#21334#32473#20320#26368#22909#30340#20135#21697#65292#20063#21334#32473#20320#26368
      #22909#30340#26381#21153#12290#20026#20102#20320#33021#20351#29992#36719#20214#30340#20840#37096#21151#33021#65292#35831#20320#20808#27880#20876#12290
      ''
      #20320#22914#26524#26159#22312#21830#24215#36141#20080#30340#26412#36719#20214#35831#30452#25509#20351#29992#36719#20214#29399#12290#20320#22914#26524#26159#22312
      #32593#19978#36141#20080#30340#26412#36719#20214#35831#25226#26426#22120#30721#21644#27880#20876#20154#21517#31216#36890#30693#25105#20844#21496#65292#25105#20204
      #20250#31435#21363#21578#30693#20320#27880#20876#30721#12290)
    ReadOnly = True
    TabOrder = 3
  end
end
