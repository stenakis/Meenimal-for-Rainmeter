[Variables]
Value=15

[XButtonProperties]
ImageName=#@#Assets\Settings\Exit.png
X=665
Y=15
W=20
H=20
SolidColor=0,0,0,1
LeftMouseUpAction=[!DeactivateConfig]
ImageTint=#OMode#
MouseOverAction=[!ShowMeter ObjectXButton][!Update][!Redraw]
MouseLeaveAction=[!HideMeter ObjectXButton][!Update][!Redraw]

[BigTextProperties]
FontFace=#Font#
FontSize=50
FontColor=#Accent#
StringAlign=Left
AntiAlias=1
X=280
Y=15
InlineSetting=CharacterSpacing | 1 | 1
InlineSetting2=GradientColor | -90 | #Accent#,255 ; 0.0 | #Accent#,200 ; 0.8 | #Accent#,50 ; 1.0

[IconsStyle]
W=20
X=35
ImageTint=#OMode#

[OptionsStyle]
FontFace=#MainFont#
FontSize=14
FontColor=#OMode#
StringAlign=Left
AntiAlias=1
X=40r
Y=-2r
MouseLeaveAction=[!HideMeter ObjectMenuRectangle][!Update][!Redraw]

[SubtitleStyle]
FontColor=#Accent#
FontSize=16
FontFace=#Font#
AntiAlias=1
InlineSetting=CharacterSpacing | 0.2 | 0.2
X=280
StringAlign=Left

[DescriptionStyle]
FontSize=13
FontFace=#Font#
AntiAlias=1
StringAlign=Center
StringCase=Upper
InlineSetting=CharacterSpacing | 0.2 | 0.2
FontColor=#OMode#