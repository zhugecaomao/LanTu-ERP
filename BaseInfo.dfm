object BaseInfoForm: TBaseInfoForm
  Left = 197
  Top = 355
  Width = 503
  Height = 367
  Caption = #24377#20986#22522#30784#36164#26009#31383#20307
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 495
    Height = 43
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 491
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 478
      Height = 37
      ButtonHeight = 35
      ButtonWidth = 43
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
        Left = 43
        Top = 0
        Caption = #20462#25913
        ImageIndex = 11
      end
      object tbDel: TToolButton
        Left = 86
        Top = 0
        Caption = #21024#38500
        ImageIndex = 1
        OnClick = tbDelClick
      end
      object tbRef: TToolButton
        Left = 129
        Top = 0
        Caption = #21047#26032
        ImageIndex = 42
        OnClick = tbRefClick
      end
      object tbSep1: TToolButton
        Left = 172
        Top = 0
        Width = 8
        Caption = 'tbSep1'
        ImageIndex = 43
        Style = tbsSeparator
      end
      object tbFin: TToolButton
        Left = 180
        Top = 0
        Caption = #26597#25214
        ImageIndex = 6
        OnClick = tbFinClick
      end
      object tbsFit: TToolButton
        Left = 223
        Top = 0
        Caption = #36807#28388
        ImageIndex = 3
        OnClick = tbsFitClick
      end
      object tbSetCol: TToolButton
        Left = 266
        Top = 0
        Caption = #37197#32622#21015
        ImageIndex = 24
        OnClick = tbSetColClick
      end
      object tbsSep2: TToolButton
        Left = 309
        Top = 0
        Width = 8
        Caption = 'tbsSep2'
        ImageIndex = 45
        Style = tbsSeparator
      end
      object tbsPri: TToolButton
        Left = 317
        Top = 0
        Caption = #25171#21360
        ImageIndex = 7
        OnClick = tbsPriClick
      end
      object tbsSav: TToolButton
        Left = 360
        Top = 0
        Caption = #23548#20986
        ImageIndex = 54
        OnClick = tbsSavClick
      end
      object tbsSep3: TToolButton
        Left = 403
        Top = 0
        Width = 8
        Caption = 'tbsSep3'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbsExi: TToolButton
        Left = 411
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
    Width = 495
    Height = 297
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
    OnCellClick = DBGridEh1CellClick
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
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
  object QIsUnique: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 384
    Top = 104
  end
  object PrintForm1: TPrintForm
    DBGridEh = DBGridEh1
    Title = #19975#21830#20250#21592#28040#36153#31649#29702#31995#32479
    Alignment = TitleRight
    Left = 136
    Top = 120
  end
end
