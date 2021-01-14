inherited SupplierEditForm: TSupplierEditForm
  Left = 102
  Top = 271
  Caption = #20379#24212#21830'--'#32534#36753
  ClientHeight = 348
  ClientWidth = 534
  PixelsPerInch = 96
  TextHeight = 12
  inherited btnIns: TBitBtn
    Left = 447
  end
  inherited btnOK: TBitBtn
    Left = 447
  end
  inherited btnNO: TBitBtn
    Left = 447
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 433
    Height = 348
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = #22522#26412#20449#24687
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 60
        Height = 12
        Caption = #20379#24212#21830#21517#31216
        FocusControl = DBEditEh1
      end
      object Label2: TLabel
        Left = 16
        Top = 43
        Width = 60
        Height = 12
        Caption = #20379#24212#21830#32534#21495
        FocusControl = DBEditEh2
      end
      object Label3: TLabel
        Left = 224
        Top = 43
        Width = 48
        Height = 12
        Caption = #31616'    '#31216
        FocusControl = DBEditEh3
      end
      object Label4: TLabel
        Left = 28
        Top = 70
        Width = 48
        Height = 12
        Caption = #22320#21306#32534#21495
        FocusControl = DBEditEh4
      end
      object Label5: TLabel
        Left = 28
        Top = 97
        Width = 48
        Height = 12
        Caption = #25340#38899#32534#30721
        FocusControl = DBEditEh6
      end
      object Label6: TLabel
        Left = 224
        Top = 97
        Width = 48
        Height = 12
        Caption = #30005'    '#35805
        FocusControl = DBEditEh7
      end
      object Label7: TLabel
        Left = 28
        Top = 124
        Width = 48
        Height = 12
        Caption = #32852' '#31995' '#20154
        FocusControl = DBEditEh8
      end
      object Label8: TLabel
        Left = 224
        Top = 124
        Width = 48
        Height = 12
        Caption = #25163'    '#26426
        FocusControl = DBEditEh9
      end
      object Label9: TLabel
        Left = 28
        Top = 151
        Width = 48
        Height = 12
        Caption = #20256'    '#30495
        FocusControl = DBEditEh10
      end
      object Label10: TLabel
        Left = 28
        Top = 178
        Width = 48
        Height = 12
        Caption = #22320'    '#22336
        FocusControl = DBEditEh11
      end
      object Label11: TLabel
        Left = 28
        Top = 205
        Width = 48
        Height = 12
        Caption = #26399#21021#24212#20184
        FocusControl = DBEditEh12
      end
      object Label12: TLabel
        Left = 28
        Top = 232
        Width = 48
        Height = 12
        Caption = #22791'    '#27880
        FocusControl = DBEditEh13
      end
      object Label20: TLabel
        Left = 224
        Top = 70
        Width = 48
        Height = 12
        Caption = #22320#21306#21517#31216
        FocusControl = DBEditEh5
      end
      object DBEditEh1: TDBEditEh
        Left = 82
        Top = 12
        Width = 121
        Height = 20
        DataField = #20379#24212#21830#21517#31216
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh2: TDBEditEh
        Left = 82
        Top = 39
        Width = 121
        Height = 20
        DataField = #20379#24212#21830#32534#21495
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh3: TDBEditEh
        Left = 280
        Top = 39
        Width = 121
        Height = 20
        DataField = #31616#31216
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 2
        Visible = True
      end
      object DBEditEh4: TDBEditEh
        Left = 82
        Top = 66
        Width = 121
        Height = 20
        DataField = #22320#21306#32534#21495
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBEditEh4EditButtons0Click
          end>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBEditEh5: TDBEditEh
        Left = 280
        Top = 66
        Width = 121
        Height = 20
        DataField = #22320#21306#21517#31216
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 4
        Visible = True
      end
      object DBEditEh6: TDBEditEh
        Left = 82
        Top = 93
        Width = 121
        Height = 20
        DataField = #25340#38899#32534#30721
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = True
      end
      object DBEditEh7: TDBEditEh
        Left = 280
        Top = 93
        Width = 121
        Height = 20
        DataField = #30005#35805
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = True
      end
      object DBEditEh8: TDBEditEh
        Left = 82
        Top = 120
        Width = 121
        Height = 20
        DataField = #32852#31995#20154
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 7
        Visible = True
      end
      object DBEditEh9: TDBEditEh
        Left = 280
        Top = 120
        Width = 121
        Height = 20
        DataField = #25163#26426
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 8
        Visible = True
      end
      object DBEditEh10: TDBEditEh
        Left = 82
        Top = 147
        Width = 121
        Height = 20
        DataField = #20256#30495
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 9
        Visible = True
      end
      object DBEditEh11: TDBEditEh
        Left = 82
        Top = 174
        Width = 121
        Height = 20
        DataField = #22320#22336
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 10
        Visible = True
      end
      object DBEditEh12: TDBEditEh
        Left = 82
        Top = 201
        Width = 121
        Height = 20
        DataField = #26399#21021#24212#20184
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 11
        Visible = True
      end
      object DBEditEh13: TDBEditEh
        Left = 82
        Top = 228
        Width = 121
        Height = 20
        DataField = #22791#27880
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 12
        Visible = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20854#20182#20449#24687
      ImageIndex = 1
      object Label13: TLabel
        Left = 9
        Top = 16
        Width = 48
        Height = 12
        Caption = #24320#25143#38134#34892
        FocusControl = DBEditEh14
      end
      object Label14: TLabel
        Left = 9
        Top = 45
        Width = 48
        Height = 12
        Caption = #38134#34892#24080#21495
        FocusControl = DBEditEh15
      end
      object Label15: TLabel
        Left = 9
        Top = 74
        Width = 48
        Height = 12
        Caption = #20449#35465#31243#24230
        FocusControl = DBEditEh16
      end
      object Label16: TLabel
        Left = 9
        Top = 103
        Width = 48
        Height = 12
        Caption = #30005#23376#37038#20214
        FocusControl = DBEditEh17
      end
      object Label19: TLabel
        Left = 9
        Top = 162
        Width = 48
        Height = 12
        Caption = #32593'    '#22336
        FocusControl = DBEditEh20
      end
      object Label18: TLabel
        Left = 209
        Top = 132
        Width = 48
        Height = 12
        Caption = #20256'    '#21628
        FocusControl = DBEditEh19
      end
      object Label17: TLabel
        Left = 9
        Top = 132
        Width = 48
        Height = 12
        Caption = #37038'    '#32534
        FocusControl = DBEditEh18
      end
      object DBEditEh14: TDBEditEh
        Left = 64
        Top = 12
        Width = 121
        Height = 20
        DataField = #24320#25143#38134#34892
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh15: TDBEditEh
        Left = 64
        Top = 41
        Width = 121
        Height = 20
        DataField = #38134#34892#24080#21495
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh16: TDBEditEh
        Left = 64
        Top = 70
        Width = 121
        Height = 20
        DataField = #20449#35465#31243#24230
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 2
        Visible = True
      end
      object DBEditEh17: TDBEditEh
        Left = 64
        Top = 99
        Width = 121
        Height = 20
        DataField = #30005#23376#37038#20214
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBEditEh18: TDBEditEh
        Left = 64
        Top = 128
        Width = 121
        Height = 20
        DataField = #37038#32534
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 4
        Visible = True
      end
      object DBEditEh19: TDBEditEh
        Left = 264
        Top = 128
        Width = 121
        Height = 20
        DataField = #20256#21628
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = True
      end
      object DBEditEh20: TDBEditEh
        Left = 64
        Top = 158
        Width = 121
        Height = 20
        DataField = #22320#22336
        DataSource = SupplierForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = True
      end
    end
  end
end
