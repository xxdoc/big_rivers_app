﻿Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    AutoCenter = NotDefault
    DividingLines = NotDefault
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    PictureType =1
    GridX =24
    GridY =24
    Width =15120
    DatasheetFontHeight =11
    ItemSuffix =77
    Right =9480
    Bottom =8835
    DatasheetGridlinesColor =14806254
    OnNoData ="=NoData([Report])"
    RecSrcDt = Begin
        0x32f638d6d6a9e440
    End
    Caption ="Transducer"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6801000068010000680100006d01000000000000103b00004002000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    FilterOnLoad =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Rectangle
            BorderLineStyle =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            SizeMode =3
            PictureAlignment =2
            BorderColor =16777215
            GridlineColor =16777215
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BoundObjectFrame
            AddColon = NotDefault
            SizeMode =3
            BorderLineStyle =0
            LabelX =-1800
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin UnboundObjectFrame
            OldBorderStyle =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            SortOrder = NotDefault
            GroupHeader = NotDefault
            KeepTogether =1
            ControlSource ="=[Timing]"
        End
        Begin BreakLevel
            ControlSource ="=[Sequence]"
        End
        Begin BreakLevel
            ControlSource ="=[SiteCode]"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =0
            Name ="ReportHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
        End
        Begin PageHeader
            Height =3967
            Name ="PageHeaderSection"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Top =960
                    Width =1332
                    Height =324
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="lblRiver"
                    Caption ="River (circle):"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedTop =960
                    LayoutCachedWidth =1332
                    LayoutCachedHeight =1284
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =12840
                    Top =990
                    Width =2220
                    Height =300
                    FontWeight =700
                    BorderColor =8355711
                    Name ="lblSamplingDate"
                    Caption ="Date: ____/____/_____"
                    GridlineColor =10921638
                    LayoutCachedLeft =12840
                    LayoutCachedTop =990
                    LayoutCachedWidth =15060
                    LayoutCachedHeight =1290
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =1860
                    Top =960
                    Width =5340
                    Height =324
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="lblRiverSegments"
                    Caption ="Gunnison"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =1860
                    LayoutCachedTop =960
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =1284
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Rectangle
                    Left =1440
                    Top =1320
                    Width =12240
                    Height =1320
                    BackColor =0
                    BorderColor =10921638
                    Name ="rctMathCheck"
                    GridlineColor =10921638
                    LayoutCachedLeft =1440
                    LayoutCachedTop =1320
                    LayoutCachedWidth =13680
                    LayoutCachedHeight =2640
                    BackThemeColorIndex =-1
                End
                Begin Label
                    Left =2160
                    Top =1800
                    Width =2832
                    Height =432
                    FontSize =16
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblChkMath"
                    Caption ="Check Your Math!"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =2160
                    LayoutCachedTop =1800
                    LayoutCachedWidth =4992
                    LayoutCachedHeight =2232
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =6960
                    Top =1440
                    Width =2976
                    Height =372
                    FontSize =14
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblEyeboltWaterline"
                    Caption ="Eyebolt        Waterline"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =6960
                    LayoutCachedTop =1440
                    LayoutCachedWidth =9936
                    LayoutCachedHeight =1812
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =6780
                    Top =1860
                    Width =3972
                    Height =372
                    FontSize =14
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblRefMarkEyebolt"
                    Caption ="+ Reference Mark       Eyebolt"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =6780
                    LayoutCachedTop =1860
                    LayoutCachedWidth =10752
                    LayoutCachedHeight =2232
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =6840
                    Top =2280
                    Width =3984
                    Height =372
                    FontSize =14
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblRefMarkWaterline"
                    Caption ="Reference Mark       Waterline"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =6840
                    LayoutCachedTop =2280
                    LayoutCachedWidth =10824
                    LayoutCachedHeight =2652
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    OldBorderStyle =3
                    BorderWidth =2
                    BorderLineStyle =2
                    Left =6720
                    Top =2220
                    Width =4320
                    BorderColor =16777215
                    Name ="lnEquals"
                    GridlineColor =10921638
                    LayoutCachedLeft =6720
                    LayoutCachedTop =2220
                    LayoutCachedWidth =11040
                    LayoutCachedHeight =2220
                    BorderThemeColorIndex =-1
                End
                Begin Label
                    TextFontCharSet =2
                    TextFontFamily =18
                    Left =8052
                    Top =1392
                    Width =420
                    Height =360
                    FontSize =20
                    FontWeight =900
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblArrow1"
                    Caption ="4"
                    FontName ="Wingdings 3"
                    GridlineColor =10921638
                    LayoutCachedLeft =8052
                    LayoutCachedTop =1392
                    LayoutCachedWidth =8472
                    LayoutCachedHeight =1752
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextFontCharSet =2
                    TextFontFamily =18
                    Left =9180
                    Top =1800
                    Width =420
                    Height =360
                    FontSize =20
                    FontWeight =900
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblArrow2"
                    Caption ="4"
                    FontName ="Wingdings 3"
                    GridlineColor =10921638
                    LayoutCachedLeft =9180
                    LayoutCachedTop =1800
                    LayoutCachedWidth =9600
                    LayoutCachedHeight =2160
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextFontCharSet =2
                    TextFontFamily =18
                    Left =9000
                    Top =2220
                    Width =420
                    Height =360
                    FontSize =20
                    FontWeight =900
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblArrow3"
                    Caption ="4"
                    FontName ="Wingdings 3"
                    GridlineColor =10921638
                    LayoutCachedLeft =9000
                    LayoutCachedTop =2220
                    LayoutCachedWidth =9420
                    LayoutCachedHeight =2580
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Top =2760
                    Width =900
                    Height =1203
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblSiteHdr"
                    Caption ="\015\012Site"
                    GridlineColor =10921638
                    LayoutCachedTop =2760
                    LayoutCachedWidth =900
                    LayoutCachedHeight =3963
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =900
                    Top =3120
                    Width =660
                    Height =842
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblTypeHdr"
                    Caption ="Type"
                    GridlineColor =10921638
                    LayoutCachedLeft =900
                    LayoutCachedTop =3120
                    LayoutCachedWidth =1560
                    LayoutCachedHeight =3962
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =900
                    Top =2760
                    Width =3660
                    Height =360
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblTransducer"
                    Caption ="Transducer"
                    GridlineColor =10921638
                    LayoutCachedLeft =900
                    LayoutCachedTop =2760
                    LayoutCachedWidth =4560
                    LayoutCachedHeight =3120
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =4560
                    Top =2760
                    Width =2520
                    Height =360
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblPulledDownloaded"
                    Caption ="Pulled/Downloaded"
                    GridlineColor =10921638
                    LayoutCachedLeft =4560
                    LayoutCachedTop =2760
                    LayoutCachedWidth =7080
                    LayoutCachedHeight =3120
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =4560
                    Top =3120
                    Width =1260
                    Height =843
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblDate"
                    Caption ="Date"
                    GridlineColor =10921638
                    LayoutCachedLeft =4560
                    LayoutCachedTop =3120
                    LayoutCachedWidth =5820
                    LayoutCachedHeight =3963
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =5820
                    Top =3120
                    Width =1260
                    Height =843
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblTime"
                    Caption ="Time"
                    GridlineColor =10921638
                    LayoutCachedLeft =5820
                    LayoutCachedTop =3120
                    LayoutCachedWidth =7080
                    LayoutCachedHeight =3963
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =7080
                    Top =3120
                    Width =2520
                    Height =426
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblRefMarkTo"
                    Caption ="Refer Mark to..."
                    GridlineColor =10921638
                    LayoutCachedLeft =7080
                    LayoutCachedTop =3120
                    LayoutCachedWidth =9600
                    LayoutCachedHeight =3546
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =7080
                    Top =3540
                    Width =1260
                    Height =427
                    FontWeight =700
                    TopMargin =72
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblWaterline1"
                    Caption ="Waterline"
                    TopPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =7080
                    LayoutCachedTop =3540
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =3967
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =9600
                    Top =3540
                    Width =1260
                    Height =427
                    FontWeight =700
                    TopMargin =72
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblWaterline2"
                    Caption ="Waterline"
                    TopPadding =14
                    GridlineColor =10921638
                    LayoutCachedLeft =9600
                    LayoutCachedTop =3540
                    LayoutCachedWidth =10860
                    LayoutCachedHeight =3967
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =8340
                    Top =3540
                    Width =1260
                    Height =427
                    FontWeight =700
                    TopMargin =72
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblEyebolt"
                    Caption ="Eyebolt"
                    TopPadding =14
                    GridlineColor =10921638
                    LayoutCachedLeft =8340
                    LayoutCachedTop =3540
                    LayoutCachedWidth =9600
                    LayoutCachedHeight =3967
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =10860
                    Top =3540
                    Width =1260
                    Height =427
                    FontWeight =700
                    TopMargin =72
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblScribeLine"
                    Caption ="Scribe Line"
                    TopPadding =14
                    GridlineColor =10921638
                    LayoutCachedLeft =10860
                    LayoutCachedTop =3540
                    LayoutCachedWidth =12120
                    LayoutCachedHeight =3967
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =12120
                    Top =2760
                    Width =1260
                    Height =1203
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblSurveyed"
                    Caption ="\015\012\015\012Surveyed?"
                    GridlineColor =10921638
                    LayoutCachedLeft =12120
                    LayoutCachedTop =2760
                    LayoutCachedWidth =13380
                    LayoutCachedHeight =3963
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =13380
                    Top =2760
                    Width =1740
                    Height =1203
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblComment"
                    Caption ="\015\012\015\012Comment"
                    GridlineColor =10921638
                    LayoutCachedLeft =13380
                    LayoutCachedTop =2760
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =3963
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =1560
                    Top =3120
                    Width =1020
                    Height =842
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblNumHdr"
                    Caption ="#"
                    GridlineColor =10921638
                    LayoutCachedLeft =1560
                    LayoutCachedTop =3120
                    LayoutCachedWidth =2580
                    LayoutCachedHeight =3962
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =2580
                    Top =3120
                    Width =1980
                    Height =842
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblSerialNo"
                    Caption ="Serial #"
                    GridlineColor =10921638
                    LayoutCachedLeft =2580
                    LayoutCachedTop =3120
                    LayoutCachedWidth =4560
                    LayoutCachedHeight =3962
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =9600
                    Top =3120
                    Width =2520
                    Height =426
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblEyeboltTo"
                    Caption ="Eyebolt to..."
                    GridlineColor =10921638
                    LayoutCachedLeft =9600
                    LayoutCachedTop =3120
                    LayoutCachedWidth =12120
                    LayoutCachedHeight =3546
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    Left =7080
                    Top =2760
                    Width =5040
                    Height =360
                    FontWeight =700
                    BackColor =12632256
                    BorderColor =8355711
                    Name ="lblDistance"
                    Caption ="Distance (cm)"
                    GridlineColor =10921638
                    LayoutCachedLeft =7080
                    LayoutCachedTop =2760
                    LayoutCachedWidth =12120
                    LayoutCachedHeight =3120
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =915
                    Top =3480
                    Width =600
                    Height =420
                    FontSize =8
                    BorderColor =8355711
                    Name ="lblTypes"
                    Caption ="A=air W=water"
                    LeftPadding =0
                    TopPadding =0
                    RightPadding =0
                    BottomPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =915
                    LayoutCachedTop =3480
                    LayoutCachedWidth =1515
                    LayoutCachedHeight =3900
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =180
                    Top =60
                    Width =1740
                    Height =324
                    FontSize =12
                    FontWeight =500
                    BorderColor =8355711
                    ForeColor =6447974
                    Name ="lblTitle"
                    Caption ="BLCA Transducers"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =60
                    LayoutCachedWidth =1920
                    LayoutCachedHeight =384
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Rectangle
                    Top =600
                    Width =15120
                    Height =360
                    BackColor =8355711
                    BorderColor =10921638
                    Name ="rctUnderHeader"
                    GridlineColor =10921638
                    LayoutCachedTop =600
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =960
                    BackThemeColorIndex =0
                    BackTint =50.0
                End
                Begin Label
                    Left =4320
                    Top =990
                    Width =912
                    Height =276
                    FontWeight =700
                    BorderColor =8355711
                    Name ="lblObserver"
                    Caption ="Observer:"
                    GridlineColor =10921638
                    LayoutCachedLeft =4320
                    LayoutCachedTop =990
                    LayoutCachedWidth =5232
                    LayoutCachedHeight =1266
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =8040
                    Top =990
                    Width =912
                    Height =276
                    FontWeight =700
                    BorderColor =8355711
                    Name ="lblRecorder"
                    Caption ="Recorder:"
                    GridlineColor =10921638
                    LayoutCachedLeft =8040
                    LayoutCachedTop =990
                    LayoutCachedWidth =8952
                    LayoutCachedHeight =1266
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =3540
                    Top =60
                    Width =1620
                    Height =540
                    BorderColor =8355711
                    Name ="lblEntry"
                    Caption ="Data entered by: Date entered:"
                    GridlineColor =10921638
                    LayoutCachedLeft =3540
                    LayoutCachedTop =60
                    LayoutCachedWidth =5160
                    LayoutCachedHeight =600
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =8640
                    Top =60
                    Width =1620
                    Height =540
                    BorderColor =8355711
                    Name ="lblVerify"
                    Caption ="Data verified by: Date verified:"
                    GridlineColor =10921638
                    LayoutCachedLeft =8640
                    LayoutCachedTop =60
                    LayoutCachedWidth =10260
                    LayoutCachedHeight =600
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =5460
                    Top =300
                    Width =1620
                    Height =300
                    BorderColor =8355711
                    Name ="lblEntryDate"
                    Caption ="____/____/_____"
                    GridlineColor =10921638
                    LayoutCachedLeft =5460
                    LayoutCachedTop =300
                    LayoutCachedWidth =7080
                    LayoutCachedHeight =600
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =10560
                    Top =300
                    Width =1620
                    Height =300
                    BorderColor =8355711
                    Name ="lblVerifyDate"
                    Caption ="____/____/_____"
                    GridlineColor =10921638
                    LayoutCachedLeft =10560
                    LayoutCachedTop =300
                    LayoutCachedWidth =12180
                    LayoutCachedHeight =600
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =13452
                    Width =1620
                    Height =420
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="lblPageOf"
                    Caption ="Page ____ of ____"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13452
                    LayoutCachedWidth =15072
                    LayoutCachedHeight =420
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =60
                    Top =636
                    Width =2460
                    Height =324
                    FontSize =12
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblMonitoring"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =636
                    LayoutCachedWidth =2520
                    LayoutCachedHeight =960
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =8760
                    Top =648
                    Width =6300
                    Height =324
                    FontSize =12
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="lblProtocolVersion"
                    Caption ="Big River Monitoring Protocol - SOP#7 - Version 1.01 - December 2015"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =8760
                    LayoutCachedTop =648
                    LayoutCachedWidth =15060
                    LayoutCachedHeight =972
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =360
            Name ="GroupHeader0"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    TextAlign =2
                    IMESentenceMode =3
                    Width =15120
                    Height =360
                    FontSize =12
                    BackColor =0
                    ForeColor =16777215
                    Name ="tbxDownloadTiming"
                    ControlSource ="=IIf([Timing]=\"BD\",\"BEFORE DOWNLOAD\",IIf([Timing]=\"AD\",\"AFTER DOWNLOAD\","
                        "\"\"))"
                    GridlineColor =10921638

                    LayoutCachedWidth =15120
                    LayoutCachedHeight =360
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =360
            Name ="Detail"
            AlternateBackColor =12632256
            Begin
                Begin Rectangle
                    BackStyle =0
                    Width =15120
                    Height =360
                    Name ="rctDetail"
                    GridlineColor =10921638
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =360
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    Left =4560
                    Width =1260
                    Height =360
                    BackColor =12632256
                    ForeColor =8355711
                    Name ="lblDateCol"
                    GridlineColor =10921638
                    LayoutCachedLeft =4560
                    LayoutCachedWidth =5820
                    LayoutCachedHeight =360
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Width =900
                    Height =360
                    ForeColor =4210752
                    Name ="tbxSiteCode"
                    ControlSource ="SiteCode"
                    GridlineColor =10921638

                    LayoutCachedWidth =900
                    LayoutCachedHeight =360
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin TextBox
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Left =900
                    Width =659
                    Height =360
                    TabIndex =1
                    ForeColor =4210752
                    Name ="tbxSensorType"
                    ControlSource ="SensorType"
                    GridlineColor =10921638

                    LayoutCachedLeft =900
                    LayoutCachedWidth =1559
                    LayoutCachedHeight =360
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin TextBox
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Left =1560
                    Width =1019
                    Height =360
                    TabIndex =2
                    ForeColor =4210752
                    Name ="tbxSensorNumber"
                    ControlSource ="SensorNumber"
                    GridlineColor =10921638

                    LayoutCachedLeft =1560
                    LayoutCachedWidth =2579
                    LayoutCachedHeight =360
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    Left =7080
                    Width =1260
                    Height =360
                    BackColor =12632256
                    ForeColor =8355711
                    Name ="lblWaterline1Col"
                    GridlineColor =10921638
                    LayoutCachedLeft =7080
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =360
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    Left =9600
                    Width =1260
                    Height =360
                    BackColor =12632256
                    ForeColor =8355711
                    Name ="lblWaterline2Col"
                    GridlineColor =10921638
                    LayoutCachedLeft =9600
                    LayoutCachedWidth =10860
                    LayoutCachedHeight =360
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    Left =12120
                    Width =1260
                    Height =360
                    BackColor =12632256
                    ForeColor =8355711
                    Name ="lblSurveyCol"
                    GridlineColor =10921638
                    LayoutCachedLeft =12120
                    LayoutCachedWidth =13380
                    LayoutCachedHeight =360
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =14700
                    Width =360
                    Height =360
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxDownload"
                    ControlSource ="Timing"
                    GridlineColor =10921638

                    LayoutCachedLeft =14700
                    LayoutCachedWidth =15060
                    LayoutCachedHeight =360
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    OldBorderStyle =0
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Top =180
                    Width =900
                    Height =168
                    FontSize =6
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="tbxSite"
                    ControlSource ="SiteName"
                    LeftPadding =0
                    TopPadding =0
                    RightPadding =0
                    BottomPadding =0
                    GridlineColor =10921638

                    LayoutCachedTop =180
                    LayoutCachedWidth =900
                    LayoutCachedHeight =348
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="PageFooterSection"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
        Begin FormFooter
            KeepTogether = NotDefault
            ForceNewPage =2
            Height =0
            Name ="ReportFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

