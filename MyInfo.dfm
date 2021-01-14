inherited MyInfoForm: TMyInfoForm
  Left = 211
  Top = 123
  BorderIcons = [biSystemMenu]
  Caption = #36164#26009#25910#38598#22120
  ClientHeight = 444
  ClientWidth = 614
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 614
    Height = 444
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 16
        Top = 48
        Width = 36
        Height = 12
        Caption = #26085#26399#65306
        FocusControl = DBDateTimeEditEh1
      end
      object Label2: TLabel
        Left = 16
        Top = 72
        Width = 36
        Height = 12
        Caption = #26631#39064#65306
        FocusControl = DBEditEh1
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 36
        Height = 12
        Caption = #20869#23481#65306
        FocusControl = DBMemo1
      end
      object DBNavigator1: TDBNavigator
        Left = 176
        Top = 8
        Width = 240
        Height = 25
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 56
        Top = 96
        Width = 537
        Height = 305
        DataField = 'content'
        DataSource = DataSource1
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object DBDateTimeEditEh1: TDBDateTimeEditEh
        Left = 56
        Top = 48
        Width = 121
        Height = 20
        DataField = 'Date'
        DataSource = DataSource1
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        Kind = dtkDateEh
        TabOrder = 2
        Visible = True
      end
      object DBEditEh1: TDBEditEh
        Left = 56
        Top = 72
        Width = 537
        Height = 20
        DataField = 'Title'
        DataSource = DataSource1
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 606
        Height = 417
        Align = alClient
        DataSource = DataSource1
        DrawMemoText = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\'#31649#29702#36719#20214'\'#19975#21830#39184#39278#23089#20048#31649#29702#31995#32479'\' +
      'Data\MyInfo.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 480
    Top = 32
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from MyInfo'
    Parameters = <>
    Left = 520
    Top = 32
    object ADODataSet1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODataSet1Date: TDateTimeField
      FieldName = 'Date'
    end
    object ADODataSet1Title: TWideStringField
      FieldName = 'Title'
      Size = 200
    end
    object ADODataSet1content: TMemoField
      FieldName = 'content'
      BlobType = ftMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 560
    Top = 32
  end
end
