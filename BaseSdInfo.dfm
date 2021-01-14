inherited BaseSdInfoForm: TBaseSdInfoForm
  Left = 136
  Top = 175
  Caption = #36895#36798#22522#30784#36164#26009#22522#31867
  ClientHeight = 369
  ClientWidth = 467
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 12
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 42
    Width = 467
    Height = 327
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
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 467
    Height = 42
    Align = alTop
    TabOrder = 1
    object ToolBar2: TToolBar
      Left = 11
      Top = 2
      Width = 450
      Height = 37
      AutoSize = True
      ButtonHeight = 35
      ButtonWidth = 31
      Caption = 'ToolBar1'
      DragKind = dkDock
      DragMode = dmAutomatic
      Flat = True
      Images = DataMForm.ImageList
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      object tbSel: TToolButton
        Left = 0
        Top = 0
        Caption = #36873#25321
        ImageIndex = 0
      end
      object tbIns: TToolButton
        Left = 31
        Top = 0
        Caption = #26032#22686
        ImageIndex = 10
      end
      object tbEdi: TToolButton
        Left = 62
        Top = 0
        Caption = #20462#25913
        ImageIndex = 11
      end
      object tbDel: TToolButton
        Left = 93
        Top = 0
        Caption = #21024#38500
        ImageIndex = 1
        OnClick = tbDelClick
      end
      object tbRef: TToolButton
        Left = 124
        Top = 0
        Caption = #21047#26032
        ImageIndex = 42
        OnClick = tbRefClick
      end
      object ToolButton2: TToolButton
        Left = 155
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 43
        Style = tbsSeparator
      end
      object tbFin: TToolButton
        Left = 163
        Top = 0
        Caption = #26597#25214
        ImageIndex = 2
        OnClick = tbFinClick
      end
      object tbsFit: TToolButton
        Left = 194
        Top = 0
        Caption = #36807#28388
        ImageIndex = 3
        OnClick = tbsFitClick
      end
      object tbSetCol: TToolButton
        Left = 225
        Top = 0
        Caption = #37197#32622
        ImageIndex = 24
        OnClick = tbSetColClick
      end
      object ToolButton6: TToolButton
        Left = 256
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 46
        Style = tbsSeparator
      end
      object tbsPri: TToolButton
        Left = 264
        Top = 0
        Caption = #25171#21360
        ImageIndex = 7
        OnClick = tbsPriClick
      end
      object tbsSav: TToolButton
        Left = 295
        Top = 0
        Caption = #23548#20986
        ImageIndex = 54
        OnClick = tbsSavClick
      end
      object ToolButton9: TToolButton
        Left = 326
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 48
        Style = tbsSeparator
      end
      object tbsExi: TToolButton
        Left = 334
        Top = 0
        Caption = #36864#20986
        ImageIndex = 4
        OnClick = tbsExiClick
      end
    end
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 288
    Top = 104
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 328
    Top = 104
  end
  object QIsUnique: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 288
    Top = 160
  end
  object PrintForm1: TPrintForm
    DBGridEh = DBGridEh1
    Title = #34013#22270#36130#21153#36827#38144#23384
    Alignment = TitleRight
    Left = 168
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 48
    object word1: TMenuItem
      Caption = #23548#20986#21040'word'
    end
    object excel1: TMenuItem
      Caption = #23548#20986#21040'excel'
    end
    object html1: TMenuItem
      Caption = #23548#20986#21040'html'
    end
  end
end
