inherited CustomerEditForm: TCustomerEditForm
  Left = 150
  Top = 206
  Caption = #23458#25143'--'#32534#36753
  ClientHeight = 336
  ClientWidth = 551
  PixelsPerInch = 96
  TextHeight = 12
  inherited btnIns: TBitBtn
    Left = 455
    TabOrder = 1
  end
  inherited btnOK: TBitBtn
    Left = 455
    TabOrder = 2
  end
  inherited btnNO: TBitBtn
    Left = 455
    TabOrder = 3
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 441
    Height = 336
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #22522#26412#20449#24687
      object Label2: TLabel
        Left = 16
        Top = 42
        Width = 48
        Height = 12
        Caption = #23458#25143#32534#21495
        FocusControl = DBEditEh2
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 48
        Height = 12
        Caption = #23458#25143#21517#31216
        FocusControl = DBEditEh1
      end
      object Label3: TLabel
        Left = 232
        Top = 42
        Width = 48
        Height = 12
        Caption = #31616'    '#31216
        FocusControl = DBEditEh3
      end
      object Label5: TLabel
        Left = 16
        Top = 68
        Width = 48
        Height = 12
        Caption = #22320#21306#32534#21495
        FocusControl = DBEditEh4
      end
      object Label6: TLabel
        Left = 16
        Top = 94
        Width = 48
        Height = 12
        Caption = #25340#38899#32534#30721
        FocusControl = DBEditEh6
      end
      object Label7: TLabel
        Left = 232
        Top = 94
        Width = 48
        Height = 12
        Caption = #30005'    '#35805
        FocusControl = DBEditEh7
      end
      object Label8: TLabel
        Left = 16
        Top = 120
        Width = 48
        Height = 12
        Caption = #32852' '#31995' '#20154
        FocusControl = DBEditEh8
      end
      object Label9: TLabel
        Left = 232
        Top = 120
        Width = 48
        Height = 12
        Caption = #25163'    '#26426
        FocusControl = DBEditEh9
      end
      object Label10: TLabel
        Left = 16
        Top = 146
        Width = 48
        Height = 12
        Caption = #20256'    '#30495
        FocusControl = DBEditEh10
      end
      object Label11: TLabel
        Left = 16
        Top = 172
        Width = 48
        Height = 12
        Caption = #22320'    '#22336
        FocusControl = DBEditEh11
      end
      object Label12: TLabel
        Left = 16
        Top = 198
        Width = 48
        Height = 12
        Caption = #26399#21021#24212#25910
        FocusControl = DBEditEh12
      end
      object Label13: TLabel
        Left = 16
        Top = 224
        Width = 48
        Height = 12
        Caption = #22791'    '#27880
        FocusControl = DBEditEh13
      end
      object Label20: TLabel
        Left = 232
        Top = 68
        Width = 48
        Height = 12
        Caption = #22320#21306#21517#31216
      end
      object DBEditEh1: TDBEditEh
        Left = 72
        Top = 12
        Width = 337
        Height = 20
        DataField = #23458#25143#21517#31216
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh2: TDBEditEh
        Left = 72
        Top = 38
        Width = 121
        Height = 20
        DataField = #23458#25143#32534#21495
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh3: TDBEditEh
        Left = 288
        Top = 38
        Width = 121
        Height = 20
        DataField = #31616#31216
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 2
        Visible = True
      end
      object DBEditEh4: TDBEditEh
        Left = 72
        Top = 64
        Width = 121
        Height = 20
        DataField = #22320#21306#32534#21495
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBEditEh4EditButtons0Click
          end>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBEditEh6: TDBEditEh
        Left = 72
        Top = 90
        Width = 121
        Height = 20
        DataField = #25340#38899#32534#30721
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = True
      end
      object DBEditEh7: TDBEditEh
        Left = 288
        Top = 90
        Width = 121
        Height = 20
        DataField = #30005#35805
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = True
      end
      object DBEditEh8: TDBEditEh
        Left = 72
        Top = 116
        Width = 121
        Height = 20
        DataField = #32852#31995#20154
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 7
        Visible = True
      end
      object DBEditEh9: TDBEditEh
        Left = 288
        Top = 116
        Width = 121
        Height = 20
        DataField = #25163#26426
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 8
        Visible = True
      end
      object DBEditEh10: TDBEditEh
        Left = 72
        Top = 142
        Width = 121
        Height = 20
        DataField = #20256#30495
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 9
        Visible = True
      end
      object DBEditEh11: TDBEditEh
        Left = 72
        Top = 168
        Width = 337
        Height = 20
        DataField = #22320#22336
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 10
        Visible = True
      end
      object DBEditEh12: TDBEditEh
        Left = 72
        Top = 194
        Width = 121
        Height = 20
        DataField = #26399#21021#24212#25910
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 11
        Visible = True
      end
      object DBEditEh13: TDBEditEh
        Left = 72
        Top = 220
        Width = 337
        Height = 20
        DataField = #22791#27880
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 12
        Visible = True
      end
      object DBEditEh5: TDBEditEh
        Left = 288
        Top = 64
        Width = 121
        Height = 20
        DataField = #22320#21306#21517#31216
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 4
        Visible = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20854#20182#20449#24687
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 16
        Width = 48
        Height = 12
        Caption = #24320#25143#38134#34892
        FocusControl = DBEditEh14
      end
      object Label14: TLabel
        Left = 16
        Top = 43
        Width = 48
        Height = 12
        Caption = #38134#34892#24080#21495
        FocusControl = DBEditEh15
      end
      object Label15: TLabel
        Left = 16
        Top = 70
        Width = 48
        Height = 12
        Caption = #20449#30410#31243#24230
        FocusControl = DBEditEh16
      end
      object Label16: TLabel
        Left = 16
        Top = 97
        Width = 48
        Height = 12
        Caption = #30005#23376#37038#20214
        FocusControl = DBEditEh17
      end
      object Label17: TLabel
        Left = 16
        Top = 124
        Width = 48
        Height = 12
        Caption = #37038'    '#32534
        FocusControl = DBEditEh18
      end
      object Label18: TLabel
        Left = 232
        Top = 124
        Width = 48
        Height = 12
        Caption = #20256'    '#21628
        FocusControl = DBEditEh19
      end
      object Label19: TLabel
        Left = 16
        Top = 152
        Width = 48
        Height = 12
        Caption = #32593'    '#22336
        FocusControl = DBEditEh20
      end
      object DBEditEh14: TDBEditEh
        Left = 72
        Top = 12
        Width = 337
        Height = 20
        DataField = #24320#25143#38134#34892
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh15: TDBEditEh
        Left = 72
        Top = 39
        Width = 337
        Height = 20
        DataField = #38134#34892#24080#21495
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh16: TDBEditEh
        Left = 72
        Top = 66
        Width = 121
        Height = 20
        DataField = #20449#30410#31243#24230
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 2
        Visible = True
      end
      object DBEditEh17: TDBEditEh
        Left = 72
        Top = 93
        Width = 121
        Height = 20
        DataField = #30005#23376#37038#20214
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBEditEh18: TDBEditEh
        Left = 72
        Top = 120
        Width = 121
        Height = 20
        DataField = #37038#32534
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 4
        Visible = True
      end
      object DBEditEh19: TDBEditEh
        Left = 288
        Top = 120
        Width = 121
        Height = 20
        DataField = #20256#21628
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = True
      end
      object DBEditEh20: TDBEditEh
        Left = 72
        Top = 148
        Width = 337
        Height = 20
        DataField = #32593#22336
        DataSource = CustomerForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = True
      end
    end
  end
end
