inherited BaseBillEditForm: TBaseBillEditForm
  Left = 95
  Top = 184
  BorderIcons = [biSystemMenu]
  Caption = #21333#25454#22522#31867
  ClientHeight = 441
  ClientWidth = 681
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 681
    Height = 89
    Align = alTop
    TabOrder = 0
    object bbPrint: TBitBtn
      Left = 595
      Top = 8
      Width = 75
      Height = 25
      Caption = #25171'  '#21360
      TabOrder = 0
      OnClick = bbPrintClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 681
    Height = 311
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 679
      Height = 309
      Align = alClient
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnEnter = DBGridEh1Enter
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 400
    Width = 681
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 443
      Top = 8
      Width = 75
      Height = 25
      Caption = #20445#23384#26032#22686
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = #30830'  '#23450
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 598
      Top = 8
      Width = 75
      Height = 25
      Caption = #36864'  '#20986
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object PrintForm1: TPrintForm
    DBGridEh = DBGridEh1
    Title = #19975#21830#39184#39278#23089#20048#31649#29702#31995#32479
    Alignment = TitleRight
    Panel = Panel1
    Left = 248
    Top = 137
  end
end
