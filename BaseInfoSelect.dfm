inherited BaseInfoSelectForm: TBaseInfoSelectForm
  Left = 213
  Top = 191
  Caption = #22522#30784#36164#26009#36873#25321#22522#31867
  ClientHeight = 358
  ClientWidth = 498
  PixelsPerInch = 96
  TextHeight = 12
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 498
    Height = 43
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 494
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 481
      Height = 37
      ButtonHeight = 35
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Flat = True
      Images = DataMForm.ImageList
      ShowCaptions = True
      TabOrder = 0
      object tbSel: TToolButton
        Left = 0
        Top = 0
        Caption = #36873#25321
        ImageIndex = 0
      end
      object tbRef: TToolButton
        Left = 31
        Top = 0
        Caption = #21047#26032
        ImageIndex = 42
        OnClick = tbRefClick
      end
      object tbSep1: TToolButton
        Left = 62
        Top = 0
        Width = 8
        Caption = 'tbSep1'
        ImageIndex = 43
        Style = tbsSeparator
      end
      object tbFin: TToolButton
        Left = 70
        Top = 0
        Caption = #26597#25214
        ImageIndex = 6
        OnClick = tbFinClick
      end
      object tbsFit: TToolButton
        Left = 101
        Top = 0
        Caption = #36807#28388
        ImageIndex = 3
        OnClick = tbsFitClick
      end
      object tbsSep2: TToolButton
        Left = 132
        Top = 0
        Width = 8
        Caption = 'tbsSep2'
        ImageIndex = 45
        Style = tbsSeparator
      end
      object tbsPri: TToolButton
        Left = 140
        Top = 0
        Caption = #25171#21360
        ImageIndex = 7
        OnClick = tbsPriClick
      end
      object tbsSav: TToolButton
        Left = 171
        Top = 0
        Caption = #23548#20986
        ImageIndex = 54
        OnClick = tbsSavClick
      end
      object tbsSep3: TToolButton
        Left = 202
        Top = 0
        Width = 8
        Caption = 'tbsSep3'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbsExi: TToolButton
        Left = 210
        Top = 0
        Caption = #36864#20986
        ImageIndex = 4
        OnClick = tbsExiClick
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 43
    Width = 498
    Height = 315
    Align = alClient
    DataSource = dsBaseInfo
    DrawMemoText = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 384
    Top = 56
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 440
    Top = 56
  end
  object PrintForm1: TPrintForm
    DBGridEh = DBGridEh1
    Title = #19975#21830#39184#39278#23089#20048#31649#29702#31995#32479
    Alignment = TitleRight
    Left = 136
    Top = 72
  end
end
