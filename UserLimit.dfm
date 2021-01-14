inherited UserLimitForm: TUserLimitForm
  Left = 235
  Top = 186
  Caption = #29992#25143#26435#38480#35774#32622
  ClientHeight = 415
  ClientWidth = 627
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter
    Left = 113
    Top = 43
    Height = 372
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 43
    Width = 113
    Height = 372
    Align = alLeft
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#32534#21495
        Footers = <>
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#22995#21517
        Footers = <>
        Width = 96
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 627
    Height = 43
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 623
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 610
      Height = 37
      ButtonHeight = 35
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Flat = True
      Images = DataMForm.ImageList
      ShowCaptions = True
      TabOrder = 0
      object tbRef: TToolButton
        Left = 0
        Top = 0
        Caption = #21047#26032
        ImageIndex = 42
        OnClick = tbRefClick
      end
      object tbSep1: TToolButton
        Left = 31
        Top = 0
        Width = 8
        Caption = 'tbSep1'
        ImageIndex = 43
        Style = tbsSeparator
      end
      object tbASel: TToolButton
        Left = 39
        Top = 0
        Caption = #20840#36873
        ImageIndex = 0
        OnClick = tbASelClick
      end
      object tbADel: TToolButton
        Left = 70
        Top = 0
        Caption = #20840#21024
        ImageIndex = 1
        OnClick = tbADelClick
      end
      object tbsSep2: TToolButton
        Left = 101
        Top = 0
        Width = 8
        Caption = 'tbsSep2'
        ImageIndex = 45
        Style = tbsSeparator
      end
      object tbPwd: TToolButton
        Left = 109
        Top = 0
        Caption = #23494#30721
        ImageIndex = 51
        OnClick = tbPwdClick
      end
      object tbSav: TToolButton
        Left = 140
        Top = 0
        Caption = #20445#23384
        ImageIndex = 52
        OnClick = tbSavClick
      end
      object tbsExi: TToolButton
        Left = 171
        Top = 0
        Caption = #36864#20986
        ImageIndex = 4
        OnClick = tbsExiClick
      end
    end
  end
  object CheckTreeView1: TCheckTreeView
    Left = 116
    Top = 43
    Width = 511
    Height = 372
    Align = alClient
    Flatness = cfAlwaysFlat
    GrayedIsChecked = False
    Indent = 19
    ReadOnly = False
    TabOrder = 2
    OnChange = CheckTreeView1Change
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#21592#24037#32534#21495','#21592#24037#22995#21517','#21592#24037#23494#30721' From '#21592#24037#36164#26009' Order by ID')
    Left = 24
    Top = 72
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #21592#24037#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #21592#24037#22995#21517
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #21592#24037#23494#30721
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 56
    Top = 72
  end
end
