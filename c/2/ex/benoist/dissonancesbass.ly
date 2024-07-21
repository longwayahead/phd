\version "2.18.0-1"

\score {
  \new PianoStaff <<
   
        \new Staff <<
          \clef treble
            \time 4/4
            \key d \major
          \new Voice = "first" {
            \voiceOne
            \relative d'' {
             d2\rest fis~ fis e~ e d e1 cis d~ d~ d2 cis~ cis d4 cis b1 d e~ e2 a,4 g fis1 a2 b4 cis d1~ d2 cis4 b a b cis d e1~ e2 d4 cis d1 \bar "|."
            }
          }
          \new Voice = "second" {
            \voiceTwo
            \relative g' {
             a1 b a~ a2 g~ g fis~ fis g~ g fis g1 a~ a2 g a1~ a2 g4 fis e1~ e2 d e1 fis2 g a e~ e1~ e4 fis gis a b1~ b
            }
          }
        >>
          
       
        \new Staff <<
          \clef bass
           
            \key d \major
          \new Voice = "tehor" {
            \voiceOne
            \relative cis' {
            cis2 d~ d e a,1  b~ b2 a b1 a2 b~ b e~ e d d1~ d2 a b1~ b2 a~ a1 e d e2 a~ a1 a2 e fis1~ fis
            }
          }
          \new Voice = "bass" {
            \voiceTwo
            \relative g {
            fis1  g fis e fis b, d e fis g fis e cis d cis b a cis  cis b~ b
            }
          }
         
        >>
          
        
        
        
  >>
  \layout {
    \context {
      \Staff
      
     }
     \context {
       \Score
       \remove "Bar_number_engraver"
     }
  }
}