' =================================
' Report:       Transducer
' Level:        Application report
' Version:      1.00
'
' Description:  Transducer report object related properties, events, functions & procedures for UI display
'
' Source/date:  Bonnie Campbell, November 10, 2015
' References:
'  Allen Browne, April 2010
'  http://allenbrowne.com/ser-43.html
' Revisions:    BLC - 11/10/2015 - 1.00 - initial version
' =================================

'---------------------
' Simulated Inheritance
'---------------------

'---------------------
' Declarations
'---------------------

'---------------------
' Event Declarations
'---------------------

'---------------------
' Properties
'---------------------

'---------------------
' Events
'---------------------
' ---------------------------------
' Sub:          Report_Open
' Description:  Report opening event actions
' Assumptions:  -
' Parameters:   -
' Returns:      -
' Throws:       none
' References:   -
' Source/date:  Bonnie Campbell, May 4, 2016 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 5/4/2016 - initial version
' ---------------------------------
Private Sub Report_Open(Cancel As Integer)
On Error GoTo Err_Handler

    Dim ary() As String, strPark As String, strSegments As String
    Dim strSQL As String, strWhere As String, strOrderBy As String
    Dim strSQL2 As String
    Dim sopdata As Variant
    Dim arySegments() As Variant, aryProtocol() As Variant
    Dim i As Integer, sopnum As Integer
    
    'defaults
    strPark = ""
    strWhere = ""
    strSegments = ""
    i = 0
    
    If Len(Nz(OpenArgs, "")) > 0 Or IsNull(OpenArgs) Then
        strPark = TempVars("ParkCode") '""
    Else
        ary = Split(OpenArgs, "|")
        strPark = UCase(ary(0))
    End If
        
    'set title
    Me.lblTitle.Caption = strPark & " Transducers"

    'protocol version
    aryProtocol = GetProtocolVersion
    Set sopdata = GetSOPMetadata("Transducer") '0-code, 1-SOP#, 2-Version, 3-Effective Date

    i = CInt(sopdata(1))
    
    lblMonitoring.Caption = "NCPN " & aryProtocol(0, 0)
    lblProtocolVersion.Caption = aryProtocol(0, 0) & " - " & "SOP #" & i & " - Version " & Format(sopdata(2), "0.00") & " - " & Format(sopdata(3), "mmm yyyy")

    'set river segment(s)
    arySegments = GetRiverSegments(strPark)
    For i = 0 To UBound(arySegments, 2)
        strSegments = strSegments & arySegments(0, i) & Space(4)
    Next
    strSegments = Left(strSegments, Len(strSegments) - 1)
    
    Me.lblRiverSegments.Caption = strSegments

    'set before/after
    
    'prepare data source
