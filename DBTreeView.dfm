inherited DBTreeViewForm: TDBTreeViewForm
  Caption = 'DBTreeViewForm'
  ClientHeight = 288
  ClientWidth = 505
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 257
    Height = 288
    Align = alLeft
    Images = DataMForm.ImageList
    Indent = 19
    TabOrder = 0
    OnClick = TreeView1Click
    OnGetImageIndex = TreeView1GetImageIndex
    OnGetSelectedIndex = TreeView1GetSelectedIndex
  end
  object BitBtn1: TBitBtn
    Left = 288
    Top = 224
    Width = 75
    Height = 25
    Caption = #21516#32423#22686#21152
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object GroupBox1: TGroupBox
    Left = 280
    Top = 16
    Width = 185
    Height = 65
    Caption = #21516#32423
    TabOrder = 2
    object Edit1: TEdit
      Left = 24
      Top = 24
      Width = 121
      Height = 20
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 280
    Top = 88
    Width = 185
    Height = 129
    Caption = #19979#32423
    TabOrder = 3
    object Edit2: TEdit
      Left = 32
      Top = 21
      Width = 121
      Height = 20
      Enabled = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 32
      Top = 53
      Width = 121
      Height = 20
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 32
      Top = 85
      Width = 121
      Height = 20
      TabOrder = 2
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 88
    Top = 56
  end
end
