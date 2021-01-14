inherited BaseBillForm: TBaseBillForm
  Left = 241
  Top = 163
  Width = 609
  Height = 454
  Caption = #21333#25454#32534#36753#22522#31867
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 601
    Height = 43
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 597
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 584
      Height = 37
      ButtonHeight = 35
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Flat = True
      Images = DataMForm.ImageList
      ShowCaptions = True
      TabOrder = 0
      object tbIns: TToolButton
        Left = 0
        Top = 0
        Caption = #26032#22686
        ImageIndex = 18
      end
      object tbEdi: TToolButton
        Left = 31
        Top = 0
        Caption = #20462#25913
        ImageIndex = 11
      end
      object tbDel: TToolButton
        Left = 62
        Top = 0
        Caption = #21024#38500
        ImageIndex = 1
        OnClick = tbDelClick
      end
      object tbRef: TToolButton
        Left = 93
        Top = 0
        Caption = #21047#26032
        ImageIndex = 42
        OnClick = tbRefClick
      end
      object tbSep1: TToolButton
        Left = 124
        Top = 0
        Width = 8
        Caption = 'tbSep1'
        ImageIndex = 43
        Style = tbsSeparator
      end
      object tbFin: TToolButton
        Left = 132
        Top = 0
        Caption = #26597#25214
        ImageIndex = 6
        OnClick = tbFinClick
      end
      object tbsFit: TToolButton
        Left = 163
        Top = 0
        Caption = #36807#28388
        ImageIndex = 3
        OnClick = tbsFitClick
      end
      object tbsSep2: TToolButton
        Left = 194
        Top = 0
        Width = 8
        Caption = 'tbsSep2'
        ImageIndex = 45
        Style = tbsSeparator
      end
      object tbsPri: TToolButton
        Left = 202
        Top = 0
        Caption = #25171#21360
        ImageIndex = 7
        OnClick = tbsPriClick
      end
      object tbsSav: TToolButton
        Left = 233
        Top = 0
        Caption = #23548#20986
        ImageIndex = 54
        OnClick = tbsSavClick
      end
      object tbsSep3: TToolButton
        Left = 264
        Top = 0
        Width = 8
        Caption = 'tbsSep3'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbsExi: TToolButton
        Left = 272
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
    Width = 601
    Height = 384
    Align = alClient
    DataSource = dsMaster
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
  object ADOQMaster: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 440
    Top = 120
  end
  object dsMaster: TDataSource
    DataSet = ADOQMaster
    Left = 472
    Top = 120
  end
  object ADOQList: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    DataSource = dsMaster
    Parameters = <>
    Prepared = True
    Left = 440
    Top = 176
  end
  object dsList: TDataSource
    DataSet = ADOQList
    Left = 472
    Top = 176
  end
  object PrintForm1: TPrintForm
    DBGridEh = DBGridEh1
    Title = #19975#21830#20250#21592#28040#36153#31649#29702#31995#32479
    Alignment = TitleRight
    Left = 120
    Top = 88
  end
end