'    strSQL = "SELECT 'BD' AS Timing, ParkCode, Segment, SiteCode, SiteName, " _
'            & "Logger.ID, SensorType, SensorNumber, Sequence " _
'            & "FROM (((Logger " _
'            & "LEFT JOIN Site ON Site.ID = Logger.Site_ID) " _
'            & "LEFT JOIN River ON River.ID = Site.River_ID) " _
'            & "LEFT JOIN Park ON Park.ID = River.Park_ID) "
    strSQL = GetTemplate("s_transducer_bd")
    
    'prepare after download set
    strSQL2 = Replace(strSQL, "BD", "AD")
    
    If Not IsNull(strPark) Then
        strWhere = "WHERE ParkCode = '" & strPark & "' "
    End If
    
    strOrderBy = "ORDER BY ParkCode, Sequence ASC"
    
    strSQL = strSQL & strWhere & strOrderBy _
                & " UNION ALL " _
                & strSQL2 & strWhere & strOrderBy & ";"
    
    Me.RecordSource = strSQL

    'hide modal Main form
    Forms("Main").Visible = False

Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Report_Open[Transducer Report])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' Sub:          Report_Close
' Description:  Closing event actions
' Assumptions:  -
' Parameters:   -
' Returns:      -
' Throws:       none
' References:   -
' Source/date:  Bonnie Campbell, June 2, 2016 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 6/2/2016 - initial version
' ---------------------------------
Private Sub Report_Close()
On Error GoTo Err_Handler

    'unhide modal Main form
    Forms("Main").Visible = True
    
Exit_Handler:
    Exit Sub

Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Report_Close[Transducer Report])"
    End Select
    Resume Exit_Handler
End Sub

'---------------------
' Methods
'---------------------
