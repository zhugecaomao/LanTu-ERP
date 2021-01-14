inherited BaseBillMainForm: TBaseBillMainForm
  Caption = 'BaseBillMainForm'
  PixelsPerInch = 96
  TextHeight = 12
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 688
    Height = 43
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 684
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 671
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
      end
      object tbRef: TToolButton
        Left = 93
        Top = 0
        Caption = #21047#26032
        ImageIndex = 42
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
      end
      object tbsFit: TToolButton
        Left = 163
        Top = 0
        Caption = #36807#28388
        ImageIndex = 3
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
      end
      object tbsSav: TToolButton
        Left = 233
        Top = 0
        Caption = #23548#20986
        ImageIndex = 54
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
      end
    end
  end
end
