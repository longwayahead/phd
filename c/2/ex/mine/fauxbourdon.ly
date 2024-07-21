\version "2.18.0-1"
\score {
  \new PianoStaff <<
   
        \new Staff <<
          \clef treble
            \time 2/2
            \key d \major
          \new Voice = "first" {
            \voiceOne
            \relative d'' {
              <d fis a>2^\markup{\rotate #90 \halign #.9 \fontsize #-2 "M.D"} <d fis a> <d fis a>1 <d fis a>2 <d fis a>  <d fis a>1 <d g b> <d fis a> <cis e a > <d fis a d>\fermata \bar "||"
              <d fis a>2 <d fis a> <d fis a>1 <d fis a>2 <d fis a> <cis e a>1 <d fis> <cis fis a> <cis eis gis> <cis fis a~> <cis fis a>\fermata \bar "|."
            }
          }
          \new Voice = "second" {
            \voiceTwo
            \relative g' {
             <d fis a>2 <d fis a> <d fis a>1 <d fis a>2 <d fis a> <d fis a>1 <d g b> <d fis a> <cis e a> <d fis a>
             <d fis a>2 <d fis a> <d fis a>1 <d fis a>2 <d fis a> <cis e a>1 <d b'> <cis fis a> <cis eis b'> <cis~ fis a> <cis fis a>
            }
          }
        >>
          
       
        \new Staff <<
          \clef bass
            \key d \major
          \new Voice = "tenor" {
            \voiceOne
            \relative a {
              a2^\markup {\rotate #90 \halign #.9 \fontsize #-2 "M.G."} a a1 a2 a a1 b a a a
              a2 a a1 a2 a a1 b a b a~ <a fis>
            }
          }
          \new Voice = "bass" {
            \voiceTwo
            \relative d, {
             d2_\markup { \halign #1.2 \fontsize #-2 Pédale }\small d d1 d2 d d1 g d <a' a,> <d d,>
             d,2\small d d1 d2 d <a' a,>1_\markup{\halign #1.6 "ou"} <b b,> fis cis fis~ fis
            }
          }
        >>

  >>
  \layout {
    \context {
      \Staff
      
     }
      \context {
       \Voice
       \consists "Horizontal_bracket_engraver"
     }
     \context {
       \Score
       \remove "Bar_number_engraver"
     }
  }
}
