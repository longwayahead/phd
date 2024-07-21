\version "2.18.0-1"
kyrie = \lyricmode {
  Ky -- _ _ ri -- e, _  E -- _ _ _ _ _ _ _ _ _ le -- i -- son.
}
\score {
  \new PianoStaff <<
   
        \new Staff <<
          \clef treble
            \time 11/2
            \key d \major
          \new Voice = "first" {
            \voiceOne
            \relative g' {
              cis1 b d e2 cis1 d \bar "|"
              \time 27/2
              b g a b 
              \once \override HorizontalBracket.direction = #UP
              %a\startGroup g a\stopGroup fis a b cis a2 a1 b \bar "|."
              a g a fis a b cis a2 a1 b \bar "|."
            }
          }
          \new Voice = "second" {
            \voiceTwo
            \relative g' {
              fis d a' g2 fis 1 fis \bar "|"
              fis e d d d e e d e d e e2 e1 d
            }
          }
        >>
          
       
        \new Staff <<
          \clef bass
            \time 11/2
            \key d \major
          \new Voice = "tehor" {
            \voiceOne
            \relative g {
              a b a b2 a1 b \bar "|"
              b b a g a^\markup{"[       "\italic sic"       ]"} g a a e fis a e2 e1 fis |
              
            }
          }
          \new Voice = "bass" {
            \voiceTwo
            \relative g {
            fis g fis e2 fis1 b, |
            d e fis g fis e cis d cis b a cis2 cis1 b
            }
          }
          \new Lyrics \lyricsto "bass" {
            \kyrie
          }
        >>
          
        
        
        
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
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
