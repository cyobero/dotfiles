
        ncmpcpp
    panels/
        bmpanel
        lxpanel
        pypanel
        tint2
    shells/
        bash
        tcsh
        zsh
    terms/
        colors
        screen
        tmux
    vim/
        colors
        rc
    wms/
        awesome
        bspwm
        dwm
        fluxbox
        fvwm
        herbstluft
        i3
        monster
        openbox
        ratpoison
        spectrwm
        stumpwm
        subtle
        wmfs
        xmonad

16 colors (scrot, raw, dl) (+1 likes)
fey Aug 09, 2012 (vim/colors)

 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88

	

let g:colors_name = "16color"

hi Normal                  ctermfg=none
hi Boolean                 ctermfg=12
hi Comment                 ctermfg=8    ctermbg=none  cterm=none
hi Conditional             ctermfg=10
hi Constant                ctermfg=11
hi Cursor                  ctermbg=none
hi Debug                   ctermfg=13
hi Define                  ctermfg=11
hi Delimiter               ctermfg=1 ctermbg=none
hi DiffLine                ctermfg=4 
hi DiffOldLine             ctermfg=1
hi DiffOldFile             ctermfg=1
hi DiffNewFile             ctermfg=2
hi DiffAdd                 ctermfg=10  ctermbg=none
hi DiffAdded               ctermfg=10
hi DiffDelete              ctermfg=1   ctermbg=none
hi DiffRemoved             ctermfg=1
hi DiffChange              ctermfg=6   ctermbg=none
hi DiffChanged             ctermfg=6
hi DiffText                ctermfg=4   ctermbg=none
hi Directory               ctermfg=12
hi Error                   ctermfg=7   ctermbg=none
hi ErrorMsg                ctermfg=7   ctermbg=none
hi Exception               ctermfg=1
hi Float                   ctermfg=12
hi FoldColumn              ctermfg=8   ctermbg=0
hi Folded                  ctermfg=8   ctermbg=0
hi Function                ctermfg=9
hi Identifier              ctermfg=15   cterm=none
hi IncSearch               ctermbg=207 ctermfg=235
hi Keyword                 ctermfg=14
hi Label                   ctermfg=10
hi LineNr                  ctermfg=8   ctermbg=none
hi Macro                   ctermfg=6
hi MatchParen              ctermfg=0   ctermbg=14
hi ModeMsg                 ctermfg=7
hi MoreMsg                 ctermfg=7
hi NonText                 ctermfg=7   ctermbg=0 
hi Number                  ctermfg=12
hi Operator                ctermfg=7 cterm=none
hi PreCondit               ctermfg=15  cterm=none
hi PreProc                 ctermfg=5
hi Question                ctermfg=10
hi Repeat                  ctermfg=10
hi Search                  ctermfg=207 ctermbg=235
hi SpecialChar             ctermfg=7
hi SpecialComment          ctermfg=7
hi Special                 ctermfg=6
hi SpecialKey              ctermfg=7
hi Statement               ctermfg=10   ctermbg=none
hi StorageClass            ctermfg=7
hi String                  ctermfg=2
hi Structure               ctermfg=9
hi Tag                     ctermfg=5
hi Title                   ctermfg=3   ctermbg=none cterm=bold
hi Todo                    ctermfg=6  ctermbg=0
hi Typedef                 ctermfg=3
hi Type                    ctermfg=9
hi Underlined              ctermfg=104 ctermbg=232
hi VertSplit               ctermfg=0  ctermbg=0 cterm=none
hi Visual                  ctermfg=210 ctermbg=235
hi VisualNOS               ctermfg=10  ctermbg=235  cterm=bold
hi WarningMsg              ctermfg=7   
hi WildMenu                ctermbg=0   ctermfg=104
hi CursorLine              ctermbg=0 ctermfg=none  cterm=none



" html
hi htmlTag                 ctermfg=5
hi htmlEndTag              ctermfg=5
hi htmlTagName             ctermfg=13

" xml
hi xmlTag                 ctermfg=5
hi xmlEndTag              ctermfg=5
hi xmlTagName             ctermfg=13

    " statusline
hi StatusLine              ctermfg=7   ctermbg=0    cterm=none
hi StatusLineNC            ctermfg=0   ctermbg=7
hi StatusModFlag           ctermfg=7   ctermbg=0    cterm=none
hi StatusRO                ctermfg=6   ctermbg=0    cterm=none
hi StatusHLP               ctermfg=2   ctermbg=0    cterm=none
hi StatusPRV               ctermfg=3   ctermbg=0    cterm=none
hi StatusFTP               ctermfg=4   ctermbg=0    cterm=none

